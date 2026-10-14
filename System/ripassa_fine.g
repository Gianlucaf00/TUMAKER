; ripassa_fine.g
; Called by PostProcessing/ripassa_T1.py after the T1 pass of each layer.
; Homes T1 (U axis), reselects T0 without tool change macros and returns T0 to
; the position saved by ripassa_inizio.g.
; Use: M98 P"ripassa_fine.g" F<travel speed mm/min>

if !exists(global.ripassaPos)
	abort "ripassa_fine.g: ripassa_inizio.g was not called"

var feed = exists(param.F) ? param.F : 6000

M400
G28 U																					; Home T1 (homeu.g)
M400

T0 P0																					; Select T0, no tool change macros
G1 X{global.ripassaPos[0]} Y{global.ripassaPos[1]} F{var.feed}						; Back over the saved point
G1 Z{global.ripassaPos[2]} F400															; Back to layer height
G10 P0 R{global.ripassaStandby}															; Restore T0 standby temperatures
M400
