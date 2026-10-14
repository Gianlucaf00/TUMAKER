; ==========================================================
; Tool configuration ""
; ==========================================================

; ----------------------------------------------------------
; Parameters and Local variables
; ----------------------------------------------------------
var tool     = exists(param.X) ? param.X : 0
var toolName = exists(param.Y) ? param.Y : "none"
var i = 0

; ----------------------------------------------------------
; Motor direction configuration
; ----------------------------------------------------------
M569 P{move.extruders[var.tool].driver} S0

; ----------------------------------------------------------
; Backup current extruder settings
; ----------------------------------------------------------
var stepsPerMm   = {vector(#move.extruders, 0)}
var jerk         = {vector(#move.extruders, 0)}
var speed        = {vector(#move.extruders, 0)}
var acceleration = {vector(#move.extruders, 0)}
var current      = {vector(#move.extruders, 0)}

while var.i < #move.extruders
	set var.stepsPerMm[var.i]   = move.extruders[var.i].stepsPerMm
	set var.jerk[var.i]         = move.extruders[var.i].jerk
	set var.speed[var.i]        = move.extruders[var.i].speed
	set var.acceleration[var.i] = move.extruders[var.i].acceleration
	set var.current[var.i]      = move.extruders[var.i].current
	set var.i = var.i + 1

; ----------------------------------------------------------
; Apply HR tool parameters
; ----------------------------------------------------------
set var.stepsPerMm[var.tool]   = 100               ; Steps per mm
set var.jerk[var.tool]         = 100               ; Instantaneous speed change
set var.speed[var.tool]        = 100               ; Max feedrate (mm/min)
set var.acceleration[var.tool] = 100               ; Max acceleration (mm/s²)
set var.current[var.tool]      = 100               ; Motor current (mA)

; ----------------------------------------------------------
; Apply configuration to firmware
; ----------------------------------------------------------
M92  E{var.stepsPerMm}
M566 E{var.jerk}
M203 E{var.speed}
M201 E{var.acceleration}
M906 E{var.current}

; ----------------------------------------------------------
; Tool hardware mapping
; ----------------------------------------------------------
M98 P"0:/data/HardwareMapping.g"
var sensor  = global.data[0]                       ; Sensors per tool
var fans    = global.data[1]                       ; Fans per tool
var toolMap = global.data[2]                       ; Axis mapping (X,Y)
var heater  = {{1,2}, {3,4}}                       ; Heaters per tool
var offset  = {{0,0,0,0}, {0,0,0,0}}               ; Tool offsets (X,Y,Z,U)

; ----------------------------------------------------------
; Sensors configuration
; ----------------------------------------------------------
M308 S{var.sensor[var.tool][0]} T0 A"none"
M308 S{var.sensor[var.tool][1]} T0 A"none"

; ----------------------------------------------------------
; Fans configuration
; ----------------------------------------------------------
M106 P{var.fans[var.tool][0]} S0  T-1  H-1  C{var.toolName ^ " Layer Fan"}
M106 P{var.fans[var.tool][1]} S0  T-1  H-1  C{var.toolName ^ " Head Cool"}
M106 P{var.fans[var.tool][2]} S0  T-1  H-1  C{var.toolName ^ " Extra Cool"}

; ----------------------------------------------------------
; Tool definition
; ----------------------------------------------------------
if exists(tools[var.tool]) 
	M563 P{var.tool} D-1 F-1 H-1 X{var.toolMap[var.tool][0]} Y{var.toolMap[var.tool][1]} S"NONE"

; ----------------------------------------------------------
; External trigger
; ----------------------------------------------------------
M581 P{var.tool + 1} T{var.tool + 2} R-1
