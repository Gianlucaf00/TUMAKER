; Called in Simplify3D in M98 finalisation script P "gfinal.g".

var i = 0

M400																						; Wait for current moves to finish
G91																							; Set to Relative Positioning
G10																							; Retract (NON MI SEMBRA SIA GIUSTO)
G92 E0																						; Set Position
;G0 Z10 F3000																				; Move (SI ALZA UN POCHINO)
G90																							; Set to Absolute Positioning
;T1																							; Select Tool
;G1 F5000 X{move.axes[0].min} Y{move.axes[1].min} U{move.axes[3].max} Z{move.axes[2].max}	; Move

set var.i = 0
while var.i < #tools
	if exists(tools[var.i])
		G10 P{var.i} S0 R0																	; Head Off
	set var.i = var.i + 1

M140 S0																						; Set Bed Temperature (Fast) or Configure Bed Heater
if heat.chamberHeaters[0] != -1
	M141 S0
M106 P0 S0																					; Fan Off
if exists(tools[1])
	M106 P1 S0																				; Fan Off
M42 P3 S0																					; Fan Off

if fileexists("0:/sys/autopower.g")
  M30 "0:/sys/autopower.g" ;This file is filled only in case of power failure

M98 P"0:/data/micropaso"
if global.data[0] != move.axes[2].babystep													; Si los micropasos han cambiado
	echo >"0:/data/micropaso" "set global.data[0] = "^{move.axes[2].babystep}			; Set or Report Current Probe status

M98 P"0:/data/R_end"																		; Call Macro/Subprogram
M98 P"0:/data/height_map"																	; Call Macro/Subprogram

G28																							; Home
M84																							; Stop idle hold

M400																						; Wait for current moves to finish
