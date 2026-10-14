; resume.g
;  Executed when you resume a printout

M98 P"0:/data/temp"					; Call Macro/Subprogram
M400								; Wait
TR1 P0								; Select Tool
M116 P{state.currentTool} S5		; Wait
M106 R1								; Fan On
G1 R1 Z5 F6000 X0 Y0 U0				; Move
G1 R1 X0 Y0 U0						; Move
;G1 R1 Z0							; Move
M83									; Set extruder to relative mode
G11									; Unretract
M400								; Wait for current moves to finish
