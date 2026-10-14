;Temperature recording

;Start of recording
echo >"0:/data/temp" ";Temperature recording"

;Record T0
echo >>>"0:/data/temp" "G10 P0 S"^heat.heaters[1].active
if global.toolType[0] = "PL"
	echo >>>"0:/data/temp" ":"^heat.heaters[2].active
echo >>"0:/data/temp" ";"
echo >>>"0:/data/temp" "G10 P0 R"^heat.heaters[1].standby
if global.toolType[0] = "PL"
	echo >>>"0:/data/temp" ":"^heat.heaters[2].standby
echo >>"0:/data/temp" ";"

if exists(tools[1])
	;Record T1
	if global.toolType[1] = "HR" || global.toolType[1] = "PL"
		echo >>>"0:/data/temp" "G10 P1 S"^heat.heaters[3].active
		if global.toolType[1] = "PL"
			echo >>>"0:/data/temp" ":"^heat.heaters[4].active
		echo >>"0:/data/temp" ";"
		echo >>>"0:/data/temp" "G10 P1 R"^heat.heaters[3].standby
		if global.toolType[1] = "PL"
			echo >>>"0:/data/temp" ":"^heat.heaters[4].standby
		echo >>"0:/data/temp" ";"

		;Record T2
		echo >>>"0:/data/temp" "G10 P2 S"^heat.heaters[1].active
		if global.toolType[0] = "PL"
			echo >>>"0:/data/temp" ":"^heat.heaters[2].active
		echo >>>"0:/data/temp" ":"^heat.heaters[3].active
		if global.toolType[1] = "PL"
			echo >>>"0:/data/temp" ":"^heat.heaters[4].active
		echo >>"0:/data/temp" ";"
		echo >>>"0:/data/temp" "G10 P2 R"^heat.heaters[1].standby
		if global.toolType[0] = "PL"
			echo >>>"0:/data/temp" ":"^heat.heaters[2].standby
		echo >>>"0:/data/temp" ":"^heat.heaters[3].standby
		if global.toolType[1] = "PL"
			echo >>>"0:/data/temp" ":"^heat.heaters[4].standby
		echo >>"0:/data/temp" ";"
M400