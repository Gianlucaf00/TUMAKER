# System (`0:/sys/`)

File di configurazione e macro di sistema per la Tumaker NX 300 Modular (IDEX, Duet 3 + RepRapFirmware 3.6.x).
Alcuni file richiamati qui risiedono in `0:/data/` e **non sono presenti nel repository** (es. `HardwareMapping.g`, `selecTool`, `ActiveFeeder`, `micropaso`, `temp`, `R_end`, `R_cancel`, `height_map`, `MaterialSensorT0/1`).

## Configurazione

| File | Funzione |
|---|---|
| `config.g` | Configurazione principale: rete, variabili globali (`toolType`, `area`, `i18n`, `ContPellets`, `DaemonActive`), attesa schede di espansione, driver e mappatura assi (X = testa sinistra, U = testa destra, Y doppio motore, Z tre motori), limiti, finecorsa, riscaldatori H0–H4, ventole, uscite GPIO, sonda BLTouch e mesh 5×5. Chiama `config_<tipo>.g` per ogni testa e poi `config_sync.g`. Alla fine carica `config-override.g` (`M501`), `0:/data/height_map` e, se presente, `autopower.g`. |
| `config.g.bak` | Copia di backup, identica a `config.g`. |
| `config_HR.g` | Configura una testa **HR** (filamento): 397 step/mm, 1 riscaldatore, ventole, definizione tool `M563`, retrazione firmware 0.4 mm, offset, trigger sensore filamento attivo (`M581 … R1`). Parametri: `X` = indice tool, `Y` = lato ("Left"/"Right"). |
| `config_PL.g` | Configura una testa **PL** (pellet): 250 step/mm, 2000 mA, 2 zone di riscaldamento (INPUT/OUTPUT), retrazione 4.5 mm, trigger disattivato (`R-1`), il caricamento è gestito da `daemon.g`. |
| `config_.g` | Testa assente (`""`): azzera sensori/ventole e disattiva il tool. |
| `config_sync.g` | Crea il tool sincronizzato **T2 "Copy / Mirror"** unendo estrusori, riscaldatori, ventole e assi X+U delle teste attive; configura la ventola filtro (F12) legata a tutti i riscaldatori. |
| `config-override.g` | Generato da `M500`: modelli termici (`M307`), parametri sonda, offset dei tool, coordinate di lavoro. Non modificare a mano. |
| `dwc-settings.json` | Impostazioni dell'interfaccia web Duet Web Control. |
| `version.g` | Imposta modello, data e ora della versione di configurazione in `global.data`. |

## Homing e piatto

| File | Funzione |
|---|---|
| `homeall.g` | Homing di X, Y, U, Z insieme: avvicinamento veloce, arretramento, avvicinamento lento. |
| `homex.g` / `homey.g` / `homeu.g` / `homez.g` | Homing del singolo asse (X e Y verso il minimo, U e Z verso il massimo). |
| `bed.g` | Eseguito da `G32`: disattiva la compensazione, fa l'homing e il mesh probing `G29` (non durante la stampa). |
| `deployprobe.g` / `retractprobe.g` | Estensione (`M280 P0 S10`) e ritiro (`M280 P0 S90`) del pin del BLTouch. |
| `heightmap.csv` | Mappa altezze 5×5 generata da `G29`. |

## Cambio utensile

| File | Funzione |
|---|---|
| `tpre0/1/2.g` | Prima della selezione del tool: vuoti (solo commenti). |
| `tfree0.g` | Rilascio T0: parcheggia X al minimo e alza Z di 1 mm, spegne la ventola layer. |
| `tfree1.g` | Rilascio T1: parcheggia U al massimo e alza Z di 1 mm, spegne la ventola layer. |
| `tfree2.g` | Rilascio T2: ripristina l'offset U di T2, fa l'homing di X e U, riporta `M579 U1` (annulla lo specchio). |
| `tpost0.g` / `tpost1.g` | Dopo la selezione: attende la temperatura (`M116`) e torna alla posizione salvata (`G1 R2`). |
| `tpost2.g` | Vuoto. |

## Inizio e fine stampa (chiamati dallo slicer)

| File | Modalità |
|---|---|
| `ginicioT0.g` | Solo testa sinistra: selezione T0, `M703` se PL, piatto, homing, babystep da `0:/data/micropaso`, linea di spurgo. |
| `ginicioT1.g` | Solo testa destra: come sopra con T1. |
| `ginicioDUAL.g` | Due teste / due materiali: imposta le temperature di T2, homing, spurgo con entrambe le teste, termina selezionando T0. |
| `ginicioCOPY.g` | Copia: T2 con miscela `M567 E1:1` e offset U = −area/2, le due teste stampano due copie affiancate. |
| `ginicioMIRROR.g` | Specchio: T2 con `M579 U-1` (asse U invertito). |
| `gfinal.g` | Fine stampa: retrazione, spegne riscaldatori e ventole, cancella `autopower.g`, salva il babystep in `0:/data/micropaso`, homing e motori off. |

## Pausa, ripresa, annullamento, interruzione di corrente

| File | Funzione |
|---|---|
| `pause.g` | Retrae, alza Z, parcheggia le teste, salva le temperature (`temp_recording.g`) e **spegne i riscaldatori**. |
| `temp_recording.g` | Scrive in `0:/data/temp` i comandi `G10` con le temperature attive/standby di T0, T1, T2. |
| `resume.g` | Ricarica le temperature da `0:/data/temp`, attende il riscaldamento, torna alla posizione di pausa e annulla la retrazione. |
| `cancel.g` | Annullamento da pausa: spegne tutto, cancella `autopower.g`, esegue `0:/data/R_cancel`, homing. |
| `stop.g` | Fine con `M0`: spegne riscaldatori, piatto, camera e ventole. |
| `autosave.g` | Chiamato da `M911` alla mancanza di tensione: scrive `autopower.g` (riscalda il piatto, mostra un messaggio, lancia `M916`). |
| `resurrect-prologue.g` | Eseguito da `M916`: ricarica la configurazione materiale delle teste PL (`M703`), riseleziona il tool, attende le temperature, homing. |
| `sleep.g` | Eseguito con `M1`: vuoto. |

## Sensori e alimentatore di pellet

| File | Funzione |
|---|---|
| `trigger2.g` / `trigger3.g` | Trigger del sensore materiale di T0 / T1: se il materiale manca, pausa, scarico (`M702`) e messaggio; altrimenti un beep. |
| `daemon.g` | Eseguito ciclicamente dal firmware. In stampa, per ogni testa PL con feeder attivo e sensore "vuoto", chiama `CheckFeeder.g`. A macchina ferma esegue `Chamber_AutoPreheat.g` se esiste. |
| `CheckFeeder.g` | Un tentativo di ricarica durante la stampa (sul secondo sistema di movimento, `M596 P1`): accende l'uscita "Duo Power" per 5 s finché il sensore conferma i pellet. Dopo 10 tentativi falliti mette in pausa. Attesa di 20 s tra i tentativi. |
| `ChargeFeeder.g` | Caricamento manuale dei pellet (non in stampa): fino a 10 cicli da 10 s, con messaggio di esito. |

## Carico / scarico materiale

| File | Funzione |
|---|---|
| `F_carga.g` | Carico: attende la temperatura, estrude 50 mm e retrae. |
| `F_descarga.g` | Scarico: `M703`, attende la temperatura, estrude 35 mm, poi retrae (`G10` + 55 mm) e spegne la testa. |
| `filaments.csv` | Materiale assegnato a ogni estrusore (attualmente pellet Ti6Al4V su E0 e PA11 su E1). |

## Utilità, messaggi e collaudo

| File | Funzione |
|---|---|
| `messages.g` | Dizionario dei messaggi in 10 lingue: in base a `global.i18n[1]` (ID messaggio) e `global.i18n[0]` (lingua) imposta titolo, testo e pulsanti. |
| `mensaje.g` | Finestra di conferma `M291` usata da `test.g`; imposta `global.data[0] = true` se l'utente conferma. |
| `append.g` | Aggiunge il valore `V` all'array `global.list` generando ed eseguendo un file temporaneo. |
| `offset.g` | Vecchia procedura di calibrazione offset X/Y di T1 tramite stampa e regolazione manuale da interfaccia web. |
| `test.g` | Collaudo di fabbrica (in spagnolo): versioni firmware, rete WiFi, tipo di teste, finecorsa, ventole, riscaldatori, movimenti; scrive il report in `test.txt`. **Contiene credenziali WiFi in chiaro.** |
