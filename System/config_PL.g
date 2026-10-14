; ==========================================================
; Tool configuration "PL"
; ==========================================================

; ----------------------------------------------------------
; Parameters and Local variables
; ----------------------------------------------------------
var tool     = exists(param.X) ? param.X : 0
var toolName = exists(param.Y) ? param.Y : "Left"
var i = 0

; ----------------------------------------------------------
; Motor direction configuration
; ----------------------------------------------------------
M569 P{move.extruders[var.tool].driver} S1

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
set var.stepsPerMm[var.tool]   = 250               ; Steps per mm
set var.jerk[var.tool]         = 600              ; Instantaneous speed change
set var.speed[var.tool]        = 6000              ; Max feedrate (mm/min)
set var.acceleration[var.tool] = 1200              ; Max acceleration (mm/s²)
set var.current[var.tool]      = 2000              ; Motor current (mA)

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
M308 S{var.sensor[var.tool][0]} T100000 R2200 B3950 H0 L0 A{"OUTPUT " ^ var.toolName}
M308 S{var.sensor[var.tool][1]} T100000 R2200 B3950 H0 L0 A{"INPUT " ^ var.toolName}

; ----------------------------------------------------------
; Fans configuration
; ----------------------------------------------------------
M106 P{var.fans[var.tool][0]} S0         H-1                       C{var.toolName ^ " Layer Fan"}
M106 P{var.fans[var.tool][1]} S1   T45   H{var.heater[var.tool]}   C{var.toolName ^ " Head Cool"}
M106 P{var.fans[var.tool][2]} S1   T-1   H-1                       C{var.toolName ^ " Extra Cool"}

; ----------------------------------------------------------
; Tool definition
; ----------------------------------------------------------
M563 P{var.tool} D{var.tool} F{var.tool} H{var.heater[var.tool]} X{var.toolMap[var.tool][0]} Y{var.toolMap[var.tool][1]} S{var.toolName ^ " Tool " ^ global.toolType[var.tool]}

; ----------------------------------------------------------
; Retraction and offsets
; ----------------------------------------------------------
M207 P{var.tool} S4.5 F{40 * 60}

G10 P{var.tool} X{var.offset[var.tool][0]}
G10 P{var.tool} Y{var.offset[var.tool][1]}
G10 P{var.tool} Z{var.offset[var.tool][2]}
G10 P{var.tool} U{var.offset[var.tool][3]}
G10 P{var.tool} R0 S0

; ----------------------------------------------------------
; External trigger
; ----------------------------------------------------------
M581 P{var.tool + 1} T{var.tool + 2} R-1
