# Macros_Calibration_Bed (`0:/macros/Calibrations/Bed/`)

Macro per livellare il piatto e gestire la compensazione software (mesh).

| Macro | Funzione |
|---|---|
| `Digital compensation` | Esegue `G32` (cioè `bed.g`): homing e mesh probing con il BLTouch, che genera `heightmap.csv`. Poi parcheggia le teste. Non si può usare durante la stampa o la pausa. |
| `Activate digital compensation` | Attiva la mappa altezze (`G29 S1`) e scrive `G29 S1` in `0:/data/height_map`, così resta attiva al riavvio. |
| `Deactivate digital compensation` | Disattiva la mappa altezze (`G29 S2`) e salva la scelta in `0:/data/height_map`. |
| `Guided manual calibration` | Livellamento meccanico guidato. Tasta una griglia di punti (3×3 di default oppure presa da `0:/data/CalibrationPoints`) con `G30 S-1`. Se lo scostamento non è tra 0 e 9 centesimi, chiede di regolare il dado e ripetere (continua / prossimo / annulla). Alla fine ripristina lo stato della compensazione precedente e azzera il babystep in `0:/data/micropaso`. |
