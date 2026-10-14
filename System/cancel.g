; stop.g
; If present, it is executed when you cancel a paused print.

var i = 0

T0																													; Select tool
set var.i = 0
while var.i < #tools
	if exists(tools[var.i])
		G10 P{var.i} S0 R0																							; Head Off
	set var.i = var.i + 1
M140 S0																												; Bed Off
if heat.chamberHeaters[0] != -1
	M141 S0
M106 P0 S0																											; Fan Off
if exists(fans[1])
	M106 P1 S0																										; Fan Off
M42 P3 S0																											; Fan Off

if fileexists("0:/sys/autopower.g")
  M30 "0:/sys/autopower.g" ;This file is filled only in case of power failure

M98 P"0:/data/R_cancel"																								; Call Macro/Subprogram

G0 X{move.axes[0].min+1} Y{move.axes[1].min+1} U{move.axes[3].max-1} Z{move.axes[2].max-1} F{move.axes[0].speed/2}	; Move
G28																													; Home
M84																													; Stop idle hold
M400																												; Wait for current moves to finish
