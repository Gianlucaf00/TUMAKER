; ripassa_inizio.g
; Called by PostProcessing/ripassa_T1.py at the end of each layer printed by T0.
; Parks T0 and selects T1 without tool change macros, so that T1 can retrace the
; layer path D mm higher without extruding. The path follows in the job file and
; ends with M98 P"ripassa_fine.g".
; Use: M98 P"ripassa_inizio.g" Z<layer Z> D<Z lift, default 10> F<travel speed mm/min>

if !exists(param.Z)
	abort "ripassa_inizio.g: missing parameter Z"
if !exists(tools[1]) || tools[1] == null
	abort "ripassa_inizio.g: tool T1 not configured"

var dz   = exists(param.D) ? param.D : 10
var feed = exists(param.F) ? param.F : 6000
var zT1  = min(param.Z + var.dz, move.axes[2].max)

if param.Z + var.dz > move.axes[2].max
	echo "ripassa_inizio.g: Z limited to " ^ move.axes[2].max

if !exists(global.ripassaPos)
	global ripassaPos     = {0,0,0}
	global ripassaStandby = tools[0].standby

M400

; Save T0 position and standby temperatures (restored by ripassa_fine.g)
set global.ripassaPos     = {move.axes[0].userPosition, move.axes[1].userPosition, move.axes[2].userPosition}
set global.ripassaStandby = tools[0].standby
G10 P0 R{tools[0].active}																; Keep T0 at active temperature while deselected

; Lift and park T0 (as tfree0.g)
G1 Z{min(move.axes[2].userPosition + var.dz, move.axes[2].max)} F400					; Move bed down
G1 X{move.axes[0].min} F{var.feed}														; Park T0
M400

T1 P0																					; Select T1, no tool change macros
G1 Z{var.zT1} F400																		; T1 working height
M400
