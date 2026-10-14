; Test del fabricante para comprobacion de maquinas
; Comprueba la version del firmware
if state.status = "processing" || state.status = "paused"
	;M118 S{"Cannot be used during "^state.status}
	set global.i18n[1] = "status_check"
	M98 P"messages.g"
	M118 S{global.i18n[3]}
	M99

var FW6HC = "3.5.3"				;Duet3Firmware_MB6HC.bin
var FW3HC = "3.5.3"				;Duet3Firmware_EXP3HC.bin
var FWIFI = "2.1.0"				;DuetWiFiModule_32S3.bin
var FWPDue = "3.5.0"			;PanelDueFirmware.bin

if boards[0].firmwareVersion == var.FW6HC
	M291 R{boards[0].name} P{"La electrónica se encuentra en la versión CORRECTA. "^boards[0].firmwareVersion} S2
else
	M291 R{boards[0].name} P{"La electrónica NO se encuentra en la versión correcta. "^boards[0].firmwareVersion} S2
	;M291 R{boards[0].name} P{"Se procederá a la instalación de "^boards[0].firmwareFileName} S3
	;M997 B0 S0

if exists(boards[1])
	if {boards[1].firmwareVersion ^ ""} == var.FW3HC
		M291 R{boards[1].name} P{"La electrónica se encuentra en la versión CORRECTA. "^boards[1].firmwareVersion} S2
	else
		M291 R{boards[1].name} P{"La electrónica NO se encuentra en la versión correcta. "^boards[1].firmwareVersion} S2
		;M291 R{boards[1].name} P{"Se procederá a la instalación de "^boards[1].firmwareFileName} S3
		;M997 B1 S0
else
	M291 R"ERROR" P"No se ha detectado la electrónica Duet3HC" S3

var contador = 10
if exists(network.interfaces[1])
	if network.interfaces[1].state != "active" || network.interfaces[1].state != "idle" || network.interfaces[1].state = "disabled"
		M552 I1 S0
		while true
			if network.interfaces[1].state = "idle" || var.contador <= 0
				break;
			else
				G4 P500
				set var.contador = var.contador-1

	if network.interfaces[1].state != "active" || network.interfaces[1].state != "idle"
		if network.interfaces[1].firmwareVersion != var.FWIFI
			M291 R{"Module "^network.interfaces[1].type} P{"El módulo "^network.interfaces[1].type^" NO se encuentra en la versión correcta. "^network.interfaces[1].firmwareVersion} S2
			;M291 R{"Module "^network.interfaces[1].type} P{"Se procederá a la instalación del módulo "^network.interfaces[1].type} S3
			;M997 S1
		else
			M291 R{"Module "^network.interfaces[1].type} P{"El módulo "^network.interfaces[1].type^" se encuentra en la versión CORRECTA. "^network.interfaces[1].firmwareVersion} S2
			M587 S"INDART3D_2GHz" P"3Dindart"
else
	M291 R"ERROR" P"No se ha detectado módulo Wifi" S3

M291 R"PanelDue" P{"Asegúrese de que el PanelDue está en la versión "^var.FWPDue^". ¿Se encuentra en dicha versión?"} S4 K{"SI","NO"}
if input == 0
	M291 R"PanelDue" P{"Has indicado que el PanelDue se encuentra en la versión "^var.FWPDue} S2
else
	M291 R"PanelDue" P"Se procederá a la instalación del PanelDue." S3
	M997 S4



; Variables NO modificables
var error = 0
var contar = 0
var respuesta = false
var cabezal = 0
var vol = 0
var time = state.upTime
set global.data[1] = "OK = SI / CANCEL = NO"

; Pregunta al Tecnico antes de continuar
M291 R"HOME/S" P"Asegurese de que no haya nada en medio antes de continuar" S3
M291 R"FILAMENTO" P"Asegurese de que no haya filamento cargado ni metido en el sensor antes de continuar" S3
M291 R"SISTEMA" P{"Esta seguro de que su impresora es " ^network.name^ "?"} S3

; Encabezado de test.txt
echo >"test.txt" ";IMPRESORA "^{network.name}
echo >>"test.txt" "	Version de firmware Duet "^boards[0].firmwareVersion
if network.interfaces[0].type = "wifi"
	echo >>"test.txt" "	Modulo "^network.interfaces[0].type^" "^network.interfaces[0].firmwareVersion
else
	echo >>"test.txt" "	Modulo "^network.interfaces[0].type
echo >>"test.txt" " "

; Desactivo mapa de altura por si acaso
G29 S2

; Detector de cabezales;  [HR]=1  [PL]=2  [HR-HR]=3  [HR-PL]=4  [PL-PL]=5
if !{exists(move.axes[3])} && {exists(sensors.analog[1])} && !{exists(sensors.analog[2])} && !{exists(sensors.analog[3])} && !{exists(sensors.analog[4])}
	set var.cabezal = 1
if !{exists(move.axes[3])} && {exists(sensors.analog[1])} && {exists(sensors.analog[2])} && !{exists(sensors.analog[3])} && !{exists(sensors.analog[4])}
	set var.cabezal = 2
if {exists(move.axes[3])} && {exists(sensors.analog[1])} && {exists(sensors.analog[2])} && !{exists(sensors.analog[3])} && !{exists(sensors.analog[4])}
	set var.cabezal = 3
if {exists(move.axes[3])} && {exists(sensors.analog[1])} && !{exists(sensors.analog[2])} && {exists(sensors.analog[3])} && {exists(sensors.analog[4])}
	set var.cabezal = 4
if {exists(move.axes[3])} && {exists(sensors.analog[1])} && {exists(sensors.analog[2])} && {exists(sensors.analog[3])} && {exists(sensors.analog[4])}
	set var.cabezal = 5

if var.cabezal=0
	M291 R"ERROR FATAL Tipo de cabezal no encontrado" P"Esto no deberia ser posible" T3 S1
	echo >>"test.txt" """ ERROR FATAL cabezal tipo "^var.cabezal^" NO ES POSIBLE"""
	M99

echo >>"test.txt" ";Tipo de cabezal: [HR]=1		[PL]=2		[HR-HR]=3		[HR-PL]=4		[PL-PL]=5"
echo >>"test.txt" "	Cabezal tipo "^var.cabezal
echo >>"test.txt" " "

; Comprueba finales de carrera o direcciones de motores
M291 R"Esto es automatico, espere" P"Comprobando finales de carrera o direcciones de motores" T3 S1
echo >>"test.txt" ";Comprobacion finales de carrera o direcciones de motores"
M84
G28
if move.axes[0].homed = false
	echo >>"test.txt" """ ERROR "^move.axes[0].letter^" HOME Revisa el final de carrera o el motor"""
	set var.error = var.error+1
else
	echo >>"test.txt" "	Home "^move.axes[0].letter^" correcto"

if move.axes[1].homed = false
	echo >>"test.txt" """ ERROR "^move.axes[1].letter^" HOME Revisa el final de carrera o el motor"""
	set var.error = var.error+1
else
	echo >>"test.txt" "	Home "^move.axes[1].letter^" correcto"

if move.axes[2].homed = false
	echo >>"test.txt" """ ERROR "^move.axes[2].letter^" HOME Revisa el final de carrera o el motor"""
	set var.error = var.error+1
else
	echo >>"test.txt" "	Home "^move.axes[2].letter^" correcto"

if exists(move.axes[3])
	if move.axes[3].homed = false
		echo >>"test.txt" """ ERROR "^move.axes[3].letter^" HOME Revisa el final de carrera o el motor"""
		set var.error = var.error+1
	else
		echo >>"test.txt" "	Home "^move.axes[3].letter^" correcto"

if var.error !=0
	M291 R"ERROR HOME" P"Algun "^var.error^" final/es de carrera que no esta bien, NO puede continuar" S2
	echo >>"test.txt" """ ERROR "^var.error^" final/es de carrera no esta bien, NO puede continuar"""
	M99
echo >>"test.txt" " "

; Comprobador de ventiladores
M291 R"Requiere Operario" P"Comprobador de ventiladores" T3 S1
echo >>"test.txt" ";Comprobacion de ventiladores por el Operario"
T0 P0
if {exists(move.axes[3])}
	G0 X50 Y0 U{move.axes[0].max-50} F{move.axes[0].speed}
else
	G0 X{move.axes[0].max/2} Y0 F{move.axes[0].speed}

M300 S300 P250
G4 P500
M300 S300 P375
G4 P500
M300 S300 P500
G4 P500
M400

while var.vol != 9
	if {exists(fans[var.vol])}
		if var.vol = 2
			M106 P{var.vol} S1 H-1
		else
			M106 P{var.vol} S0 H-1
	set var.vol = {var.vol + 1}
set var.vol = 0
while var.vol != 9
	if {exists(fans[var.vol])}
		if var.vol = 2
			M106 P{var.vol} S0 H-1
			set global.data[0] = false
			set global.data[2] = {"Se ha apagado "^fans[var.vol].name^"?"}
			M98 P"mensaje.g"
			if global.data[0] = true
				echo >>"test.txt" "	"^fans[var.vol].name^" ha funcionado correctamente"
			else
				echo >>"test.txt" """ ERROR "^fans[var.vol].name^" NO ha funcionado correctamente"""
			M106 P{var.vol} S1 H-1
		else
			M106 P{var.vol} S1 H-1
			set global.data[0] = false
			set global.data[2] = {"Se ha encendido "^fans[var.vol].name^"?"}
			M98 P"mensaje.g"
			if global.data[0] = true
				echo >>"test.txt" "	"^fans[var.vol].name^" ha funcionado correctamente"
			else
				echo >>"test.txt" """ ERROR "^fans[var.vol].name^" NO ha funcionado correctamente"""
			M106 P{var.vol} S0 H-1
	set var.vol = {var.vol + 1}
if {exists(move.axes[3])}
	G0 X{move.axes[0].min} Y0 U{move.axes[3].max} F{move.axes[0].speed}
else
	G0 X{move.axes[0].min} Y0 F{move.axes[0].speed}
echo >>"test.txt" " "

; Comprobador de temperatura de la cama
echo >>"test.txt" ";Comprobador de temperatura de la cama"
if exists(heat.heaters[0])
	M291 R"Esto es automatico, espere" P"Comprobando cama calefactada" T3 S1
	if heat.heaters[0].current > 0 && heat.heaters[0].current < 1000
		M140 S{heat.heaters[0].current+5}
		while heat.heaters[0].current <= heat.heaters[0].active && heat.heaters[0].state = "active"
			G4 S1
			M400
		M140 S0
		if heat.heaters[0].state = "active"
			echo >>"test.txt" "	Su cama calefactada calienta correctamente"
		else
			echo >>"test.txt" """ ERROR Se ha generado una falla la cama no calienta"""
	else
		echo >>"test.txt" """ ERROR la temperatura de la cama es "^heat.heaters[0].current^", revisa la conexion del sensor"""
else
	echo >>"test.txt" """ ERROR NO se encontro ninguna cama configurada ESTO NO DEBERIA PASAR"""
echo >>"test.txt" " "

; Comprobador de temperaturas cabezales
echo >>"test.txt" ";Comprobador de temperaturas cabezales"
T0 P0
set var.contar = 0
if exists(tools[1])
	T2 P0
	set var.vol = 1
	while var.vol <= 3
		if exists(heat.heaters[var.vol]) && var.contar=0
			M291 R"Esto es automatico, espere" P{"Comprobando "^sensors.analog[var.vol].name} T3 S1
			if var.vol = 1
				G10 P2 S{heat.heaters[var.vol].current+5,0}
			if var.vol = 2
				G10 P2 S{0,heat.heaters[var.vol].current+5}
			if var.vol = 3
				G10 P2 S{0,0,heat.heaters[var.vol].current+5}
			if var.vol = 4
				G10 P2 S{0,0,0,heat.heaters[var.vol].current+5}
			while heat.heaters[var.vol].current <= heat.heaters[var.vol].active && heat.heaters[var.vol].state = "active"
				G4 S1
				M400
			G10 P2 S0
			if heat.heaters[var.vol].state = "active"
				echo >>"test.txt" "	Su "^sensors.analog[var.vol].name^" calienta correctamente"
			else
				echo >>"test.txt" """ ERROR Revisa las conexiones de la resitencia "^sensors.analog[var.vol].name^""""
		else
			if var.vol != 4
				set var.contar = 1
				M291 R"Esto es automatico, espere" P{"Comprobando "^sensors.analog[var.vol+1].name} T3 S1
				if var.vol = 2
					G10 P2 S{0,heat.heaters[var.vol+1].current+5}
				if var.vol = 3
					G10 P2 S{0,0,heat.heaters[var.vol+1].current+5}
				while heat.heaters[var.vol+1].current <= heat.heaters[var.vol+1].active && heat.heaters[var.vol+1].state = "active"
					G4 S1
					M400
				G10 P2 S0
				if heat.heaters[var.vol+1].state = "active"
					echo >>"test.txt" "	Su "^sensors.analog[(var.vol+1)].name^" calienta correctamente"
				else
					echo >>"test.txt" """ ERROR Revisa las conexiones de la resitencia "^sensors.analog[(var.vol+1)].name^""""
		set var.vol = var.vol+1
else
	set var.vol = 1
	while var.vol <= 2
		if exists(heat.heaters[var.vol])
			M291 R"Esto es automatico, espere" P{"Comprobando "^sensors.analog[var.vol].name} T3 S1
			if var.vol = 1
				G10 P0 S{heat.heaters[var.vol].current+5}
			if var.vol = 2
				G10 P0 S{0,heat.heaters[var.vol].current+5}
			while heat.heaters[var.vol].current <= heat.heaters[var.vol].active && heat.heaters[var.vol].state = "active"
				G4 S1
				M400
			G10 P0 S0
			if heat.heaters[var.vol].state = "active"
				echo >>"test.txt" "	Su "^sensors.analog[var.vol].name^" calienta correctamente"
			else
				echo >>"test.txt" """ ERROR Revisa las conexiones de la resitencia "^sensors.analog[var.vol].name^""""
		set var.vol = var.vol+1
T0 P0
echo >>"test.txt" " "

; Prueba de movimientos
M291 R"Requiere Operario" P"Prueba de movimientos" T3 S1
echo >>"test.txt" ";Prueba de movimientos por el Operario"
M300 S300 P250
G4 P500
M300 S300 P375
G4 P500
M300 S300 P500
G4 P500
M400

G0 Z{move.axes[2].max} F{move.axes[2].speed}
set global.data[0] = false
set global.data[2] = {"El eje "^{move.axes[2].letter}^" se ha posicionado en "^{move.axes[2].max}^" y no ha golpedo con nada?"}
M400
M98 P"mensaje.g"
if global.data[0] = true
	echo >>"test.txt" "	Ha indicado que el eje "^{move.axes[2].letter}^" se posiciono en "^{move.axes[2].max}^" correctamente"
else
	echo >>"test.txt" """ ERROR ha indicado alguna anomalia en el eje "^{move.axes[2].letter}^" al posicionarse en "^{move.axes[2].max}^""""
G0 Z{move.axes[2].max / 2}
M400

G0 Y{move.axes[1].max} F{move.axes[1].speed}
set global.data[0] = false
set global.data[2] = {"El eje "^{move.axes[1].letter}^" se ha posicionado en "^{move.axes[1].max}^" y no ha golpedo con nada?"}
M400
M98 P"mensaje.g"
if global.data[0] = true
	echo >>"test.txt" "	Ha indicado que el eje "^{move.axes[1].letter}^" se posiciono en "^{move.axes[1].max}^" correctamente"
else
	echo >>"test.txt" """ ERROR ha indicado alguna anomalia en el eje "^{move.axes[1].letter}^" al posicionarse en "^{move.axes[1].max}^""""
G0 Y{move.axes[1].max / 2}
M400

G0 X{move.axes[0].max} F{move.axes[0].speed}
set global.data[0] = false
set global.data[2] = {"El eje "^{move.axes[0].letter}^" se ha posicionado en "^{move.axes[0].max}^" y no ha golpedo con nada?"}
M400
M98 P"mensaje.g"
if global.data[0] = true
	echo >>"test.txt" "	Ha indicado que el eje "^{move.axes[0].letter}^" se posiciono en "^{move.axes[0].max}^" correctamente"
else
	echo >>"test.txt" """ ERROR ha indicado alguna anomalia en el eje "^{move.axes[0].letter}^" al posicionarse en "^{move.axes[0].max}^""""
G0 X{move.axes[0].min}
M400

if {exists(move.axes[3])}
	G0 U{move.axes[3].min} F{move.axes[3].speed}
	set global.data[0] = false
	set global.data[2] = {"El eje "^{move.axes[3].letter}^" se ha posicionado en "^{move.axes[3].max}^" y no ha golpedo con nada?"}
	M400
	M98 P"mensaje.g"
	if global.data[0] = true
		echo >>"test.txt" "	Ha indicado que el eje "^{move.axes[3].letter}^" se posiciono en "^{move.axes[3].max}^" correctamente"
	else
		echo >>"test.txt" """ ERROR ha indicado alguna anomalia en el eje "^{move.axes[3].letter}^" al posicionarse en "^{move.axes[3].max}^""""
	G0 U{move.axes[3].max}
	M400

echo >>"test.txt" " "
M291 R"Requiere Operario" P"Se va a comprobar el posicionamiento sobre la base" T3 S1
echo >>"test.txt" ";Prueba posicionamiento por el Operario"
M300 S300 P250
G4 P500
M300 S300 P375
G4 P500
M300 S300 P500
G4 P500
M400
G0 Z10 F{move.axes[2].speed}
G0 X0 F{move.axes[0].speed}
G0 Z1 F{move.axes[2].speed}
M400
set global.data[0] = false
set global.data[2] = {"El cabezal "^tools[0].name^" se ha posicionado en la esquina izquierda o esta en la posicion "^move.axes[0].machinePosition^"?"}
M98 P"mensaje.g"
if global.data[0] = true
	echo >>"test.txt" "	Ha indicado que el cabezal "^tools[0].name^" se posiciono correctamente en la posicion "^move.axes[0].machinePosition
else
	echo >>"test.txt" """ ERROR ha indicado que el cabezal "^tools[0].name^" no se posiciono en izquierda o en la posicion "^move.axes[0].machinePosition^""""
M400
G0 Z10 F{move.axes[2].speed}
G0 X{move.axes[0].max} F{move.axes[0].speed}
G0 Z1 F{move.axes[2].speed}
M400
set global.data[0] = false
set global.data[2] = {"El cabezal "^tools[0].name^" se ha posicionado en la esquina derecha o esta en la posicion "^move.axes[0].machinePosition^"?"}
M98 P"mensaje.g"
if global.data[0] = true
	echo >>"test.txt" "	Ha indicado que el cabezal "^tools[0].name^" se posiciono correctamente en la posicion "^move.axes[0].machinePosition
else
	echo >>"test.txt" """ ERROR ha indicado que el cabezal "^tools[0].name^" NO se posiciono en izquierda o en la posicion "^move.axes[0].machinePosition^""""
M400
G0 Z10 F{move.axes[2].speed}
G0 X{move.axes[0].min} F{move.axes[0].speed}

if {exists(move.axes[3])}
	G0 U{move.axes[3].min} F{move.axes[3].speed}
	G0 Z1 F{move.axes[2].speed}
	M400
	set global.data[0] = false
	set global.data[2] = {"El cabezal "^tools[1].name^" se ha posicionado en la esquina izquierda o esta en la posicion "^move.axes[3].machinePosition^"?"}
	M98 P"mensaje.g"
	if global.data[0] = true
		echo >>"test.txt" "	Ha indicado que el cabezal "^tools[1].name^" se posiciono correctamente en la posicion "^move.axes[3].machinePosition
	else
		echo >>"test.txt" """ ERROR ha indicado que el cabezal "^tools[1].name^" no se posiciono en izquierda o en la posicion "^move.axes[3].machinePosition^""""
	M400
	G0 Z10 F{move.axes[2].speed}
	G0 U{move.axes[0].max} F{move.axes[3].speed}
	G0 Z1 F{move.axes[2].speed}
	M400
	set global.data[0] = false
	set global.data[2] = {"El cabezal "^tools[1].name^" se ha posicionado en la esquina derecha o esta en la posicion "^move.axes[3].machinePosition^"?"}
	M98 P"mensaje.g"
	if global.data[0] = true
		echo >>"test.txt" "	Ha indicado que el cabezal "^tools[1].name^" se posiciono correctamente en la posicion "^move.axes[3].machinePosition
	else
		echo >>"test.txt" """ ERROR ha indicado que el cabezal "^tools[1].name^" no se posiciono en izquierda o en la posicion "^move.axes[3].machinePosition^""""
	M400
	G0 Z10 F{move.axes[2].speed}
	T0 P0
	G0 U{move.axes[3].max} F{move.axes[3].speed}
	G0 X{move.axes[0].max/2} F{move.axes[3].speed}
	G0 Z1 F{move.axes[2].speed}
	M400
	M291 R"RECUERDA POSICION" P{"Recuerda la posicion de "^tools[0].name^" ,"^tools[1].name^" tambien se va ha posicionar aqui "^move.axes[0].machinePosition^" "} S2
	G0 Z10 F{move.axes[2].speed}
	G0 X{move.axes[0].min} F{move.axes[0].speed}
	T1 P0
	G0 X{move.axes[0].max/2} F{move.axes[3].speed}
	G0 Z1 F{move.axes[2].speed}
	M400
	set global.data[0] = false
	set global.data[2] = {"El cabezal "^tools[1].name^" se ha posicionado en la misma posicion que "^tools[0].name^"?"}
	M98 P"mensaje.g"
	if global.data[0] = true
		echo >>"test.txt" "	Ha indicado que el cabezal "^tools[1].name^" se ha posicionado mas o menos en la misma posicion que "^tools[0].name
	else
		echo >>"test.txt" """ ERROR ha indicado que el cabezal "^tools[1].name^" se posiciono muy lejos de "^tools[0].name^""""
	M400
	T0 P0
	G0 Z10 F{move.axes[2].speed}
	G0 U{move.axes[3].max} F{move.axes[3].speed}
echo >>"test.txt" " "
M400

; Comprobar sensores de filamento
echo >>"test.txt" ";Comprobacion de sensores de filamento por el Operario"
if {exists(sensors.gpIn[1])} || {exists(sensors.gpIn[2])}
	M291 R"Requiere Operario" P"Compruebe sensores de filamento cuando se indique" T3 S1
	M300 S300 P250
	G4 P500
	M300 S300 P375
	G4 P500
	M300 S300 P500
	G4 P500
	M400
else
	if var.cabezal = 2 || var.cabezal = 5
		echo >>"test.txt" "	No existe nigun sensor de filamento"
	else
		echo >>"test.txt" """ ERROR no es posible que NO exista ningun sensor"""

if {exists(sensors.gpIn[1])}
	set var.vol = 30
	if {sensors.gpIn[1].value = 1}
		while var.vol >= 0 && sensors.gpIn[1].value = 1 
			M291 R{"Requiere Operario en "^var.vol} P{"Meta filamento en el sensor "^tools[0].name^" y espere"} T1 S1
			G4 S1
			M400
			set var.vol = var.vol-1
		if sensors.gpIn[1].value = 0
			echo >>"test.txt" "	El sensor que corresponde a "^tools[0].name^" esta bien configurado"
		else
			echo >>"test.txt" """ ERROR el sensor que corresponde a "^tools[0].name^" esta MAL conectado o te DORMISTE"""
	else
		echo >>"test.txt" """ ERROR Añada o quite [ ! ] del config.g al sensor que corresponde a "^tools[0].name^""""
	M400

if {exists(sensors.gpIn[2])}
	set var.vol = 30
	if {sensors.gpIn[2].value = 1}
		while var.vol >= 0 && sensors.gpIn[2].value = 1 
			M291 R{"Requiere Operario en "^var.vol} P{"Meta filamento en el sensor "^tools[1].name^" y espere"} T1 S1
			G4 S1
			M400
			set var.vol = var.vol-1
		if sensors.gpIn[2].value = 0
			echo >>"test.txt" "	El sensor que corresponde a "^tools[1].name^" esta bien configurado"
		else
			echo >>"test.txt" """ ERROR el sensor que corresponde a "^tools[1].name^" esta MAL conectado o te DORMISTE"""
	else
		echo >>"test.txt" """ ERROR Añada o quite [ ! ] del config.g al sensor que corresponde a "^tools[1].name^""""
	M400

echo >>"test.txt" " "

; Comprobar extrusores
echo >>"test.txt" ";Comprobacion de extrusores por el Operario"
M291 R"Requiere Operario" P"Comprueba el sentido de giro de los extrusores y su funcionamiento" T3 S1
M302 P1
M300 S300 P250
G4 P500
M300 S300 P375
G4 P500
M300 S300 P500
G4 P500
M400

if {exists(tools[0])}
	T0 P0
	M291 R"Requiere Operario" P{"MIRA si el extrusor que corresponde a "^tools[0].name^" esta ""EXTRUYENDO""?"} T6 S1
	G1 E15 F90
	set global.data[0] = false
	set global.data[2] = {"El extrusor que corresponde a "^tools[0].name^" a ""EXTRUIDO""?"}
	M400
	M98 P"mensaje.g"
	if global.data[0] = true
		echo >>"test.txt" "	El extrusor que corresponde a "^tools[0].name^" esta correctamente configurado"
	else
		echo >>"test.txt" """ ERROR el extrusor que corresponde a "^tools[0].name^" NO esta correctamente configurado"""
	M400

if {exists(tools[1])}
	T1 P0
	M291 R"Requiere Operario" P{"MIRA si el extrusor que corresponde a "^tools[1].name^" esta ""EXTRUYENDO""?"} T6 S1
	G1 E15 F90
	set global.data[0] = false
	set global.data[2] = {"El extrusor que corresponde a "^tools[1].name^" a ""EXTRUIDO""?"}
	M400
	M98 P"mensaje.g"
	if global.data[0] = true
		echo >>"test.txt" "	El extrusor que corresponde a "^tools[1].name^" esta correctamente configurado"
	else
		echo >>"test.txt" """ ERROR el extrusor que corresponde a "^tools[1].name^" NO esta correctamente configurado"""
	M400

echo >>"test.txt" " "

; Analizador de tiempo
echo >>"test.txt" ";Analizador de tiempos"
set global.data[0] = 0
set global.data[1] = 0
set global.data[2] = 0
set global.data[0] = {state.upTime-var.time}

while global.data[0] >= 60
	set global.data[1] = global.data[1]+1
	set global.data[0] = global.data[0]-60
while global.data[1] >= 60
	set global.data[2] = global.data[2]+1
	set global.data[1] = global.data[1]-60
M400
echo >>"test.txt" "	Horas="^global.data[2]
echo >>"test.txt" "	Minutos="^global.data[1]
echo >>"test.txt" "	Segundos="^global.data[0]

M291 R"Ha realizado el TEST / REINICIE la impresora" P"Compruebe el archivo test.txt en sistema" T4 S1
G4 S4
M400
M112
