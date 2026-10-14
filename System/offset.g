; offset.g
; Called from some offset calibration Macro

M291 R"Current Offset" P{"Your current offset is X" ^tools[1].offsets[3]^ " Y"^tools[1].offsets[1]^" sure you want to change it?"} S3
M291 R"¡¡¡ATTENTION!!!" P"The heads will remain hot until the process is completely finished." S2

var repetir = 0
var espera = 0
var xmin = move.axes[0].min
var ymin = move.axes[1].min

while var.repetir = 0
  if state.status != "processing"
    if var.espera = 0
      set var.espera = 1
      M291 R"Ready to print" P"Remove the pieces before proceeding and prepare the base." S2
      M23 {job.lastFileName}
      M24
      M400
  if state.status != "processing"
    M300 S300 P1000
    G4 S1
    M300 S1000 P1000
    G4 S1
    G28
    M208 S1 X{-(move.axes[0].max/2)} Y{-(move.axes[1].max/2)}
    G0 F3000 X{move.axes[0].max/2} Y{move.axes[1].max/2} U{move.axes[3].max} Z150
    G92 X0 Y0
    M291 R"Modify your Offset X" P"If joined on the right the value must be negative. (use web control)" S2 X1
    M291 R"Modify your Offset Y" P"If joined at the back, the value must be negative. (use web control)" S2 Y1
    if {(move.axes[0].userPosition) + (move.axes[1].userPosition)} = 0
      if {(move.axes[0].userPosition) - (move.axes[1].userPosition)} = 0
        set var.repetir = 1
    G10 P1 Y{move.axes[1].userPosition}+{tools[1].offsets[1]} U{move.axes[0].userPosition}+{tools[1].offsets[3]}
    M291 R"Current Offset" P{"Your current offset is X" ^tools[1].offsets[3]^ " Y"^tools[1].offsets[1]^" "} S2
    M208 S1 X{var.xmin} Y{var.ymin}
    set var.espera = 0
    M400

G28 XY
M140 S0
M84
M291 R"FINISHED" P"The calibration has been done" S2
M42 P3 S0
M500 P10:31
M400
