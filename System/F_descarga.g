; Unload Filament

;M291 R"Unloading" P"Wait till the LED turns on to unload the filament." S1 T0
set global.i18n[1] = "sys_F_descarga_01"
M98 P"messages.g"
M291 R{global.i18n[2]} P{global.i18n[3]} S1 T0									; Display message
M42 P3 S0																		; Set fan
M703																			; Configure filament
M116 P{state.currentTool}														; Wait
M42 P3 S255																		; Set fan
M300 S5000 P100																	; Play beep sound
M292																			; Acknowledge blocking message
G4 P200																			; Dwell
M300 S5000 P100																	; Play beep sound

;M291 R"Unloading..." P"Check the material is unloaded" S1 T0
set global.i18n[1] = "sys_F_descarga_02"
M98 P"messages.g"
M291 R{global.i18n[2]} P{global.i18n[3]} S1 T0									; Display message

G92 E0																			; Set Position
M83																				; Set extruder to relative mode
G1 E35 F240																		; Move
G10																				; Retract
G1 E-5 F6000																	; Move
G1 E-50 F120																	; Move
G92 E0																			; Set Position

M400																			; Wait for current moves to finish
G10 P{state.currentTool} S0 R0													; Tool Temperature Setting
M84 E0																			; Stop idle hold
M300 S5000 P100																	; Play beep sound
M292																			; Acknowledge blocking message
G4 P200																			; Dwell
M300 S5000 P100																	; Play beep sound
M400																			; Wait for current moves to finish
