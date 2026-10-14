; The /sys/daemon.g macro file can be used to execute routine tasks.
; The firmware looks for the file, if it exists it is executed and once it reaches the end of the file, it waits.
; If the file is not found, it waits 10 seconds and then searches again.
; Second motion
; M595 Q1 P10
; M669 T0.1 S1

M596 P1

; ----------------------------------------------------------
; TOOL SELECTION (same logic as ChargeFeeder.g)
; ----------------------------------------------------------
var selectTool = exists(param.X) ? param.X : 0
var DuoPower = exists(param.Y) ? param.Y : {1,2}

var ChargingTime = 5 ; Time in seconds the feeders remain on for loading
var NumberOfAttempts = 10 ; Number of failed load attempts before entering pause
var Downtime = 20 ; Sets the downtime after a load to allow the compressor to refill
var debug = false
var TimerPellets = state.upTime + var.ChargingTime

; ----------------------------------------------------------
; Feeder Tool (dynamic)
; ----------------------------------------------------------
if global.ContPellets[var.selectTool] != -1 && global.DaemonActive[var.selectTool] < state.upTime

	if var.debug
		echo "DAEMON -> Tool "^var.selectTool^" | intento "^global.ContPellets[var.selectTool]^"/"^var.NumberOfAttempts

	; ------------------------------------------------------
	; NEW ATTEMPT (1 daemon execution = 1 attempt)
	; ------------------------------------------------------
	set global.ContPellets[var.selectTool] = global.ContPellets[var.selectTool] + 1

	if var.debug
		echo "Intento incrementado -> "^global.ContPellets[var.selectTool]

	; Prepare fill time for THIS attempt
	set var.TimerPellets = state.upTime + var.ChargingTime

	if var.debug
		echo "TimerPellets = "^var.TimerPellets-state.upTime^"s"

	if sensors.gpIn[var.selectTool + 1].value == 1

		if var.debug
			echo "Sensor = 1 -> activar feeder"

		M42 P{var.DuoPower[var.selectTool]} S1
		; echo >>"0:/sys/Alimentador Registro" {"ContPellets["^var.selectTool^"] "^state.time^" "^job.file.fileName^" "^global.ContPellets[var.selectTool]} ; Log the number of failed attempts

		while state.upTime < var.TimerPellets ; countdown of fill time

			if sensors.gpIn[var.selectTool + 1].value == 0 ; Check if pellets are present

				if var.debug
					echo "Sensor = 0 detectado, verificando..."

				M42 P{var.DuoPower[var.selectTool]} S0
				G4 P500 M400 ; Perform a short wait before verifying

				if sensors.gpIn[var.selectTool + 1].value == 0 ; Check if it was a false detection

					if var.debug
						echo "Pellets CONFIRMADOS"

					set var.TimerPellets = state.upTime - var.ChargingTime
				else ; False alarm detected, continue

					if var.debug
						echo "FALSA alarma -> continuar feeder"

					M42 P{var.DuoPower[var.selectTool]} S1

			G4 S1 M400

		M42 P{var.DuoPower[var.selectTool]} S0

		if var.debug
			echo "Feeder apagado -> fin del intento"

	; ------------------------------------------------------
	; SUCCESS
	; ------------------------------------------------------
	if sensors.gpIn[var.selectTool + 1].value == 0

		if var.debug
			echo "SUCCESS -> pellets cargados"

		set global.ContPellets[var.selectTool] = 1
		M300 S5000 P2000

	; ------------------------------------------------------
	; FAILURE (MAX ATTEMPTS REACHED)
	; ------------------------------------------------------
	if global.ContPellets[var.selectTool] > var.NumberOfAttempts

		if var.debug
			echo "ERROR -> max intentos alcanzado"

		set global.ContPellets[var.selectTool] = 1
		M42 P{var.DuoPower[var.selectTool]} S0
		M596 P0
		M400
		M25
		; M291 R"Sensor Left_Tool" P"No pellets detected" S2 T0
		set global.i18n[1] = "sys_trigger2_02"
		M98 P"messages.g"
		M291 R{global.i18n[2]} P{global.i18n[3]} S2 T0

	; ------------------------------------------------------
	; COOLDOWN
	; ------------------------------------------------------
	if var.debug
		echo "Cooldown -> "^var.Downtime^"s"

	set global.DaemonActive[var.selectTool] = state.upTime + var.Downtime

else
	if var.debug
		echo "DAEMON -> Tool "^var.selectTool^" bloqueado por DaemonActive"

G4 S1 M400
M42 P{var.DuoPower[var.selectTool]} S0
