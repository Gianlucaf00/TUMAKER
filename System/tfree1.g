; tfree1.g
;EN: called when tool 1 is released
;ES: llamado cuando se libera la herramienta 1

if move.axes[0].homed && move.axes[1].homed && move.axes[2].homed && move.axes[3].homed
	G1 U{move.axes[3].max} Z{move.axes[2].machinePosition+1} F9000			; Move
	M106 P1 S0																; Set fan
	M400																	; Wait for current moves to finish
