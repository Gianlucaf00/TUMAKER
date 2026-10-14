# Sys_Slicer_Superslicer

Profili SuperSlicer (generati da INDART3D per SuperSlicer 2.5.59.8). Si importano in SuperSlicer, non vanno copiati sulla scheda SD.

| File | Contenuto |
|---|---|
| `NX MODULAR NM0392 PL.ini` | Una testa pellet: stampante "Left Only". |
| `NX MODULAR NM0392 PL-PL.ini` | Due teste pellet: stampanti Left Only, Right Only, Dual, Copy (piatto largo 150 mm) e Mirror (piatto largo 107 mm). |
| `readme.txt` | Link al supporto INDART3D. |

Ogni profilo comprende:
- **Start G-code:** `M190` per il piatto, poi `M98 P"ginicio<modo>.g"` (le macro in `System/`).
- **End G-code:** `M98 P"gfinal.g"`.
- **Parametri:** ugello 0.8 mm, retrazione 4.5 mm (come `M207` in `config_PL.g`), estrusione relativa, piatto 300×300 mm e altezza 253 mm.
- **Qualità di stampa:** HIGH (0.1 mm), STANDARD (0.2 mm), FAST (0.3 mm).
- **Profili materiale:** PLA, FLEX, ABS, ASA, NYLSTRONG, PETG, PP, TPU.

Nota: lo slicer richiama `ginicioDual.g`, `ginicioCopy.g` e `ginicioMirror.g`, ma i nomi dei file in `System/` sono in maiuscolo (`ginicioDUAL.g` ecc.).
