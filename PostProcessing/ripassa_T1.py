#!/usr/bin/env python3
"""Post-processing script for SuperSlicer (Tumaker NX 300 Modular, RepRapFirmware).

At the end of every layer printed by T0 (left head) it inserts a pass of T1
(right head) that retraces the same XY path, D mm higher and without extruding:

    M98 P"ripassa_inizio.g" Z<layer Z> D<lift> F<travel speed>
    G1 X.. Y.. F..        ; T0 layer path, E and Z removed
    ...
    M98 P"ripassa_fine.g" F<travel speed>

Speeds in the T1 pass:
  * moves that were extruding in the T0 layer keep their original feedrate
    (or --path-speed, if given);
  * moves that were travels get --travel.

Layers are delimited by the comments SuperSlicer writes at every layer change:

    ;LAYER_CHANGE
    ;Z:0.6

The last layer is closed by the line M98 P"gfinal.g" (end G-code) or by the
marker ;RIPASSA_END.

Use (SuperSlicer appends the G-code path as last argument and the file is
modified in place):
    python3 ripassa_T1.py --travel 6000 [--dz 10] [--path-speed 1800] file.gcode
"""

import argparse
import re
import sys

LAYER_RE = re.compile(r"^;\s*LAYER_CHANGE\b", re.IGNORECASE)
Z_RE = re.compile(r"^;\s*Z:\s*([-+0-9.]+)", re.IGNORECASE)
END_RE = re.compile(r'^(;\s*RIPASSA_END\b|M98\s+P"?gfinal\.g"?)', re.IGNORECASE)
MOVE_RE = re.compile(r"^G([0-3])(?![0-9])", re.IGNORECASE)
TOOL_RE = re.compile(r"^T(-?[0-9]+)(?![0-9])", re.IGNORECASE)
WORD_RE = re.compile(r"([A-Z])\s*([-+]?[0-9]*\.?[0-9]+)", re.IGNORECASE)
PROCESSED_TAG = "; processed by ripassa_T1.py"


def fmt(value):
    return f"{value:.3f}".rstrip("0").rstrip(".")


def parse_words(code):
    return {letter.upper(): float(value) for letter, value in WORD_RE.findall(code)}


def build_pass(layer_z, start_xy, moves, args):
    """Return the G-code lines of the T1 pass for one layer."""
    if not any(kind == "path" for kind, _, _ in moves):
        return []
    out = [
        f"; --- ripassa T1: layer Z={fmt(layer_z)} ---",
        f'M98 P"ripassa_inizio.g" Z{fmt(layer_z)} D{fmt(args.dz)} F{fmt(args.travel)}',
        f"G1 X{fmt(start_xy[0])} Y{fmt(start_xy[1])} F{fmt(args.travel)}",
    ]
    for kind, gcode, words in moves:
        feed = args.travel if kind == "travel" else (args.path_speed or words["F"])
        params = "".join(f" {k}{fmt(words[k])}" for k in ("X", "Y", "I", "J", "R") if k in words)
        out.append(f"G{gcode}{params} F{fmt(feed)}")
    out.append(f'M98 P"ripassa_fine.g" F{fmt(args.travel)}')
    out.append("; --- fine ripassa T1 ---")
    return out


def process(lines, args):
    out = [PROCESSED_TAG + "\n"]
    tool = 0
    absolute = True
    feed = None
    pos = [0.0, 0.0]
    layer_z = None
    awaiting_z = False
    start_xy = None
    moves = []
    layers = 0

    def flush():
        nonlocal layers
        if layer_z is None:
            return
        block = build_pass(layer_z, start_xy, moves, args)
        if block:
            layers += 1
            out.extend(line + "\n" for line in block)

    for raw in lines:
        if raw.startswith(PROCESSED_TAG):
            sys.exit("ripassa_T1.py: file already processed")
        code = raw.split(";", 1)[0].strip()

        if LAYER_RE.match(raw.strip()):
            flush()
            layer_z = None
            awaiting_z = True
            start_xy = tuple(pos)
            moves = []
            out.append(raw)
            continue
        z_comment = Z_RE.match(raw.strip())
        if awaiting_z and z_comment:
            layer_z = float(z_comment.group(1))
            awaiting_z = False
            out.append(raw)
            continue
        if END_RE.match(raw.strip()):
            flush()
            layer_z = None
            moves = []
            out.append(raw)
            continue

        out.append(raw)
        if not code:
            continue
        upper = code.upper()
        if upper.startswith("G90") and not upper.startswith("G90."):
            absolute = True
            continue
        if upper.startswith("G91") and not upper.startswith("G91."):
            absolute = False
            continue
        tool_match = TOOL_RE.match(code)
        if tool_match:
            tool = int(tool_match.group(1))
            continue
        move = MOVE_RE.match(code)
        if not move:
            continue

        words = parse_words(code[move.end():])
        if "F" in words:
            feed = words["F"]
        has_xy = "X" in words or "Y" in words or (move.group(1) in "23" and ("I" in words or "J" in words))
        if has_xy and not absolute:
            sys.exit("ripassa_T1.py: relative XY moves (G91) are not supported")
        if has_xy:
            pos = [words.get("X", pos[0]), words.get("Y", pos[1])]
        if layer_z is None or tool != 0 or not has_xy:
            continue
        kind = "path" if words.get("E", 0) > 0 else "travel"
        if kind == "path" and feed is None and not args.path_speed:
            sys.exit("ripassa_T1.py: extrusion move without feedrate")
        moves.append((kind, move.group(1), {**words, "X": pos[0], "Y": pos[1], "F": feed}))

    if layer_z is not None:
        sys.exit('ripassa_T1.py: end of print not found (M98 P"gfinal.g" or ;RIPASSA_END)')
    return out, layers


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--travel", type=float, required=True, help="T1 travel speed (mm/min)")
    parser.add_argument("--dz", type=float, default=10.0, help="T1 height above the layer (mm, default 10)")
    parser.add_argument("--path-speed", type=float, default=None,
                        help="T1 speed on the extrusion path (mm/min, default: original feedrate)")
    parser.add_argument("gcode", help="G-code file, modified in place")
    args = parser.parse_args()

    with open(args.gcode, encoding="utf-8", errors="surrogateescape") as f:
        lines = f.readlines()
    if not any(LAYER_RE.match(line.strip()) for line in lines):
        sys.exit('ripassa_T1.py: no ";LAYER_CHANGE" comment found in the G-code')
    out, layers = process(lines, args)
    with open(args.gcode, "w", encoding="utf-8", errors="surrogateescape") as f:
        f.writelines(out)
    print(f"ripassa_T1.py: T1 pass added to {layers} layers")


if __name__ == "__main__":
    main()
