; Uso: M98 P"append.g" V<valor>

if !exists(param.V)
	abort "append.g: falta parametro V"

if !exists(global.list)
	global list = param.V
else
	; Nombre del archivo temporal
	var f = "0:/sys/_append_tmp.g"

	; Longitud actual del array
	var n = #global.list

	; Limpiar archivo previo si existe
	if fileexists(var.f)
		M30 {var.f}

	;Comenzar construcción del nuevo array
	echo >{var.f} "; Comenzar construcción del nuevo array"
	echo >>>{var.f} "set global.list = {"

	; Copiar elementos existentes
	var i = 0
	while var.i < var.n
		echo >>>{var.f} global.list[var.i]
		echo >>>{var.f} ","
		set var.i = var.i + 1

	; Añadir nuevo valor
	echo >>>{var.f} param.V

	; Cerrar array
	echo >>{var.f} "}"

	;Ejecutar el archivo generado
	M98 P{var.f}

	; Limpiar
	;M30 {var.f}