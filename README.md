# TUMAKER

Configurazione RepRapFirmware (Duet 3) della Tumaker NX 300 Modular: IDEX a due teste, HR (filamento) o PL (pellet).

| Cartella | Contenuto |
|---|---|
| [`System/`](System/README.md) | Configurazione e macro di sistema (`0:/sys/`) |
| [`Macros_Calibration_Bed/`](Macros_Calibration_Bed/README.md) | Macro di calibrazione del piatto |
| [`Macros_Calibrations_Tools/`](Macros_Calibrations_Tools/README.md) | Macro di configurazione e calibrazione delle teste |
| [`Sys_Slicer_Superslicer/`](Sys_Slicer_Superslicer/README.md) | Profili SuperSlicer |
| [`System_UserSTL/`](System_UserSTL/README.md) | STL di calibrazione |
| [`PostProcessing/`](PostProcessing/README.md) | Script SuperSlicer: ripasso di T1 a fine layer |
| [`DuetWebControl/`](https://github.com/Duet3D/DuetWebControl) | Sottomodulo git: sorgenti di Duet Web Control (Duet3D), branch `v3.7-dev` |

Per scaricare anche il sottomodulo: `git clone --recurse-submodules <url>`, oppure, in un clone esistente, `git submodule update --init`.
