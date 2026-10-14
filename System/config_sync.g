; ==========================================================
; Global multi-head initialization and synchronized tool setup
; ==========================================================

; ----------------------------------------------------------
; Parameters and local variables
; ----------------------------------------------------------
var syncTool = #global.toolType
var toolName = "Copy / Mirror"
var debug = false

var i = 0
var j = 0

if var.debug
	echo "syncTool       = " ^ var.syncTool
; ----------------------------------------------------------
; Remove existing synchronized (SYNC) tool definition
; ----------------------------------------------------------
if exists(tools[var.syncTool])
	M563 P{var.syncTool} D-1 F-1 H-1 S"NONE"

var CountTools = #tools

if var.debug
	echo "CountTools     = " ^ var.CountTools

; ----------------------------------------------------------
; Count total extruders across all active heads
; ----------------------------------------------------------
var CountRealTool = 0
set var.i = 0

while var.i < #tools
	if tools[var.i] != null
		set var.CountRealTool = var.CountRealTool + 1
	set var.i = var.i + 1

if var.debug
	echo "CountRealTool = " ^ var.CountRealTool

; ----------------------------------------------------------
; Count total extruders across all active heads
; ----------------------------------------------------------
var CountExtruders = 0
set var.i = 0

while var.i < #tools
	if tools[var.i] != null
		set var.CountExtruders = var.CountExtruders + #tools[var.i].extruders
	set var.i = var.i + 1

if var.debug
	echo "CountExtruders = " ^ var.CountExtruders

; ----------------------------------------------------------
; Count total heaters across all active heads
; ----------------------------------------------------------
var CountHeaters = 0
set var.i = 0

while var.i < #tools
	if tools[var.i] != null
		set var.CountHeaters = var.CountHeaters + #tools[var.i].heaters
	set var.i = var.i + 1

if var.debug
	echo "CountHeaters = " ^ var.CountHeaters

; ----------------------------------------------------------
; Count total fans across all active heads
; ----------------------------------------------------------
var CountFans = 0
set var.i = 0

while var.i < #tools
	if tools[var.i] != null
		set var.CountFans = var.CountFans + #tools[var.i].fans
	set var.i = var.i + 1

if var.debug
	echo "CountFans        = " ^ var.CountFans

; ----------------------------------------------------------
; Pre-allocate aggregated vectors
; ----------------------------------------------------------
var Extruders = {vector(var.CountExtruders, null)}
var Heaters   = {vector(var.CountHeaters, null)}
var Fans      = {vector(var.CountFans, null)}
var AxesX     = {vector(var.CountRealTool, null)}
var AxesY     = {vector(var.CountRealTool, null)}

if var.debug
	echo "Extruders vector = " ^ var.Extruders
	echo "Heaters vector   = " ^ var.Heaters
	echo "Fans vector      = " ^ var.Fans
	echo "AxesX vector     = " ^ var.AxesX
	echo "AxesY vector     = " ^ var.AxesY

; ----------------------------------------------------------
; Aggregate data from all active heads
; ----------------------------------------------------------
var eIdx = 0
var hIdx = 0
var fIdx = 0
var aIdx = 0

set var.i = 0

while var.i < #tools

	if tools[var.i] != null

		; ---- Extruders ----
		set var.j = 0
		while var.j < #tools[var.i].extruders
			set var.Extruders[var.eIdx] = tools[var.i].extruders[var.j]
			set var.eIdx = var.eIdx + 1
			set var.j = var.j + 1

		; ---- Heaters ----
		set var.j = 0
		while var.j < #tools[var.i].heaters
			set var.Heaters[var.hIdx] = tools[var.i].heaters[var.j]
			set var.hIdx = var.hIdx + 1
			set var.j = var.j + 1

		; ---- Fans ----
		set var.j = 0
		while var.j < #tools[var.i].fans
			set var.Fans[var.fIdx] = tools[var.i].fans[0]
			set var.fIdx = var.fIdx + 1
			set var.j = var.j + 1

		; ---- Axes ----
		set var.AxesX[var.aIdx] = tools[var.i].axes[0][0]
		set var.AxesY[var.aIdx] = tools[var.i].axes[1][0]
		set var.aIdx = var.aIdx + 1

	set var.i = var.i + 1

; ----------------------------------------------------------
; Debug output (optional)
; ----------------------------------------------------------
if var.debug
	echo "Extruders      = " ^ var.Extruders
	echo "Heaters        = " ^ var.Heaters
	echo "Fans           = " ^ var.Fans
	echo "AxesX          = " ^ var.AxesX
	echo "AxesY          = " ^ var.AxesY

; ----------------------------------------------------------
; Initialize shared auxiliary cooling based on active heaters
; ----------------------------------------------------------
M106 P12 S1 T80:160 C"Filter" H{var.Heaters}

; ----------------------------------------------------------
; Create synchronized (SYNC) tool for multi-head operation
; ----------------------------------------------------------
if #tools > 1
	M563 P{var.syncTool} D{var.Extruders} H{var.Heaters} F{var.Fans} X{var.AxesX} Y{var.AxesY} S{var.toolName}
	G10 P{var.syncTool} X0 Y0 Z0 U0
	G10 P{var.syncTool} R0 S0