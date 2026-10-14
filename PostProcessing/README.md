# PostProcessing

Script di post-processing per SuperSlicer.

## `ripassa_T1.py` – ripasso della testa destra a fine layer

Dopo ogni layer stampato dalla testa sinistra (T0), la testa destra (T1) ripercorre lo stesso percorso XY:
- **più in alto di 10 mm**: il piatto scende;
- **senza estrudere**;
- **sui tratti che T0 ha estruso** usa la stessa velocità di T0 (oppure `--path-speed`);
- **sugli spostamenti a vuoto** usa la velocità scelta con `--travel`.

Lo script inserisce nel G-code, alla fine di ogni layer:

```
M98 P"ripassa_inizio.g" Z<quota layer> D<sollevamento>
G1 X.. Y.. F..      ; percorso del layer di T0, senza E e senza Z
...
M98 P"ripassa_fine.g" F<velocità a vuoto>
```

Le due macro sono in `System/` e vanno copiate in `0:/sys/`:

| Macro | Cosa fa |
|---|---|
| `ripassa_inizio.g` | Salva la posizione di T0. Porta lo standby di T0 alla temperatura attiva, così T0 non si raffredda mentre è deselezionato. Alza Z di `D` mm, fa l'**homing di X** (testa sinistra, `homex.g`), seleziona `T1 P0` (senza eseguire tfree/tpre/tpost) e porta T1 alla quota `Z + D`. Se si supera Z massimo, la quota viene limitata. |
| `ripassa_fine.g` | Fa l'**homing di U** (testa destra, `homeu.g`), riseleziona `T0 P0`, riporta T0 al punto salvato (prima XY, poi Z) e ripristina lo standby originale di T0. |

### Configurazione in SuperSlicer
1. **Profilo stampante "Left Only"** (start `ginicioT0.g`). La testa destra deve essere configurata (`Sets up tools`) e calibrata negli offset XY: il ripasso usa gli offset di T1.
2. **Print Settings → Output options → Post-processing scripts**: inserire il percorso completo di Python e dello script, per esempio:
   ```
   "C:\Python3\python.exe" "C:\TUMAKER\PostProcessing\ripassa_T1.py" --travel 6000;
   ```
   Lo slicer aggiunge da solo, come ultimo argomento, il percorso del file G-code.

I layer vengono riconosciuti dai commenti che SuperSlicer scrive già a ogni cambio layer:
```
;LAYER_CHANGE
;Z:0.6
```
Non serve aggiungere niente nei campi Custom G-code.

### Uso manuale
Si può anche esportare il G-code senza post-processing e poi lanciare lo script a mano. Il file viene modificato direttamente, quindi conviene lavorare su una copia:
```
python3 ripassa_T1.py --travel 6000 "pezzo.gcode"
```

### Opzioni
| Opzione | Significato | Default |
|---|---|---|
| `--travel` | Velocità di T1 negli spostamenti a vuoto (mm/min) | obbligatoria |
| `--dz` | Quanto T1 passa più in alto rispetto al layer (mm) | 10 |
| `--path-speed` | Velocità di T1 sui tratti estrusi da T0 (mm/min) | velocità originale di T0 |

Lo script si ferma con un errore se:
- non trova nessun commento `;LAYER_CHANGE`;
- non trova la fine della stampa (`M98 P"gfinal.g"` o `;RIPASSA_END`);
- il file è già stato elaborato;
- ci sono movimenti XY relativi (`G91`).

### Limiti
- **Solo T0:** vengono copiati solo i movimenti eseguiti con T0 selezionato. La linea di spurgo e tutto ciò che precede il primo layer non vengono copiati.
- **Feeder pellet di T0:** durante il ripasso `daemon.g` non ricarica il feeder di T0, perché controlla solo il tool selezionato.
- **Tempo di stampa:** per ogni layer si aggiungono il ripasso, i due homing e i movimenti in Z. Gli homing usano le velocità di `homex.g` e `homeu.g`, non `--travel`.
- **Collaudo:** le macro non sono state provate sulla macchina. Il primo test va fatto senza pezzo e con le mani vicine all'arresto di emergenza.
