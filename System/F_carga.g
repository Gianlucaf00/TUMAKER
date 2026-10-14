; Load filament

;M291 R"Loading" P"Wait till the LED turns on to charge the filament." S1 T0
set global.i18n[1] = "sys_F_carga_01"
M98 P"messages.g"
M291 R{global.i18n[2]} P{global.i18n[3]} S1 T0									; Display message
M42 P3 S0																		; Set fan
M116 P{state.currentTool}																			; Wait
M42 P3 S255																	; Set fan
M300 S5000 P100																	; Play beep sound
M292																			; Acknowledge blocking message
G4 P200																			; Dwell
M300 S5000 P100																	; Play beep sound

;M291 R"Loading..." P"Check that the material is in the nozzle" S1 T0
set global.i18n[1] = "sys_F_carga_02"
M98 P"messages.g"
M291 R{global.i18n[2]} P{global.i18n[3]} S1 T0									; Display message

G92 E0																			; Set Position
M83																				; Set extruder to relative mode
G1 E50 F180																		; Move
G10																				; Retract
G92 E0																			; Set Position

M400																			; Wait for current moves to finish
M84 E0																			; Stop idle hold
M300 S5000 P100																	; Play beep sound
M292																			; Acknowledge blocking message
G4 P200																			; Dwell
M300 S5000 P100																	; Play beep sound
M400																			; Wait for current moves to finish
