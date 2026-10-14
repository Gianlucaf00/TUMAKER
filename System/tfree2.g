; tfree2.g
;EN: called when tool 2 is released
;ES: llamado cuando se libera la herramienta 2

if move.axes[0].homed && move.axes[1].homed && move.axes[2].homed && move.axes[3].homed
	G91																	; Set to Relative Positioning
	G1 Z1 F3600															; Move
	G90																	; Set to Absolute Positioning
	if tools[2].offsets[3] != {-move.axes[0].max}
		G10 P2 X0 Y0 Z0 U{-move.axes[0].max}							; Set workplace coordinate offset or tool offset
		M500 P10:31														; Store parameters
	G28 XU																; Home
	M579 U1																; Scale Cartesian axes
	M400																; Wait for current moves to finish
