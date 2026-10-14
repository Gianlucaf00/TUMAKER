; Called in Simplify3D in Dual Extruder M98 startup script P "ginicio#.g".

M42 P3 S1                                                                                                ; Set fan
M582 T2                                                                                                    ; Check external trigger
M582 T3                                                                                                    ; Check external trigger
G21      
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                                                                                  ; Metric values
; 	QUESTO è L'ORIGINALE !!!!!!!!!!!!!!!!!!!
;T0 P0                                                                                                      ; Select Tool
;if global.toolType[0] = "PL"
;	M703                                                                                                      ; Configure filament
;T1 P0                                                                                                      ; Select Tool
;if global.toolType[1] = "PL"
;	M703                                                                                                      ; Configure filament
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;		QUESTO è MODIFICATO
T0 P0                                                                                                      ; Select Tool
if global.toolType[0] = "PL"
	M703                                                                                                      ; Configure filament
T1 P0                                                                                                      ; Select Tool
if global.toolType[1] = "PL"
	M703  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
if global.toolType[0] = "HR" && global.toolType[1] = "HR"
	G10 P2 S{heat.heaters[1].active,heat.heaters[3].active}                                                   ; Tool Temperature Setting
	G10 P2 R{heat.heaters[1].standby,heat.heaters[3].standby}                                                 ; Tool Temperature Setting
if global.toolType[0] = "HR" && global.toolType[1] = "PL"
	G10 P2 S{heat.heaters[1].active,heat.heaters[3].active,heat.heaters[4].active}                            ; Tool Temperature Setting
	G10 P2 R{heat.heaters[1].standby,heat.heaters[3].standby,heat.heaters[4].standby}                         ; Tool Temperature Setting
if global.toolType[0] = "PL" && global.toolType[1] = "HR"
	G10 P2 S{heat.heaters[1].active,heat.heaters[2].active,heat.heaters[3].active}                            ; Tool Temperature Setting
	G10 P2 R{heat.heaters[1].standby,heat.heaters[2].standby,heat.heaters[3].standby}                         ; Tool Temperature Setting
if global.toolType[0] = "PL" && global.toolType[1] = "PL"
	G10 P2 S{heat.heaters[1].active,heat.heaters[2].active,heat.heaters[3].active,heat.heaters[4].active}     ; Tool Temperature Setting
	G10 P2 R{heat.heaters[1].standby,heat.heaters[2].standby,heat.heaters[3].standby,heat.heaters[4].standby} ; Tool Temperature Setting
M579 U1                                                                                                    ; Scale Cartesian axes
G28                                                                                                        ; Home all
M567 P2 E1:1                                                                                               ; Set tool mix ratios
G10 P2 X{tools[0].offsets[0]} Y0 U{-global.area[0]+tools[1].offsets[3]}                                      ; Set workplace coordinate offset or tool offset
T2 P0                                                                                                      ; Select Tool
M190                                                                                                       ; Wait
M290 R0 S0                                                                                                 ; Baby stepping
M98 P"0:/data/micropaso"                                                                                   ; Call Macro
M400                                                                                                       ; Wait	
M290 R1 S{global.data[0]}                                                                                    ; Baby stepping
M400                                                                                                       ; Wait
G0 Z10 F3600                                                                                               ; Move
M116 P2                                                                                                    ; Wait

;Individual script
M579 U-1                                                                                                   ; Scale Cartesian axes
G1 X-10 Y-20 Z0.4 ; cambiato z a 0.4                                                                                          ; Move
G1 Y15 E35 F180                                                                                            ; Move
G92 E0                                                                                                     ; Set Position
T0                                                                                                         ; Select Tool