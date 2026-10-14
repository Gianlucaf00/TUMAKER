; homex.g
; call to the house of the X-axis

M42 P3 S1                                                ; Set fan

G91                                                        ; Set to Relative Positioning
G1 H1 Z1 F3000                                            ; Move
G1 H1 X{-move.axes[0].max*2} F6000                       ; Move
G1 H2 X5 F6000                                            ; Move
G1 H1 X{-move.axes[0].max/2} F360                        ; Move
G1 H2 Z-1 F3000                                            ; Move
G90                                                        ; Set to Absolute Positioning
M400                                                    ; Wait for current moves to finish
