; The /sys/daemon.g macro file can be used to execute routine tasks.

if state.status == "processing"
	var i = 0
	var DuoPower = {1,2}
	while var.i < #global.toolType
		if (global.ContPellets[var.i] != -1 && global.toolType[var.i] == "PL" && sensors.gpIn[var.i+1].value == 1 && global.DaemonActive[var.i] < state.upTime && (state.currentTool == var.i || state.currentTool == #global.toolType))
			M98 P"CheckFeeder.g" X{var.i} Y{var.DuoPower}
			M42 P{var.DuoPower[var.i]} S0
		set var.i = var.i + 1

if state.status == "idle"
	if fileexists("0:/sys/Chamber_AutoPreheat.g") && exists(global.preheatDelay) && exists(global.targetTemp)
		if global.preheatDelay != 0
			M98 P"0:/sys/Chamber_AutoPreheat.g"