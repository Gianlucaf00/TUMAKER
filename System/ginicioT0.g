; Called in Simplify3D in Left Extruder Only M98 Startup Script P "ginicio#.g".

M42 P3 S1					; Set fan
M582 T2					; Check external trigger
G21							; Metric values
T0 P0						; Select Tool
if global.toolType[0] = "PL"
	M703					; Configure filament
M190						; Wait
M290 R0 S0					; Baby stepping
G28							; Home all
M98 P"0:/data/micropaso"	; Call Macro/Subprogram
M400						; Wait for current moves to finish
M290 R1 S{global.data[0]}		; Baby stepping
G0 Z10 F3600				; Move
M116 P0						; Wait
G1 X-10 Y-15 Z0.6			; Move ;;;; HO CAMBIATO L'ALTEZZA Z DA 0.2 A 0.4
G1 Y20 E35 F180				; Move
;G10							; Retract
;G4 S4						; Wait
G92 E0						; Set Position
M400						; Wait for current moves to finish