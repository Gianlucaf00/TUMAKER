; trigger2.g
; called by the trigger

var cont = 5

if global.toolType[1] = "HR"
	G4 S1																; Dwell
	if {sensors.gpIn[2].value = 1}
		M25																; Pause SD Print
		T1 P0															; Select Tool
		M702															; Unload filament
		;M291 R"Sensor Right_Tool" P"No filament detected" S2 T0
		set global.i18n[1] = "sys_trigger3_01"
		M98 P"messages.g"
		M291 R{global.i18n[2]} P{global.i18n[3]} S2 T0					; Display message
		M400															; Wait for current moves to finish
	else
		M300 S6000 P1000												; Play beep sound
if global.toolType[1] = "PL"
	G4 S1
	if {sensors.gpIn[2].value = 1}
		M25																; Pause SD Print
		T1 P0															; Select Tool
		M702															; Unload filament
		;M291 R"Sensor Right_Tool" P"No pellets detected" S2 T0
		set global.i18n[1] = "sys_trigger3_02"
		M98 P"messages.g"
		M291 R{global.i18n[2]} P{global.i18n[3]} S2 T0					; Display message
		M400															; Wait for current moves to finish
	else
		M300 S6000 P1000												; Play beep sound