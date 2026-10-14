; stop.g
; If present, it is executed when a print job ends normally with an M0 command at the end of the print job.

var i = 0

T0								; Select tool
set var.i = 0
while var.i < #tools
	if exists(tools[var.i])
		G10 P{var.i} S0 R0		; Head Off
	set var.i = var.i + 1
M140 S0							; Bed Off
if heat.chamberHeaters[0] != -1
	M141 S0
M106 P0 S0						; Fan Off
if exists(fans[1])
	M106 P1 S0						; Fan Off
M42 P3 S0						; Fan Off
M84								; Stop idle hold
M400							; Wait for current moves to finish
