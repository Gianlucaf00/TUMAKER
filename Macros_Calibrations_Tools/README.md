# Macros_Calibrations_Tools (`0:/macros/Calibrations/Tools/`)

Macro per configurare le teste e calibrare gli offset tra testa sinistra (T0, asse X) e testa destra (T1, asse U).
Nessuna macro si può usare durante la stampa o la pausa.

| Macro | Funzione |
|---|---|
| `Sets up tools` | Chiede quale testa è montata su ogni lato (HR = filamento, PL = pellet, oppure nessuna per la destra). Aggiorna `global.toolType`, disattiva il feeder pellet (`ContPellets = -1`), riesegue `config_<tipo>.g` e `config_sync.g`. Salva la scelta in `0:/data/selecTool` e `0:/data/ActiveFeeder`, poi chiama `M500`. Consiglia di ripetere la calibrazione dell'altezza. |
| `Guided height calibration` | Allineamento meccanico in Z delle teste. Porta ciascuna testa a Z0 al centro del piatto e guida l'utente ad allentare le viti di regolazione (la testa appoggia sul piatto) e a stringerle di nuovo. Alla fine consiglia di ricalibrare gli offset XY. |
| `Calibration XY (Camera)` | Calibrazione XY con telecamera. Si centra T0 su un riferimento (posizione salvata in `0:/data/PosCal_XY`). Poi si porta T1 sullo stesso punto e la differenza viene salvata come offset di T1 (`G10 P1 Y… U…`). Ogni passo prevede la verifica dopo un nuovo homing. Salva con `M500`. |
| `Set XY Offset` | Inserimento manuale dei valori di offset X (asse U) e Y di T1, poi salvataggio con `M500`. |
| `Reset XY Offset` | Mostra l'offset attuale di T1 e, dopo conferma, lo azzera (`G10 P1 X0 Y0 Z0 U0`) e salva con `M500`. |

Per una verifica stampata degli offset si possono usare gli STL in `System_UserSTL/`.
