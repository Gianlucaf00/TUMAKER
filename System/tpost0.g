; tpost0.g
;EN: called after tool 0 has been selected
;ES: llamado despues de que la herramienta 0 ha sido seleccionada

if move.axes[0].homed && move.axes[1].homed && move.axes[2].homed && move.axes[3].homed
	M116 P0 S10				; Wait
	G1 R2 X0 Y0 Z0 F9000		; Return to the coordinates stored in restore point
	M106 R2					; Set fan
	M400						; Wait for current moves to finish
