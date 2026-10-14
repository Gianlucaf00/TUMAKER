; homeall.g
; call home all the axes

M42 P3 S1                                                                                                                ; Set fan

G91                                                                                                                        ; Set to Relative Positioning
G1 H1 F6000 X{-move.axes[0].max*2} Y{-move.axes[1].max*2} U{move.axes[3].max*2} Z{move.axes[2].max*2}       ; Move
G1 H2 F3000 X2 Y2 U-2 Z-2                                                                                                ; Move
G1 H1 F60 X{-move.axes[0].max/2} Y{-move.axes[1].max/2} U{move.axes[3].max/2} Z{move.axes[2].max/2}                    ; Move
G90                                                                                                                        ; Set to Absolute Positioning
M400                                                                                                                    ; Wait for current moves to finish
