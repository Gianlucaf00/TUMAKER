; bed.g
; Call to realise automatic bed compensation via G32

if state.status != "processing"
	if state.status != "paused"
		G29 S2						; Disable mesh bed compensation
		G28							; Home all
		M561						; Set Identity Transform
		G29							; Mesh bed probe
		M400						; Wait for current moves to finish
