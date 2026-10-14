; pause.g
; called when a print from the SD card is paused

M83																			; Set extruder to relative mode
G10																			; Retract
G91																			; Set to Relative Positioning
G1 Z1 F360																	; Move
G90																			; Set to Absolute Positioning
G1 F6000 X{move.axes[0].min} Y{move.axes[1].min} U{move.axes[3].max}		; Move
M107																		; Fan Off
set global.data[4] = state.currentTool										; Variable assignment
T0 P0																		; Select Tool
if exists(tools[1])
	T1 P0																	; Select Tool
T{global.data[4]} P0															; Select Tool
set global.data[0] = job.duration												; Variable assignment
M98 P"temp_recording.g"														; Call Macro/Subprogram
G10 P0 S0 R0																; Tool Temperature Setting
if exists(tools[1])
	G10 P1 S0 R0															; Tool Temperature Setting
if exists(tools[2])
	G10 P2 S0 R0															; Tool Temperature Setting
M400																		; Wait for current moves to finish
