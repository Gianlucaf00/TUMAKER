; tfree0.g
;EN: called when tool 0 is released
;ES: llamado cuando se libera la herramienta 0

if move.axes[0].homed && move.axes[1].homed && move.axes[2].homed && move.axes[3].homed
	G1 X{move.axes[0].min} Z{move.axes[2].machinePosition+1} F9000			; Move
	M106 P0 S0																; Set fan
	M400																	; Wait for current moves to finish
