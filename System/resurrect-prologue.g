; resurrect-prologue.g
; called during the M916 command

set global.data[4] = state.currentTool			; Variable assignment
M400											; Wait
if global.toolType[0] = "PL"
	T0 P0										; Select Tool
	M703										; Configure filament
if exists(tools[1])
	if global.toolType[1] = "PL"
		T1 P0										; Select Tool
		M703										; Configure filament
T{global.data[4]} P0								; Select Tool
M400											; Wait for current moves to finish
M116 P{state.currentTool}						; Wait
G28												; Home
M400											; Wait for current moves to finish
