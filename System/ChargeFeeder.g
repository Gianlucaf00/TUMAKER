; ==========================================================
; 0:/sys/ChargeFeeder.g
; ==========================================================

; ----------------------------------------------------------
; TOOL SELECTION
; ----------------------------------------------------------
var selectTool = exists(param.X) ? param.X : 0

; ----------------------------------------------------------
; PRECONDITIONS
; ----------------------------------------------------------
if state.status != "processing" && global.ContPellets[var.selectTool] != -1 && global.toolType[var.selectTool] == "PL"

	; ------------------------------------------------------
	; CONFIGURATION
	; ------------------------------------------------------
	var ChargingTime = 10         ; Tiempo en segundos de activación del alimentador
	var NumberOfAttempts = 10     ; Número máximo de intentos fallidos
	var Downtime = 20             ; Tiempo de espera para rellenado del compresor
	var TimerPellets = state.upTime + var.ChargingTime
	var DuoPower = {1,2}
	var debug = false
	set global.ContPellets[var.selectTool] = 1

	; ------------------------------------------------------
	; MAIN LOOP (FIXED NUMBER OF ATTEMPTS)
	; ------------------------------------------------------
	while global.ContPellets[var.selectTool] <= var.NumberOfAttempts

		if var.debug
			echo "MAIN LOOP -> intento "^global.ContPellets[var.selectTool]^" / "^var.NumberOfAttempts

		if global.DaemonActive[var.selectTool] < state.upTime

			if var.debug
				echo "Daemon OK -> inicio intento"

			; --------------------------------------------------
			; FEEDER ACTIVATION
			; --------------------------------------------------
			if sensors.gpIn[var.selectTool + 1].value == 1

				if var.debug
					echo "Sensor = 1 -> activar feeder"

				; Recalcular tiempo de llenado para ESTE intento
				set var.TimerPellets = state.upTime + var.ChargingTime

				if var.debug
					echo "TimerPellets = "^var.TimerPellets-state.upTime

				M42 P{var.DuoPower[var.selectTool]} S1

				while state.upTime < var.TimerPellets
				
					if var.debug
						echo "TimerPellets = "^var.TimerPellets-state.upTime

					if sensors.gpIn[var.selectTool + 1].value == 0		; Verificar si hay pellets

						if var.debug
							echo "Sensor = 0 detectado, verificando..."

						M42 P{var.DuoPower[var.selectTool]} S0
						G4 P500 M400									; Espera breve antes de confirmar

						if sensors.gpIn[var.selectTool + 1].value == 0	; Confirmar detección real

							if var.debug
								echo "Pellets CONFIRMADOS -> salir del intento"

							set var.TimerPellets = state.upTime - var.ChargingTime
						else											; Falsa alarma

							if var.debug
								echo "FALSA alarma -> continuar feeder"

							M42 P{var.DuoPower[var.selectTool]} S1

					G4 S1 M400

				M42 P{var.DuoPower[var.selectTool]} S0

				if var.debug
					echo "Feeder apagado -> fin del ciclo"

				; --------------------------------------------------
				; ATTEMPT COUNTER
				; --------------------------------------------------
				set global.ContPellets[var.selectTool] = global.ContPellets[var.selectTool] + 1

				if var.debug
					echo "Intento incrementado -> contador = "^global.ContPellets[var.selectTool]

				M300 S5000 P500

			; --------------------------------------------------
			; SUCCESSFUL LOAD
			; --------------------------------------------------
			if sensors.gpIn[var.selectTool + 1].value == 0

				if var.debug
					echo "SUCCESS -> pellets cargados correctamente"

				set global.ContPellets[var.selectTool] = 1
				;M118 P0 S"La carga de pellets se ha completado."
				set global.i18n[1] = "macros_Others_Pellets Feeder_Manual Load_01"
				M98 P"messages.g"
				M118 P0 S{global.i18n[3]}
				M300 S5000 P2000
				break

			; --------------------------------------------------
			; FAILURE (MAX ATTEMPTS REACHED)
			; --------------------------------------------------
			if global.ContPellets[var.selectTool] > var.NumberOfAttempts

				if var.debug
					echo "ERROR -> numero maximo de intentos alcanzado"

				set global.ContPellets[var.selectTool] = 1
				M42 P{var.DuoPower[var.selectTool]} S0
				;M118 P0 S"La carga de pellets no se ha completado. Por favor, revise su alimentador o realice una nueva carga."
				set global.i18n[1] = "macros_Others_Pellets Feeder_Manual Load_02"
				M98 P"messages.g"
				M118 P0 S{global.i18n[3]}
				break

			; --------------------------------------------------
			; COOLDOWN / COMPRESSOR REFILL
			; --------------------------------------------------
			if var.debug
				echo "Cooldown -> esperar "^var.Downtime^"s"

			set global.DaemonActive[var.selectTool] = state.upTime + var.Downtime
			G4 S1 M400

		else
			if var.debug
				echo "Cooldown -> esperar "^global.DaemonActive[var.selectTool]-state.upTime^"s"

			G4 S1 M400

	; ------------------------------------------------------
	; SAFE OUTPUT SHUTDOWN
	; ------------------------------------------------------
	if var.debug
		echo "Salida segura -> apagar feeder"

	M42 P{var.DuoPower[var.selectTool]} S0

; ----------------------------------------------------------
; ERROR CONDITIONS
; ----------------------------------------------------------
else

	if state.status == "processing"
		;M118 S{"Cannot be used during "^state.status}
		set global.i18n[1] = "status_check"
		M98 P"messages.g"
		M118 S{global.i18n[3]}
		M99

	if global.toolType[var.selectTool] != "PL"
		;M118 P0 S"Su cabezal no es compatible con esta opción."
		set global.i18n[1] = "macros_Others_Pellets_Feeder_Material_Sensor_Pellet_Feeder_01"
		M98 P"messages.g"
		M118 P0 S{global.i18n[3]}

	if global.ContPellets[var.selectTool] == -1
		;M118 P0 S"Su alimentador de pellets no está activado."
		set global.i18n[1] = "macros_Others_Pellets Feeder_Manual Load_03"
		M98 P"messages.g"
		M118 P0 S{global.i18n[3]}