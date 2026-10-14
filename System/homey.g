; homey.g
; call to the house of the Y-axis

M42 P3 S1                                                ; Set fan

G91                                                        ; Set to Relative Positioning
G1 H1 Z1 F3000                                            ; Move
G1 H1 F6000 Y{-move.axes[1].max*2}                        ; Move
G1 H2 Y5 F6000                                            ; Move
G1 H1 F360 Y{-move.axes[1].max/2}                        ; Move
G1 H2 Z-1 F3000                                            ; Move
G90                                                        ; Set to Absolute Positioning
M400                                                    ; Wait for current moves to finish
