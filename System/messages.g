; Mensajes traducidos en: ES (Español), EN (Inglés), DE (Alemán), FR (Francés), IT (Italiano), PT (Portugués), NL (Holandés), ZH (Chino Simplificado), RU (Ruso), JA (Japonés)
; Translated messages in: ES (Spanish), EN (English), DE (German), FR (French), IT (Italian), PT (Portuguese), NL (Dutch), ZH (Simplified Chinese), RU (Russian), JA (Japanese)
; Übersetzte Nachrichten in: ES (Spanisch), EN (Englisch), DE (Deutsch), FR (Französisch), IT (Italienisch), PT (Portugiesisch), NL (Niederländisch), ZH (Vereinfachtes Chinesisch), RU (Russisch), JA (Japanisch)
; Messages traduits en : ES (Espagnol), EN (Anglais), DE (Allemand), FR (Français), IT (Italien), PT (Portugais), NL (Néerlandais), ZH (Chinois simplifié), RU (Russe), JA (Japonais)
; Messaggi tradotti in: ES (Spagnolo), EN (Inglese), DE (Tedesco), FR (Francese), IT (Italiano), PT (Portoghese), NL (Olandese), ZH (Cinese Semplificato), RU (Russo), JA (Giapponese)
; Mensagens traduzidas em: ES (Espanhol), EN (Inglês), DE (Alemão), FR (Francês), IT (Italiano), PT (Português), NL (Holandês), ZH (Chinês Simplificado), RU (Russo), JA (Japonês)
; Vertaalde berichten in: ES (Spaans), EN (Engels), DE (Duits), FR (Frans), IT (Italiaans), PT (Portugees), NL (Nederlands), ZH (Vereenvoudigd Chinees), RU (Russisch), JA (Japans)
; 翻译的消息：ES（西班牙语），EN（英语），DE（德语），FR（法语），IT（意大利语），PT（葡萄牙语），NL（荷兰语），ZH（简体中文），RU（俄语），JA（日语）
; Переведенные сообщения на: ES (испанский), EN (английский), DE (немецкий), FR (французский), IT (итальянский), PT (португальский), NL (голландский), ZH (упрощенный китайский), RU (русский), JA (японский)
; 翻訳されたメッセージ：ES（スペイン語）、EN（英語）、DE（ドイツ語）、FR（フランス語）、IT（イタリア語）、PT（ポルトガル語）、NL（オランダ語）、ZH（簡体字中国語）、RU（ロシア語）、JA（日本語）

set global.i18n[2] = "Language error"
set global.i18n[3] = "language error consult with your trusted technician"
;set global.i18n[4] = {"error1", "error2"}
var receivedValue = exists(param.X) ? param.X : ""

;0:/macros/Sets material parameters

if global.i18n[1] == "macros_Sets material parameters_01"
	;EN
	set global.i18n[3] = "The material parameters have been set"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Los parámetros del material se han establecido"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die Materialparameter wurden festgelegt"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Les paramètres du matériau ont été définis"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "I parametri del materiale sono stati impostati"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Os parâmetros do material foram definidos"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "De materiaalparameters zijn ingesteld"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "材料参数已设置"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Параметры материала установлены"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "材料パラメータが設定されました"
	M99

;if state.status = "processing" || state.status = "paused"

if global.i18n[1] == "status_check"
	;EN
	set global.i18n[3] = {"Cannot be used during "^state.status}
	if global.i18n[0] == "ES"
		set global.i18n[3] = {"No se puede usar durante "^state.status}
	if global.i18n[0] == "DE"
		set global.i18n[3] = {"Kann während "^state.status^" nicht verwendet werden"}
	if global.i18n[0] == "FR"
		set global.i18n[3] = {"Ne peut pas être utilisé pendant "^state.status}
	if global.i18n[0] == "IT"
		set global.i18n[3] = {"Non può essere usato durante "^state.status}
	if global.i18n[0] == "PT"
		set global.i18n[3] = {"Não pode ser usado durante "^state.status}
	if global.i18n[0] == "NL"
		set global.i18n[3] = {"Kan niet worden gebruikt tijdens "^state.status}
	if global.i18n[0] == "ZH"
		set global.i18n[3] = {"在 "^state.status^" 期间无法使用"}
	if global.i18n[0] == "RU"
		set global.i18n[3] = {"Нельзя использовать во время "^state.status}
	if global.i18n[0] == "JA"
		set global.i18n[3] = {" "^state.status^" 中は使用できません"}
	M99
	

;0:/macros_Calibrations_Bed_Guided manual calibration

if global.i18n[1] == "macros_Calibrations_Bed_Guided manual calibration_01"
	;EN
	set global.i18n[2] = {"Position "^global.data[0]}
	set global.i18n[3] = {"A difference of "^(global.data[1])^" hundredths has been detected. It must be between 0 and 9 hundredths. Adjust the nut and press continue."}
	set global.i18n[4] = {"continue","next","cancel"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {"Posición "^global.data[0]}
		set global.i18n[3] = {"Se ha detectado una diferencia de "^(global.data[1])^" centésimas. Debe estar entre 0 y 9 centésimas. Ajusta la tuerca y presiona continuar."}
		set global.i18n[4] = {"continuar","siguiente","cancelar"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {"Position "^global.data[0]}
		set global.i18n[3] = {"Eine Abweichung von "^(global.data[1])^" Hundertstel wurde erkannt. Sie muss zwischen 0 und 9 Hundertstel liegen. Justieren Sie die Mutter und drücken Sie 'fortsetzen'."}
		set global.i18n[4] = {"fortsetzen","nächste","abbrechen"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {"Position "^global.data[0]}
		set global.i18n[3] = {"Une différence de "^(global.data[1])^" centièmes a été détectée. Elle doit être comprise entre 0 et 9 centièmes. Ajustez l'écrou et appuyez sur continuer."}
		set global.i18n[4] = {"continuer","suivant","annuler"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {"Posizione "^global.data[0]}
		set global.i18n[3] = {"È stata rilevata una differenza di "^(global.data[1])^" centesimi. Deve essere tra 0 e 9 centesimi. Regola il dado e premi continua."}
		set global.i18n[4] = {"continua","successivo","annulla"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {"Posição "^global.data[0]}
		set global.i18n[3] = {"Foi detectada uma diferença de "^(global.data[1])^" centésimos. Deve estar entre 0 e 9 centésimos. Ajuste a porca e pressione continuar."}
		set global.i18n[4] = {"continuar","seguinte","cancelar"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {"Positie "^global.data[0]}
		set global.i18n[3] = {"Er is een verschil van "^(global.data[1])^" honderdsten gedetecteerd. Dit moet tussen 0 en 9 liggen. Stel de moer af en druk op doorgaan."}
		set global.i18n[4] = {"doorgaan","volgende","annuleren"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {"位置 "^global.data[0]}
		set global.i18n[3] = {"检测到 "^(global.data[1])^" 个百分之一的差异。应在 0 到 9 之间。调整螺母并按“继续”。"}
		set global.i18n[4] = {"继续","下一个","取消"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {"Позиция "^global.data[0]}
		set global.i18n[3] = {"Обнаружено отклонение на "^(global.data[1])^" сотых. Оно должно быть между 0 и 9. Отрегулируйте гайку и нажмите 'продолжить'."}
		set global.i18n[4] = {"продолжить","следующий","отмена"}
	M99


if global.i18n[1] == "macros_Calibrations_Bed_Guided manual calibration_02"
	;EN
	set global.i18n[2] = "END"
	set global.i18n[3] = "If necessary, do it twice"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "FIN"
		set global.i18n[3] = "Si es necesario, hazlo dos veces"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "ENDE"
		set global.i18n[3] = "Falls nötig, wiederholen Sie es zweimal"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "FIN"
		set global.i18n[3] = "Si nécessaire, faites-le deux fois"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "FINE"
		set global.i18n[3] = "Se necessario, fallo due volte"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "FIM"
		set global.i18n[3] = "Se necessário, faça duas vezes"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "EIND"
		set global.i18n[3] = "Indien nodig, doe het twee keer"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "结束"
		set global.i18n[3] = "如有必要，执行两次"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "КОНЕЦ"
		set global.i18n[3] = "При необходимости сделайте это дважды"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "終了"
		set global.i18n[3] = "必要であれば、2回行ってください"
	M99


if global.i18n[1] == "macros_Calibrations_Bed_Guided manual calibration_03"
	;EN
	set global.i18n[2] = "Attention"
	set global.i18n[3] = "This procedure must be done without the print bed."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Atención"
		set global.i18n[3] = "Este procedimiento debe realizarse sin la base de impresión."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Achtung"
		set global.i18n[3] = "Dieser Vorgang muss ohne das Druckbett durchgeführt werden."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Attention"
		set global.i18n[3] = "Cette procédure doit être effectuée sans le plateau d'impression."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Attenzione"
		set global.i18n[3] = "Questa procedura deve essere eseguita senza il piano di stampa."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Atenção"
		set global.i18n[3] = "Este procedimento deve ser feito sem a base de impressão."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Let op"
		set global.i18n[3] = "Deze procedure moet worden uitgevoerd zonder het printbed."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "注意"
		set global.i18n[3] = "此操作必须在没有打印床的情况下进行。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Внимание"
		set global.i18n[3] = "Эта процедура должна выполняться без печатного стола."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "注意"
		set global.i18n[3] = "この手順はプリントベッドなしで行ってください。"
	M99


if global.i18n[1] == "macros_Calibrations_Bed_Guided manual calibration_04"
	;EN
	set global.i18n[2] = "Thickness"
	set global.i18n[3] = "Enter the thickness of the removed print bed (in mm)."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Espesor"
		set global.i18n[3] = "Indique el espesor de la base de impresión retirada (en mm)."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Dicke"
		set global.i18n[3] = "Geben Sie die Dicke des entfernten Druckbetts ein (in mm)."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Épaisseur"
		set global.i18n[3] = "Indiquez l'épaisseur du plateau d'impression retiré (en mm)."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Spessore"
		set global.i18n[3] = "Indicare lo spessore del piano di stampa rimosso (in mm)."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Espessura"
		set global.i18n[3] = "Indique a espessura da base de impressão removida (em mm)."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Dikte"
		set global.i18n[3] = "Voer de dikte van het verwijderde printbed in (in mm)."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "厚度"
		set global.i18n[3] = "请输入移除的打印床厚度（毫米）。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Толщина"
		set global.i18n[3] = "Укажите толщину снятого печатного стола (в мм)."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "厚さ"
		set global.i18n[3] = "取り外したプリントベッドの厚さを入力してください（mm単位）。"
	M99


;0:/macros/Calibrations/Bed/Activate digital compensation

if global.i18n[1] == "macros_Calibrations_Bed_Activate digital compensation_01"
	;EN
	set global.i18n[3] = "Digital Calibration is active"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "La calibración digital está activa"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die digitale Kalibrierung ist aktiv"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "La calibration numérique est active"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "La calibrazione digitale è attiva"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "A calibração digital está ativa"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Digitale kalibratie is actief"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "数字校准已激活"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Цифровая калибровка активна"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "デジタルキャリブレーションが有効です"
	M99


;0:/macros/Calibrations/Bed/Deactivate digital compensation

if global.i18n[1] == "macros_Calibrations_Bed_Deactivate digital compensation_01"
	;EN
	set global.i18n[3] = "Digital Calibration is deactivated"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "La calibración digital está desactivada"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die digitale Kalibrierung ist deaktiviert"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "La calibration numérique est désactivée"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "La calibrazione digitale è disattivata"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "A calibração digital está desativada"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Digitale kalibratie is gedeactiveerd"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "数字校准已停用"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Цифровая калибровка отключена"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "デジタルキャリブレーションが無効です"
	M99


;0:/macros/Calibrations/Tools/Calibration XY (Camera)

if global.i18n[1] == "macros_Calibrations_Tools_Calibration XY (Camera)_01"
	;EN
	set global.i18n[2] = "Center Tool 0"
	set global.i18n[3] = "Access to the <a href=""https://emberprototypes.github.io/"" target=""_blank"">camera</a> to position the tool"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Centrar Herramienta 0"
		set global.i18n[3] = "Accede a la <a href=""https://emberprototypes.github.io/"" target=""_blank"">cámara</a> para posicionar la herramienta"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Werkzeug 0 zentrieren"
		set global.i18n[3] = "Greifen Sie auf die <a href=""https://emberprototypes.github.io/"" target=""_blank"">Kamera</a> zu, um das Werkzeug zu positionieren"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Centrer l'outil 0"
		set global.i18n[3] = "Accédez à la <a href=""https://emberprototypes.github.io/"" target=""_blank"">caméra</a> pour positionner l'outil"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Centrare Utensile 0"
		set global.i18n[3] = "Accedi alla <a href=""https://emberprototypes.github.io/"" target=""_blank"">fotocamera</a> per posizionare l'utensile"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Centralizar Ferramenta 0"
		set global.i18n[3] = "Acesse a <a href=""https://emberprototypes.github.io/"" target=""_blank"">câmera</a> para posicionar a ferramenta"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Centreer Gereedschap 0"
		set global.i18n[3] = "Toegang tot de <a href=""https://emberprototypes.github.io/"" target=""_blank"">camera</a> om het gereedschap te positioneren"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "居中工具 0"
		set global.i18n[3] = "访问 <a href=""https://emberprototypes.github.io/"" target=""_blank"">相机</a> 以定位工具"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Центрировать инструмент 0"
		set global.i18n[3] = "Доступ к <a href=""https://emberprototypes.github.io/"" target=""_blank"">камере</a> для позиционирования инструмента"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ツール 0 のセンター調整"
		set global.i18n[3] = "<a href=""https://emberprototypes.github.io/"" target=""_blank"">カメラ</a>カメラ</a>にアクセスしてツールを配置してください"
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Calibration XY (Camera)_02"
	;EN
	set global.i18n[2] = "Verification"
	set global.i18n[3] = "Make sure that the position is correct before proceeding."
	set global.i18n[4] = {"Readjust","Recheck","Continue"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Verificación"
		set global.i18n[3] = "Asegúrate de que la posición sea correcta antes de continuar."
		set global.i18n[4] = {"Reajustar","Revisar nuevamente","Continuar"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Überprüfung"
		set global.i18n[3] = "Stellen Sie sicher, dass die Position korrekt ist, bevor Sie fortfahren."
		set global.i18n[4] = {"Nachjustieren","Erneut prüfen","Fortfahren"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Vérification"
		set global.i18n[3] = "Assurez-vous que la position est correcte avant de continuer."
		set global.i18n[4] = {"Réajuster","Revoir","Continuer"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Verifica"
		set global.i18n[3] = "Assicurati che la posizione sia corretta prima di procedere."
		set global.i18n[4] = {"Riaggiusta","Ricontrolla","Continua"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Verificação"
		set global.i18n[3] = "Certifique-se de que a posição está correta antes de prosseguir."
		set global.i18n[4] = {"Reajustar","Rever","Continuar"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Verificatie"
		set global.i18n[3] = "Zorg ervoor dat de positie correct is voordat u doorgaat."
		set global.i18n[4] = {"Aanpassen","Opnieuw controleren","Doorgaan"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "验证"
		set global.i18n[3] = "在继续之前确保位置正确。"
		set global.i18n[4] = {"重新调整","重新检查","继续"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Проверка"
		set global.i18n[3] = "Убедитесь, что позиция правильная, прежде чем продолжить."
		set global.i18n[4] = {"Подкорректировать","Перепроверить","Продолжить"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "確認"
		set global.i18n[3] = "進む前に位置が正しいことを確認してください。"
		set global.i18n[4] = {"再調整","再確認","続行"}
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Calibration XY (Camera)_03"
	;EN
	set global.i18n[2] = "Center Tool 1"
	set global.i18n[3] = "Access to the <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">camera</a> to position the tool"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Centrar Herramienta 1"
		set global.i18n[3] = "Accede a la <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">cámara</a> para posicionar la herramienta"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Werkzeug 1 zentrieren"
		set global.i18n[3] = "Greifen Sie auf die <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">Kamera</a> zu, um das Werkzeug zu positionieren"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Centrer l'outil 1"
		set global.i18n[3] = "Accédez à la <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">caméra</a> pour positionner l'outil"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Centrare Utensile 1"
		set global.i18n[3] = "Accedi alla <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">fotocamera</a> per posizionare l'utensile"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Centralizar Ferramenta 1"
		set global.i18n[3] = "Acesse a <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">câmera</a> para posicionar a ferramenta"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Centreer Gereedschap 1"
		set global.i18n[3] = "Toegang tot de <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">camera</a> om het gereedschap te positioneren"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "居中工具 1"
		set global.i18n[3] = "访问 <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">相机</a> 以定位工具"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Центрировать инструмент 1"
		set global.i18n[3] = "Доступ к <a href=\"https://emberprototypes.github.io/\" target=\"_blank\">камере</a> для позиционирования инструмента"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ツール 1 のセンター調整"
		set global.i18n[3] = "<a href=\"https://emberprototypes.github.io/\" target=\"_blank\">カメラ</a>にアクセスしてツールを配置してください"
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Calibration XY (Camera)_04"
	;EN
	set global.i18n[2] = "Verification"
	set global.i18n[3] = {"The offset that is set is X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" so make sure it is correct before proceeding."}
	set global.i18n[4] = {"Readjust","Recheck","Continue"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Verificación"
		set global.i18n[3] = {"El desfase establecido es X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" así que asegúrate de que sea correcto antes de continuar."}
		set global.i18n[4] = {"Reajustar","Revisar nuevamente","Continuar"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Überprüfung"
		set global.i18n[3] = {"Der eingestellte Versatz ist X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" stellen Sie sicher, dass es vor dem Fortfahren korrekt ist."}
		set global.i18n[4] = {"Nachjustieren","Erneut prüfen","Fortfahren"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Vérification"
		set global.i18n[3] = {"Le décalage défini est X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" assurez-vous qu'il est correct avant de continuer."}
		set global.i18n[4] = {"Réajuster","Revoir","Continuer"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Verifica"
		set global.i18n[3] = {"Lo spostamento impostato è X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" assicurati che sia corretto prima di procedere."}
		set global.i18n[4] = {"Riaggiusta","Ricontrolla","Continua"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Verificação"
		set global.i18n[3] = {"O deslocamento definido é X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" certifique-se de que está correto antes de continuar."}
		set global.i18n[4] = {"Reajustar","Rever","Continuar"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Verificatie"
		set global.i18n[3] = {"De ingestelde offset is X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" zorg ervoor dat deze correct is voordat u doorgaat."}
		set global.i18n[4] = {"Aanpassen","Opnieuw controleren","Doorgaan"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "验证"
		set global.i18n[3] = {"设置的偏移量为 X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" 在继续之前确保其正确。"}
		set global.i18n[4] = {"重新调整","重新检查","继续"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Проверка"
		set global.i18n[3] = {"Установленный сдвиг X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" убедитесь, что он правильный, прежде чем продолжить."}
		set global.i18n[4] = {"Подкорректировать","Перепроверить","Продолжить"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "確認"
		set global.i18n[3] = {"設定されたオフセットは X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]^" 進む前に正しいことを確認してください。"}
		set global.i18n[4] = {"再調整","再確認","続行"}
	M99


;0:/macros/Calibrations/Tools/Guided height calibration
if global.i18n[1] == "macros_Calibrations_Tools_Guided_height_calibration_01"
	;EN
	set global.i18n[2] = "Step 1"
	set global.i18n[3] = "Loosen the height calibration screws slightly until the head descends smoothly and touches the base"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Paso 1"
		set global.i18n[3] = "Afloje ligeramente los tornillos de calibración de altura hasta que el cabezal descienda suavemente y toque la base"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Schritt 1"
		set global.i18n[3] = "Lockern Sie die Höheneinstellungsschrauben leicht, bis der Kopf sanft absinkt und die Basis berührt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Étape 1"
		set global.i18n[3] = "Desserez légèrement les vis de calibration de hauteur jusqu'à ce que la tête descende doucement et touche la base"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Passo 1"
		set global.i18n[3] = "Allentare leggermente le viti di calibrazione dell'altezza finché la testina scende dolcemente e tocca la base"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Etapa 1"
		set global.i18n[3] = "Afrouxe ligeiramente os parafusos de calibração de altura até que a cabeça desça suavemente e toque a base"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Stap 1"
		set global.i18n[3] = "Maak de hoogte-afstelschroeven iets los totdat de kop soepel zakt en de basis raakt"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "步骤 1"
		set global.i18n[3] = "轻轻松开高度校准螺钉，直到机头平稳下降并接触到基座"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Шаг 1"
		set global.i18n[3] = "Немного ослабьте винты калибровки высоты, пока головка плавно не опустится и не коснется основания"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ステップ 1"
		set global.i18n[3] = "高さ調整ネジを軽く緩め、ヘッドがスムーズに下降してベースに触れるまで緩めてください"
	M99

;0:/macros/Calibrations/Tools/Guided height calibration
if global.i18n[1] == "macros_Calibrations_Tools_Guided_height_calibration_02"
	;EN
	set global.i18n[2] = "Step 2"
	set global.i18n[3] = "Tighten the height calibration screws. Ensure the head does not move when tightening the screws"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Paso 2"
		set global.i18n[3] = "Apriete los tornillos de calibración de altura. Asegúrese de que el cabezal no se mueve al apretar los tornillos"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Schritt 2"
		set global.i18n[3] = "Ziehen Sie die Höheneinstellungsschrauben fest. Stellen Sie sicher, dass sich der Kopf beim Festziehen der Schrauben nicht bewegt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Étape 2"
		set global.i18n[3] = "Serrez les vis de calibration de hauteur. Assurez-vous que la tête ne bouge pas lorsque vous serrez les vis"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Passo 2"
		set global.i18n[3] = "Stringere le viti di calibrazione dell'altezza. Assicurarsi che la testina non si muova durante il serraggio delle viti"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Etapa 2"
		set global.i18n[3] = "Aperte os parafusos de calibração de altura. Certifique-se de que a cabeça não se mova ao apertar os parafusos"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Stap 2"
		set global.i18n[3] = "Draai de hoogte-afstelschroeven aan. Zorg ervoor dat de kop niet beweegt bij het aandraaien van de schroeven"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "步骤 2"
		set global.i18n[3] = "拧紧高度校准螺钉。确保拧紧螺钉时机头不会移动"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Шаг 2"
		set global.i18n[3] = "Затяните винты калибровки высоты. Убедитесь, что головка не движется при затягивании винтов"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ステップ 2"
		set global.i18n[3] = "高さ調整ネジを締めます。ネジを締めるときにヘッドが動かないことを確認してください"
	M99


;0:/macros/Calibrations/Tools/Guided height calibration
if global.i18n[1] == "macros_Calibrations_Tools_Guided_height_calibration_03"
	;EN
	set global.i18n[2] = "Step 3"
	set global.i18n[3] = "Loosen the height calibration screws slightly until the head descends smoothly and touches the base"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Paso 3"
		set global.i18n[3] = "Afloje ligeramente los tornillos de calibración de altura hasta que el cabezal descienda suavemente y toque la base"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Schritt 3"
		set global.i18n[3] = "Lockern Sie die Höheneinstellungsschrauben leicht, bis der Kopf sanft absinkt und die Basis berührt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Étape 3"
		set global.i18n[3] = "Desserez légèrement les vis de calibration de hauteur jusqu'à ce que la tête descende doucement et touche la base"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Passo 3"
		set global.i18n[3] = "Allentare leggermente le viti di calibrazione dell'altezza finché la testina scende dolcemente e tocca la base"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Etapa 3"
		set global.i18n[3] = "Afrouxe ligeiramente os parafusos de calibração de altura até que a cabeça desça suavemente e toque a base"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Stap 3"
		set global.i18n[3] = "Maak de hoogte-afstelschroeven iets los totdat de kop soepel zakt en de basis raakt"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "步骤 3"
		set global.i18n[3] = "轻轻松开高度校准螺钉，直到机头平稳下降并接触到基座"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Шаг 3"
		set global.i18n[3] = "Немного ослабьте винты калибровки высоты, пока головка плавно не опустится и не коснется основания"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ステップ 3"
		set global.i18n[3] = "高さ調整ネジを軽く緩め、ヘッドがスムーズに下降してベースに触れるまで緩めてください"
	M99

;0:/macros/Calibrations/Tools/Guided height calibration
if global.i18n[1] == "macros_Calibrations_Tools_Guided_height_calibration_04"
	;EN
	set global.i18n[2] = "Step 4"
	set global.i18n[3] = "Tighten the height calibration screws. Ensure the head does not move when tightening the screws"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Paso 4"
		set global.i18n[3] = "Apriete los tornillos de calibración de altura. Asegúrese de que el cabezal no se mueve al apretar los tornillos"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Schritt 4"
		set global.i18n[3] = "Ziehen Sie die Höheneinstellungsschrauben fest. Stellen Sie sicher, dass sich der Kopf beim Festziehen der Schrauben nicht bewegt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Étape 4"
		set global.i18n[3] = "Serrez les vis de calibration de hauteur. Assurez-vous que la tête ne bouge pas lorsque vous serrez les vis"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Passo 4"
		set global.i18n[3] = "Stringere le viti di calibrazione dell'altezza. Assicurarsi che la testina non si muova durante il serraggio delle viti"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Etapa 4"
		set global.i18n[3] = "Aperte os parafusos de calibração de altura. Certifique-se de que a cabeça não se mova ao apertar os parafusos"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Stap 4"
		set global.i18n[3] = "Draai de hoogte-afstelschroeven aan. Zorg ervoor dat de kop niet beweegt bij het aandraaien van de schroeven"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "步骤 4"
		set global.i18n[3] = "拧紧高度校准螺钉。确保拧紧螺钉时机头不会移动"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Шаг 4"
		set global.i18n[3] = "Затяните винты калибровки высоты. Убедитесь, что головка не движется при затягивании винтов"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ステップ 4"
		set global.i18n[3] = "高さ調整ネジを締めます。ネジを締めるときにヘッドが動かないことを確認してください"
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Guided height calibration_05"
	;EN
	set global.i18n[2] = "END"
	set global.i18n[3] = "It is recommended to recalibrate the XY offsets."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "FIN"
		set global.i18n[3] = "Se recomienda recalibrar los desfases XY."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "ENDE"
		set global.i18n[3] = "Es wird empfohlen, die XY-Versätze neu zu kalibrieren."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "FIN"
		set global.i18n[3] = "Il est recommandé de recalibrer les décalages XY."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "FINE"
		set global.i18n[3] = "Si consiglia di ricalibrare gli offset XY."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "FIM"
		set global.i18n[3] = "Recomenda-se recalibrar os offsets XY."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "EIND"
		set global.i18n[3] = "Het wordt aanbevolen de XY-offsets opnieuw te kalibreren."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "结束"
		set global.i18n[3] = "建议重新校准 XY 偏移。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "КОНЕЦ"
		set global.i18n[3] = "Рекомендуется повторно откалибровать XY смещения."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "終了"
		set global.i18n[3] = "XYオフセットを再調整することをお勧めします。"
	M99


;0:/macros/Calibrations/Tools/Reset XY Offset

if global.i18n[1] == "macros_Calibrations_Tools_Reset XY Offset_01"
	;EN
	set global.i18n[2] = "Reset Offset"
	set global.i18n[3] = {"Your offset is X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Reiniciar Desfase"
		set global.i18n[3] = {"Tu desfase es X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Versatz zurücksetzen"
		set global.i18n[3] = {"Ihr Versatz ist X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Réinitialiser le décalage"
		set global.i18n[3] = {"Votre décalage est X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Reimposta Offset"
		set global.i18n[3] = {"Il tuo offset è X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Redefinir Offset"
		set global.i18n[3] = {"Seu offset é X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Offset resetten"
		set global.i18n[3] = {"Uw offset is X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "重置偏移量"
		set global.i18n[3] = {"您的偏移量为 X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Сброс смещения"
		set global.i18n[3] = {"Ваше смещение: X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オフセットをリセット"
		set global.i18n[3] = {"オフセットは X" ^tools[1].offsets[3]^ " Y" ^tools[1].offsets[1]}
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Reset XY Offset_02"
	;EN
	set global.i18n[2] = "Reset Offset"
	set global.i18n[3] = "Are you sure you want to delete it?"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Reiniciar Desfase"
		set global.i18n[3] = "¿Estás seguro de que deseas eliminarlo?"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Versatz zurücksetzen"
		set global.i18n[3] = "Sind Sie sicher, dass Sie es löschen möchten?"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Réinitialiser le décalage"
		set global.i18n[3] = "Êtes-vous sûr de vouloir le supprimer?"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Reimposta Offset"
		set global.i18n[3] = "Sei sicuro di volerlo eliminare?"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Redefinir Offset"
		set global.i18n[3] = "Tem certeza de que deseja excluí-lo?"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Offset resetten"
		set global.i18n[3] = "Weet u zeker dat u het wilt verwijderen?"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "重置偏移量"
		set global.i18n[3] = "确定要删除它吗？"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Сброс смещения"
		set global.i18n[3] = "Вы уверены, что хотите удалить его?"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オフセットをリセット"
		set global.i18n[3] = "本当に削除してもよろしいですか？"
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Reset XY Offset_03"
	;EN
	set global.i18n[3] = {"Offsets have been removed: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "ES"
		set global.i18n[3] = {"Se han eliminado los desfases: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "DE"
		set global.i18n[3] = {"Die Versätze wurden entfernt: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "FR"
		set global.i18n[3] = {"Les décalages ont été supprimés : X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "IT"
		set global.i18n[3] = {"Gli offset sono stati rimossi: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "PT"
		set global.i18n[3] = {"Os offsets foram removidos: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "NL"
		set global.i18n[3] = {"De offsets zijn verwijderd: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "ZH"
		set global.i18n[3] = {"偏移量已移除：X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "RU"
		set global.i18n[3] = {"Смещения удалены: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	if global.i18n[0] == "JA"
		set global.i18n[3] = {"オフセットが削除されました: X" ^tools[1].offsets[3]^" Y"^tools[1].offsets[1]}
	M99


;0:/macros/Calibrations/Tools/Sets up tools

if global.i18n[1] == "macros_Calibrations_Tools_Sets up tools_01"
	;EN
	set global.i18n[2] = "Tool selection"
	set global.i18n[3] = "Are you sure you want to change the configuration of your current tools?"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Selección de herramienta"
		set global.i18n[3] = "¿Estás seguro de que deseas cambiar la configuración de tus herramientas actuales?"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Werkzeugauswahl"
		set global.i18n[3] = "Sind Sie sicher, dass Sie die Konfiguration Ihrer aktuellen Werkzeuge ändern möchten?"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Sélection d'outil"
		set global.i18n[3] = "Êtes-vous sûr de vouloir modifier la configuration de vos outils actuels?"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Selezione utensile"
		set global.i18n[3] = "Sei sicuro di voler cambiare la configurazione degli strumenti attuali?"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Seleção de ferramenta"
		set global.i18n[3] = "Tem certeza de que deseja alterar a configuração de suas ferramentas atuais?"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Gereedschapsselectie"
		set global.i18n[3] = "Weet u zeker dat u de configuratie van uw huidige gereedschappen wilt wijzigen?"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "工具选择"
		set global.i18n[3] = "确定要更改当前工具的配置吗？"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Выбор инструмента"
		set global.i18n[3] = "Вы уверены, что хотите изменить конфигурацию ваших текущих инструментов?"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ツール選択"
		set global.i18n[3] = "現在のツール構成を変更してもよろしいですか？"
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Sets up tools_02"
	;EN
	set global.i18n[2] = {"Tool_"^var.receivedValue^" selection"}
	set global.i18n[3] = {"Choose the spindle available on the tool_"^var.receivedValue}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {"Selección de herramienta_"^var.receivedValue}
		set global.i18n[3] = {"Elige el husillo disponible en la herramienta_"^var.receivedValue}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {"Werkzeug_"^var.receivedValue^" Auswahl"}
		set global.i18n[3] = {"Wählen Sie die auf Werkzeug_"^var.receivedValue^" verfügbare Spindel aus"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {"Sélection de l'outil_"^var.receivedValue}
		set global.i18n[3] = {"Choisissez la broche disponible sur l'outil_"^var.receivedValue}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {"Selezione utensile_"^var.receivedValue}
		set global.i18n[3] = {"Scegli il mandrino disponibile sull'utensile_"^var.receivedValue}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {"Seleção de ferramenta_"^var.receivedValue}
		set global.i18n[3] = {"Escolha o fuso disponível na ferramenta_"^var.receivedValue}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {"Gereedschap_"^var.receivedValue^" selectie"}
		set global.i18n[3] = {"Kies de beschikbare spil op gereedschap_"^var.receivedValue}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {"工具_"^var.receivedValue^" 选择"}
		set global.i18n[3] = {"选择工具_"^var.receivedValue^"上可用的主轴"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {"Выбор инструмента_"^var.receivedValue}
		set global.i18n[3] = {"Выберите шпиндель, доступный на инструменте_"^var.receivedValue}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {"ツール_"^var.receivedValue^" 選択"}
		set global.i18n[3] = {"ツール_"^var.receivedValue^"で利用可能なスピンドルを選択してください"}
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Sets up tools_04"
	;EN
	set global.i18n[2] = "Your new tool configuration is"
	set global.i18n[3] = {var.receivedValue^" make sure everything is working properly."}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Tu nueva configuración de herramienta es"
		set global.i18n[3] = {var.receivedValue^" asegúrate de que todo funcione correctamente."}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Ihre neue Werkzeugkonfiguration ist"
		set global.i18n[3] = {var.receivedValue^" stellen Sie sicher, dass alles ordnungsgemäß funktioniert."}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Votre nouvelle configuration d'outil est"
		set global.i18n[3] = {var.receivedValue^" assurez-vous que tout fonctionne correctement."}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "La tua nuova configurazione degli strumenti è"
		set global.i18n[3] = {var.receivedValue^" assicurati che tutto funzioni correttamente."}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sua nova configuração de ferramenta é"
		set global.i18n[3] = {var.receivedValue^" certifique-se de que tudo está funcionando corretamente."}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Uw nieuwe gereedschapsconfiguratie is"
		set global.i18n[3] = {var.receivedValue^" zorg ervoor dat alles correct werkt."}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "您的新工具配置是"
		set global.i18n[3] = {var.receivedValue^" 请确保一切正常工作。"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Ваша новая конфигурация инструмента"
		set global.i18n[3] = {var.receivedValue^" убедитесь, что все работает правильно."}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "新しいツール構成は次のとおりです"
		set global.i18n[3] = {var.receivedValue^" すべてが正常に動作していることを確認してください。"}
	M99

if global.i18n[1] == "macros_Calibrations_Tools_Sets up tools_05"
	;EN
	set global.i18n[2] = "END"
	set global.i18n[3] = "It is recommended to recalibrate the height offsets, use Guided height calibration."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "FIN"
		set global.i18n[3] = "Se recomienda recalibrar los desplazamientos de altura, use la calibración guiada de altura."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "ENDE"
		set global.i18n[3] = "Es wird empfohlen, die Höhenversätze neu zu kalibrieren. Verwenden Sie die geführte Höhenkalibrierung."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "FIN"
		set global.i18n[3] = "Il est recommandé de recalibrer les décalages de hauteur, utilisez l'étalonnage de hauteur guidé."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "FINE"
		set global.i18n[3] = "Si consiglia di ricalibrare gli offset di altezza, utilizzare la calibrazione guidata dell'altezza."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "FIM"
		set global.i18n[3] = "Recomenda-se recalibrar os deslocamentos de altura, use a calibração de altura guiada."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "EINDE"
		set global.i18n[3] = "Het wordt aanbevolen om de hoogte-offsets opnieuw te kalibreren, gebruik de begeleide hoogtekalibratie."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "结束"
		set global.i18n[3] = "建议重新校准高度偏移，请使用引导式高度校准。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "КОНЕЦ"
		set global.i18n[3] = "Рекомендуется откалибровать высотные смещения, используйте направляемую калибровку высоты."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "終了"
		set global.i18n[3] = "高さオフセットを再調整することをお勧めします。ガイド付き高さキャリブレーションを使用してください。"
	M99


; 0:/macros/Calibration/Tool/Set XY Offset

if global.i18n[1] == "macros_Calibration_Tool_Set XY Offset_01"
	;EN
	set global.i18n[2] = "Manual offset editor"
	set global.i18n[3] = {"Are you sure you want to modify the current values? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Editor manual de desfase"
		set global.i18n[3] = {"¿Estás seguro de que deseas modificar los valores actuales? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Manueller Versatzeditor"
		set global.i18n[3] = {"Sind Sie sicher, dass Sie die aktuellen Werte ändern möchten? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Éditeur de décalage manuel"
		set global.i18n[3] = {"Êtes-vous sûr de vouloir modifier les valeurs actuelles? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Editor di offset manuale"
		set global.i18n[3] = {"Sei sicuro di voler modificare i valori attuali? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Editor de offset manual"
		set global.i18n[3] = {"Tem certeza de que deseja modificar os valores atuais? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Handmatige offset-editor"
		set global.i18n[3] = {"Weet u zeker dat u de huidige waarden wilt wijzigen? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "手动偏移编辑器"
		set global.i18n[3] = {"确定要修改当前值吗？X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Редактор смещения вручную"
		set global.i18n[3] = {"Вы уверены, что хотите изменить текущие значения? X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "手動オフセットエディター"
		set global.i18n[3] = {"現在の値を変更してもよろしいですか？ X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	M99

if global.i18n[1] == "macros_Calibration_Tool_Set XY Offset_02"
	;EN
	set global.i18n[2] = "Offset X"
	set global.i18n[3] = "Assign a new value for X"
	set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Desfase X"
		set global.i18n[3] = "Asigna un nuevo valor para X"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Versatz X"
		set global.i18n[3] = "Weisen Sie einen neuen Wert für X zu"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Décalage X"
		set global.i18n[3] = "Attribuez une nouvelle valeur pour X"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Offset X"
		set global.i18n[3] = "Assegna un nuovo valore per X"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Deslocamento X"
		set global.i18n[3] = "Atribua um novo valor para X"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Offset X"
		set global.i18n[3] = "Ken een nieuwe waarde toe voor X"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "偏移 X"
		set global.i18n[3] = "为 X 分配一个新值"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Смещение X"
		set global.i18n[3] = "Назначьте новое значение для X"
		set global.i18n[4] = {tools[1].offsets[3]}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オフセット X"
		set global.i18n[3] = "X の新しい値を割り当てます"
		set global.i18n[4] = {tools[1].offsets[3]}
	M99

if global.i18n[1] == "macros_Calibration_Tool_Set XY Offset_03"
	;EN
	set global.i18n[2] = "Offset Y"
	set global.i18n[3] = "Assign a new value for Y"
	set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Desfase Y"
		set global.i18n[3] = "Asigna un nuevo valor para Y"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Versatz Y"
		set global.i18n[3] = "Weisen Sie einen neuen Wert für Y zu"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Décalage Y"
		set global.i18n[3] = "Attribuez une nouvelle valeur pour Y"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Offset Y"
		set global.i18n[3] = "Assegna un nuovo valore per Y"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Deslocamento Y"
		set global.i18n[3] = "Atribua um novo valor para Y"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Offset Y"
		set global.i18n[3] = "Ken een nieuwe waarde toe voor Y"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "偏移 Y"
		set global.i18n[3] = "为 Y 分配一个新值"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Смещение Y"
		set global.i18n[3] = "Назначьте новое значение для Y"
		set global.i18n[4] = {tools[1].offsets[1]}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オフセット Y"
		set global.i18n[3] = "Y の新しい値を割り当てます"
		set global.i18n[4] = {tools[1].offsets[1]}
	M99

if global.i18n[1] == "macros_Calibration_Tool_Set XY Offset_04"
	;EN
	set global.i18n[2] = "Offsets updated"
	set global.i18n[3] = {"Offsets have been saved successfully. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Desfases actualizados"
		set global.i18n[3] = {"Los desfases se han guardado correctamente. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Offsets aktualisiert"
		set global.i18n[3] = {"Offsets wurden erfolgreich gespeichert. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Décalages mis à jour"
		set global.i18n[3] = {"Les décalages ont été enregistrés avec succès. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Offset aggiornati"
		set global.i18n[3] = {"Gli offset sono stati salvati correttamente. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Offsets atualizados"
		set global.i18n[3] = {"Os offsets foram salvos com sucesso. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Offsets bijgewerkt"
		set global.i18n[3] = {"Offsets zijn succesvol opgeslagen. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "偏移已更新"
		set global.i18n[3] = {"偏移已成功保存。X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Смещения обновлены"
		set global.i18n[3] = {"Смещения успешно сохранены. X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オフセットが更新されました"
		set global.i18n[3] = {"オフセットが正常に保存されました。X="^tools[1].offsets[3]^" Y="^tools[1].offsets[1]}
	M99


;0:/macros/Disable motors

if global.i18n[1] == "macros_Disable motors_01"
	;EN
	set global.i18n[3] = "Motor disabled"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Motor desactivado"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Motor deaktiviert"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Moteur désactivé"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Motore disabilitato"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Motor desativado"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Motor uitgeschakeld"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "电机已禁用"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Мотор отключен"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "モーターが無効になりました"
	M99


;0:/macros/Network/Actual IP Address

if global.i18n[1] == "macros_Network_Actual IP Address_01"
	;EN
	set global.i18n[2] = "IP Address"
	set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Dirección IP"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "IP-Adresse"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WLAN: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Adresse IP"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Indirizzo IP"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Endereço IP"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "IP-adres"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "IP地址"
		set global.i18n[3] = {"以太网: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "IP адрес"
		set global.i18n[3] = {"Ethernet: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "IPアドレス"
		set global.i18n[3] = {"イーサネット: "^network.interfaces[0].actualIP^" WiFi: "^network.interfaces[1].actualIP}
	M99


;0:/macros/Network/Ethernet/Connect to the network

if global.i18n[1] == "macros_Network_Ethernet_Connect to the network_01"
	;EN
	set global.i18n[2] = "MAC address"
	set global.i18n[3] = {"This is your mac address: "^network.interfaces[0].mac}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Dirección MAC"
		set global.i18n[3] = {"Esta es tu dirección MAC: "^network.interfaces[0].mac}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "MAC-Adresse"
		set global.i18n[3] = {"Dies ist Ihre MAC-Adresse: "^network.interfaces[0].mac}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Adresse MAC"
		set global.i18n[3] = {"Voici votre adresse MAC : "^network.interfaces[0].mac}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Indirizzo MAC"
		set global.i18n[3] = {"Questo è il tuo indirizzo MAC: "^network.interfaces[0].mac}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Endereço MAC"
		set global.i18n[3] = {"Este é o seu endereço MAC: "^network.interfaces[0].mac}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "MAC-adres"
		set global.i18n[3] = {"Dit is uw MAC-adres: "^network.interfaces[0].mac}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "MAC地址"
		set global.i18n[3] = {"这是您的MAC地址: "^network.interfaces[0].mac}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "MAC-адрес"
		set global.i18n[3] = {"Это ваш MAC-адрес: "^network.interfaces[0].mac}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "MACアドレス"
		set global.i18n[3] = {"こちらがMACアドレスです: "^network.interfaces[0].mac}
	M99

if global.i18n[1] == "macros_Network_Ethernet_Connect to the network_02"
	;EN
	set global.i18n[2] = "IP Assignment"
	set global.i18n[3] = "Edit IP Configuration"
	set global.i18n[4] = {"Automatic (DHCP)","Manual"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Asignación de IP"
		set global.i18n[3] = "Editar configuración de IP"
		set global.i18n[4] = {"Automático (DHCP)","Manual"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "IP-Zuweisung"
		set global.i18n[3] = "IP-Konfiguration bearbeiten"
		set global.i18n[4] = {"Automatisch (DHCP)","Manuell"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Affectation IP"
		set global.i18n[3] = "Modifier la configuration IP"
		set global.i18n[4] = {"Automatique (DHCP)","Manuel"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Assegnazione IP"
		set global.i18n[3] = "Modifica configurazione IP"
		set global.i18n[4] = {"Automatico (DHCP)","Manuale"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Atribuição de IP"
		set global.i18n[3] = "Editar configuração de IP"
		set global.i18n[4] = {"Automático (DHCP)","Manual"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "IP-toewijzing"
		set global.i18n[3] = "Bewerk IP-configuratie"
		set global.i18n[4] = {"Automatisch (DHCP)","Handmatig"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "IP分配"
		set global.i18n[3] = "编辑IP配置"
		set global.i18n[4] = {"自动 (DHCP)","手动"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Назначение IP"
		set global.i18n[3] = "Изменить конфигурацию IP"
		set global.i18n[4] = {"Автоматически (DHCP)","Вручную"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "IP割り当て"
		set global.i18n[3] = "IP設定を編集"
		set global.i18n[4] = {"自動 (DHCP)","手動"}
	M99

if global.i18n[1] == "macros_Network_Ethernet_Connect to the network_03"
	;EN
	set global.i18n[2] = "Enter your IP"
	set global.i18n[3] = "IP address to use when connected to this network"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce tu IP"
		set global.i18n[3] = "Dirección IP a usar cuando se conecte a esta red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihre IP ein"
		set global.i18n[3] = "IP-Adresse, die beim Verbinden mit diesem Netzwerk verwendet wird"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez votre IP"
		set global.i18n[3] = "Adresse IP à utiliser lors de la connexion à ce réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci il tuo IP"
		set global.i18n[3] = "Indirizzo IP da utilizzare quando connesso a questa rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite seu IP"
		set global.i18n[3] = "Endereço IP a ser usado ao se conectar a esta rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw IP in"
		set global.i18n[3] = "IP-adres om te gebruiken bij verbinding met dit netwerk"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的IP"
		set global.i18n[3] = "连接到此网络时使用的IP地址"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите ваш IP"
		set global.i18n[3] = "IP-адрес для использования при подключении к этой сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "IPを入力してください"
		set global.i18n[3] = "このネットワークに接続するときに使用するIPアドレス"
	M99

if global.i18n[1] == "macros_Network_Ethernet_Connect to the network_04"
	;EN
	set global.i18n[2] = "Enter your Netmask"
	set global.i18n[3] = "Netmask to use when connected to this network"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce tu Máscara de Red"
		set global.i18n[3] = "Máscara de red a usar cuando se conecte a esta red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihre Netzmaske ein"
		set global.i18n[3] = "Netzmaske, die beim Verbinden mit diesem Netzwerk verwendet wird"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez votre masque de sous-réseau"
		set global.i18n[3] = "Masque de sous-réseau à utiliser lors de la connexion à ce réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci la tua subnet mask"
		set global.i18n[3] = "Maschera di rete da utilizzare quando connesso a questa rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite sua Máscara de Rede"
		set global.i18n[3] = "Máscara de rede a ser usada ao se conectar a esta rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw netmasker in"
		set global.i18n[3] = "Netmasker om te gebruiken bij verbinding met dit netwerk"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的子网掩码"
		set global.i18n[3] = "连接到此网络时使用的子网掩码"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите маску подсети"
		set global.i18n[3] = "Маска подсети для использования при подключении к этой сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "サブネットマスクを入力してください"
		set global.i18n[3] = "このネットワークに接続するときに使用するサブネットマスク"
	M99

if global.i18n[1] == "macros_Network_Ethernet_Connect to the network_05"
	;EN
	set global.i18n[2] = "Enter your Gateway"
	set global.i18n[3] = "Gateway IP address to use when connected to this network"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce tu Puerta de Enlace"
		set global.i18n[3] = "Dirección IP de la puerta de enlace a usar cuando se conecte a esta red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihr Gateway ein"
		set global.i18n[3] = "Gateway-IP-Adresse, die beim Verbinden mit diesem Netzwerk verwendet wird"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez votre passerelle"
		set global.i18n[3] = "Adresse IP de la passerelle à utiliser lors de la connexion à ce réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci il tuo Gateway"
		set global.i18n[3] = "Indirizzo IP del gateway da utilizzare quando connesso a questa rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite seu Gateway"
		set global.i18n[3] = "Endereço IP do gateway a ser usado ao se conectar a esta rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw Gateway in"
		set global.i18n[3] = "Gateway-IP-adres om te gebruiken bij verbinding met dit netwerk"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的网关"
		set global.i18n[3] = "连接到此网络时使用的网关IP地址"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите ваш шлюз"
		set global.i18n[3] = "IP-адрес шлюза для использования при подключении к этой сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ゲートウェイを入力してください"
		set global.i18n[3] = "このネットワークに接続するときに使用するゲートウェイのIPアドレス"
	M99

if global.i18n[1] == "macros_Network_Ethernet_Connect to the network_06"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "Check your Ethernet settings and try again"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "Revisa la configuración de Ethernet y vuelve a intentarlo"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Überprüfen Sie Ihre Ethernet-Einstellungen und versuchen Sie es erneut"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Vérifiez vos paramètres Ethernet et réessayez"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Controlla le impostazioni Ethernet e riprova"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Verifique suas configurações de Ethernet e tente novamente"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Controleer uw Ethernet-instellingen en probeer het opnieuw"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "检查以太网设置，然后重试"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Проверьте настройки Ethernet и попробуйте снова"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "イーサネット設定を確認して再試行してください"
	M99


;0:/macros/Network/Ethernet/Turn off Ethernet

if global.i18n[1] == "macros_Network_Ethernet_Turn off Ethernet_01"
	;EN
	set global.i18n[2] = "Ethernet"
	set global.i18n[3] = {"Ethernet connection is "^network.interfaces[0].state}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"La conexión Ethernet está "^network.interfaces[0].state}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"Die Ethernet-Verbindung ist "^network.interfaces[0].state}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"La connexion Ethernet est "^network.interfaces[0].state}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"La connessione Ethernet è "^network.interfaces[0].state}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"A conexão Ethernet está "^network.interfaces[0].state}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"De Ethernet-verbinding is "^network.interfaces[0].state}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "以太网"
		set global.i18n[3] = {"以太网连接是 "^network.interfaces[0].state}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Ethernet"
		set global.i18n[3] = {"Соединение Ethernet "^network.interfaces[0].state}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "イーサネット"
		set global.i18n[3] = {"イーサネット接続は "^network.interfaces[0].state}
	M99


;0:/macros/Network/WiFi/Set up a WiFi access point

if global.i18n[1] == "macros_Network_WiFi_Set up a WiFi access point_01"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "Check your WiFi settings and try again"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "Revisa la configuración de WiFi y vuelve a intentarlo"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Überprüfen Sie Ihre WiFi-Einstellungen und versuchen Sie es erneut"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Vérifiez vos paramètres WiFi et réessayez"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Controlla le impostazioni WiFi e riprova"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Verifique suas configurações de WiFi e tente novamente"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Controleer uw WiFi-instellingen en probeer het opnieuw"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "检查您的WiFi设置并重试"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Проверьте настройки WiFi и попробуйте снова"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "WiFi設定を確認して再試行してください"
	M99


;0:/macros/Network/WiFi/Add a new network

if global.i18n[1] == "macros_Network_WiFi_Add a new network_01"
	;EN
	set global.i18n[2] = "MAC address"
	set global.i18n[3] = {"This is your mac address: "^network.interfaces[0].mac}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Dirección MAC"
		set global.i18n[3] = {"Esta es tu dirección MAC: "^network.interfaces[0].mac}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "MAC-Adresse"
		set global.i18n[3] = {"Dies ist Ihre MAC-Adresse: "^network.interfaces[0].mac}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Adresse MAC"
		set global.i18n[3] = {"Voici votre adresse MAC : "^network.interfaces[0].mac}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Indirizzo MAC"
		set global.i18n[3] = {"Questo è il tuo indirizzo MAC: "^network.interfaces[0].mac}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Endereço MAC"
		set global.i18n[3] = {"Este é o seu endereço MAC: "^network.interfaces[0].mac}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "MAC-adres"
		set global.i18n[3] = {"Dit is uw MAC-adres: "^network.interfaces[0].mac}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "MAC地址"
		set global.i18n[3] = {"这是您的MAC地址: "^network.interfaces[0].mac}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "MAC-адрес"
		set global.i18n[3] = {"Это ваш MAC-адрес: "^network.interfaces[0].mac}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "MACアドレス"
		set global.i18n[3] = {"こちらがMACアドレスです: "^network.interfaces[0].mac}
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_02"
	;EN
	set global.i18n[2] = "Warnings"
	set global.i18n[3] = "Make sure that the wifi network you want to connect to is 2.4GHz."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Advertencias"
		set global.i18n[3] = "Asegúrate de que la red wifi a la que deseas conectarte sea de 2.4GHz."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Warnungen"
		set global.i18n[3] = "Stellen Sie sicher, dass das WLAN-Netzwerk, mit dem Sie sich verbinden möchten, 2,4 GHz hat."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Avertissements"
		set global.i18n[3] = "Assurez-vous que le réseau WiFi auquel vous souhaitez vous connecter est en 2,4 GHz."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Avvisi"
		set global.i18n[3] = "Assicurati che la rete WiFi a cui vuoi connetterti sia a 2,4 GHz."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Avisos"
		set global.i18n[3] = "Certifique-se de que a rede WiFi à qual deseja se conectar seja de 2,4 GHz."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Waarschuwingen"
		set global.i18n[3] = "Zorg ervoor dat het WiFi-netwerk waarmee u verbinding wilt maken 2,4 GHz is."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "警告"
		set global.i18n[3] = "请确保要连接的WiFi网络为2.4GHz。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Предупреждения"
		set global.i18n[3] = "Убедитесь, что Wi-Fi сеть, к которой вы хотите подключиться, имеет частоту 2,4 ГГц."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "警告"
		set global.i18n[3] = "接続したいWiFiネットワークが2.4GHzであることを確認してください。"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_03"
	;EN
	set global.i18n[2] = "Warnings"
	set global.i18n[3] = "The use of special characters in the SSID or password cannot be guaranteed to work. (@#$%^&*)"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Advertencias"
		set global.i18n[3] = "El uso de caracteres especiales en el SSID o la contraseña no garantiza que funcione. (@#$%^&*)"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Warnungen"
		set global.i18n[3] = "Die Verwendung von Sonderzeichen im SSID oder Passwort kann nicht garantiert werden. (@#$%^&*)"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Avertissements"
		set global.i18n[3] = "L'utilisation de caractères spéciaux dans le SSID ou le mot de passe ne peut pas être garantie. (@#$%^&*)"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Avvisi"
		set global.i18n[3] = "L'uso di caratteri speciali nel SSID o nella password non può essere garantito. (@#$%^&*)"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Avisos"
		set global.i18n[3] = "Não é garantido o uso de caracteres especiais no SSID ou senha. (@#$%^&*)"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Waarschuwingen"
		set global.i18n[3] = "Het gebruik van speciale tekens in de SSID of het wachtwoord kan niet worden gegarandeerd. (@#$%^&*)"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "警告"
		set global.i18n[3] = "无法保证SSID或密码中的特殊字符能正常工作。 (@#$%^&*)"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Предупреждения"
		set global.i18n[3] = "Использование специальных символов в SSID или пароле не гарантируется. (@#$%^&*)"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "警告"
		set global.i18n[3] = "SSIDまたはパスワードに特殊文字を使用することは保証されません。 (@#$%^&*)"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_04"
	;EN
	set global.i18n[2] = "Enter your Network SSID (wifi name)"
	set global.i18n[3] = "Case sensitive"
	set global.i18n[4] = "Network SSID"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce el SSID de tu red (nombre wifi)"
		set global.i18n[3] = "Sensible a mayúsculas y minúsculas"
		set global.i18n[4] = "SSID de la red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihr Netzwerk-SSID ein (WLAN-Name)"
		set global.i18n[3] = "Groß- und Kleinschreibung beachten"
		set global.i18n[4] = "Netzwerk-SSID"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez le SSID de votre réseau (nom WiFi)"
		set global.i18n[3] = "Sensible à la casse"
		set global.i18n[4] = "SSID du réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci il SSID della tua rete (nome WiFi)"
		set global.i18n[3] = "Sensible a maiuscole e minuscole"
		set global.i18n[4] = "SSID della rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite o SSID da sua rede (nome WiFi)"
		set global.i18n[3] = "Sensible a maiúsculas e minúsculas"
		set global.i18n[4] = "SSID da rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw netwerk-SSID in (wifi-naam)"
		set global.i18n[3] = "Hoofdlettergevoelig"
		set global.i18n[4] = "Netwerk SSID"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的网络SSID（WiFi名称）"
		set global.i18n[3] = "区分大小写"
		set global.i18n[4] = "网络SSID"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите SSID вашей сети (имя WiFi)"
		set global.i18n[3] = "Чувствительно к регистру"
		set global.i18n[4] = "SSID сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ネットワークSSIDを入力してください (WiFi名)"
		set global.i18n[3] = "大文字と小文字を区別します"
		set global.i18n[4] = "ネットワークSSID"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_05"
	;EN
	set global.i18n[2] = "Enter your Network password"
	set global.i18n[3] = "Case sensitive"
	set global.i18n[4] = "password"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce la contraseña de tu red"
		set global.i18n[3] = "Sensible a mayúsculas y minúsculas"
		set global.i18n[4] = "contraseña"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihr Netzwerk-Passwort ein"
		set global.i18n[3] = "Groß- und Kleinschreibung beachten"
		set global.i18n[4] = "Passwort"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez le mot de passe de votre réseau"
		set global.i18n[3] = "Sensible à la casse"
		set global.i18n[4] = "mot de passe"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci la password della tua rete"
		set global.i18n[3] = "Sensible a maiuscole e minuscole"
		set global.i18n[4] = "password"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite a senha da sua rede"
		set global.i18n[3] = "Sensible a maiúsculas e minúsculas"
		set global.i18n[4] = "senha"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw netwerk wachtwoord in"
		set global.i18n[3] = "Hoofdlettergevoelig"
		set global.i18n[4] = "wachtwoord"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的网络密码"
		set global.i18n[3] = "区分大小写"
		set global.i18n[4] = "密码"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите пароль вашей сети"
		set global.i18n[3] = "Чувствителен к регистру"
		set global.i18n[4] = "пароль"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ネットワークのパスワードを入力してください"
		set global.i18n[3] = "大文字と小文字を区別します"
		set global.i18n[4] = "パスワード"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_06"
	;EN
	set global.i18n[2] = "Optional Parameters"
	set global.i18n[3] = "Do you need to set your IP manually? (not recommended)"
	set global.i18n[4] = {"YES","NO"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Parámetros Opcionales"
		set global.i18n[3] = "¿Necesitas configurar tu IP manualmente? (no recomendado)"
		set global.i18n[4] = {"SÍ","NO"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Optionale Parameter"
		set global.i18n[3] = "Möchten Sie Ihre IP manuell einstellen? (nicht empfohlen)"
		set global.i18n[4] = {"JA","NEIN"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Paramètres Optionnels"
		set global.i18n[3] = "Avez-vous besoin de configurer votre IP manuellement? (non recommandé)"
		set global.i18n[4] = {"OUI","NON"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Parametri Opzionali"
		set global.i18n[3] = "Hai bisogno di impostare manualmente il tuo IP? (non raccomandato)"
		set global.i18n[4] = {"SÌ","NO"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Parâmetros Opcionais"
		set global.i18n[3] = "Precisa configurar seu IP manualmente? (não recomendado)"
		set global.i18n[4] = {"SIM","NÃO"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Optionele Parameters"
		set global.i18n[3] = "Wilt u uw IP handmatig instellen? (niet aanbevolen)"
		set global.i18n[4] = {"JA","NEE"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "可选参数"
		set global.i18n[3] = "是否需要手动设置IP？（不推荐）"
		set global.i18n[4] = {"是","否"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Дополнительные Параметры"
		set global.i18n[3] = "Вам нужно вручную настроить IP? (не рекомендуется)"
		set global.i18n[4] = {"ДА","НЕТ"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オプションパラメータ"
		set global.i18n[3] = "IPを手動で設定する必要がありますか？（非推奨）"
		set global.i18n[4] = {"はい","いいえ"}
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_07"
	;EN
	set global.i18n[2] = "Enter your IP"
	set global.i18n[3] = "IP address to use when connected to this network"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce tu IP"
		set global.i18n[3] = "Dirección IP a usar cuando se conecte a esta red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihre IP ein"
		set global.i18n[3] = "IP-Adresse, die beim Verbinden mit diesem Netzwerk verwendet wird"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez votre IP"
		set global.i18n[3] = "Adresse IP à utiliser lors de la connexion à ce réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci il tuo IP"
		set global.i18n[3] = "Indirizzo IP da utilizzare quando connesso a questa rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite seu IP"
		set global.i18n[3] = "Endereço IP a ser usado ao se conectar a esta rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw IP in"
		set global.i18n[3] = "IP-adres om te gebruiken bij verbinding met dit netwerk"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的IP"
		set global.i18n[3] = "连接到此网络时使用的IP地址"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите ваш IP"
		set global.i18n[3] = "IP-адрес для использования при подключении к этой сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "IPを入力してください"
		set global.i18n[3] = "このネットワークに接続するときに使用するIPアドレス"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_08"
	;EN
	set global.i18n[2] = "Optional Parameters"
	set global.i18n[3] = "Do you need to set your gateway manually? (not recommended)"
	set global.i18n[4] = {"YES","NO"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Parámetros Opcionales"
		set global.i18n[3] = "¿Necesitas configurar tu puerta de enlace manualmente? (no recomendado)"
		set global.i18n[4] = {"SÍ","NO"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Optionale Parameter"
		set global.i18n[3] = "Möchten Sie Ihr Gateway manuell einstellen? (nicht empfohlen)"
		set global.i18n[4] = {"JA","NEIN"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Paramètres Optionnels"
		set global.i18n[3] = "Avez-vous besoin de configurer votre passerelle manuellement? (non recommandé)"
		set global.i18n[4] = {"OUI","NON"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Parametri Opzionali"
		set global.i18n[3] = "Hai bisogno di impostare manualmente il tuo gateway? (non raccomandato)"
		set global.i18n[4] = {"SÌ","NO"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Parâmetros Opcionais"
		set global.i18n[3] = "Precisa configurar seu gateway manualmente? (não recomendado)"
		set global.i18n[4] = {"SIM","NÃO"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Optionele Parameters"
		set global.i18n[3] = "Wilt u uw gateway handmatig instellen? (niet aanbevolen)"
		set global.i18n[4] = {"JA","NEE"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "可选参数"
		set global.i18n[3] = "是否需要手动设置网关？（不推荐）"
		set global.i18n[4] = {"是","否"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Дополнительные Параметры"
		set global.i18n[3] = "Вам нужно вручную настроить шлюз? (не рекомендуется)"
		set global.i18n[4] = {"ДА","НЕТ"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オプションパラメータ"
		set global.i18n[3] = "ゲートウェイを手動で設定する必要がありますか？（非推奨）"
		set global.i18n[4] = {"はい","いいえ"}
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_09"
	;EN
	set global.i18n[2] = "Enter your Gateway"
	set global.i18n[3] = "Gateway IP address to use when connected to this network"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce tu Puerta de Enlace"
		set global.i18n[3] = "Dirección IP de la puerta de enlace a usar cuando se conecte a esta red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihr Gateway ein"
		set global.i18n[3] = "Gateway-IP-Adresse, die beim Verbinden mit diesem Netzwerk verwendet wird"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez votre passerelle"
		set global.i18n[3] = "Adresse IP de la passerelle à utiliser lors de la connexion à ce réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci il tuo Gateway"
		set global.i18n[3] = "Indirizzo IP del gateway da utilizzare quando connesso a questa rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite seu Gateway"
		set global.i18n[3] = "Endereço IP do gateway a ser usado ao se conectar a esta rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw Gateway in"
		set global.i18n[3] = "Gateway-IP-adres om te gebruiken bij verbinding met dit netwerk"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的网关"
		set global.i18n[3] = "连接到此网络时使用的网关IP地址"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите ваш шлюз"
		set global.i18n[3] = "IP-адрес шлюза для использования при подключении к этой сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ゲートウェイを入力してください"
		set global.i18n[3] = "このネットワークに接続するときに使用するゲートウェイのIPアドレス"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_10"
	;EN
	set global.i18n[2] = "Optional Parameters"
	set global.i18n[3] = "Do you need to set your netmask manually? (not recommended)"
	set global.i18n[4] = {"YES","NO"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Parámetros Opcionales"
		set global.i18n[3] = "¿Necesitas configurar tu máscara de red manualmente? (no recomendado)"
		set global.i18n[4] = {"SÍ","NO"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Optionale Parameter"
		set global.i18n[3] = "Möchten Sie Ihre Netzmaske manuell einstellen? (nicht empfohlen)"
		set global.i18n[4] = {"JA","NEIN"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Paramètres Optionnels"
		set global.i18n[3] = "Avez-vous besoin de configurer votre masque de sous-réseau manuellement? (non recommandé)"
		set global.i18n[4] = {"OUI","NON"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Parametri Opzionali"
		set global.i18n[3] = "Hai bisogno di impostare manualmente la tua subnet mask? (non raccomandato)"
		set global.i18n[4] = {"SÌ","NO"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Parâmetros Opcionais"
		set global.i18n[3] = "Precisa configurar sua máscara de rede manualmente? (não recomendado)"
		set global.i18n[4] = {"SIM","NÃO"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Optionele Parameters"
		set global.i18n[3] = "Wilt u uw subnetmasker handmatig instellen? (niet aanbevolen)"
		set global.i18n[4] = {"JA","NEE"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "可选参数"
		set global.i18n[3] = "是否需要手动设置子网掩码？（不推荐）"
		set global.i18n[4] = {"是","否"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Дополнительные Параметры"
		set global.i18n[3] = "Вам нужно вручную настроить маску подсети? (не рекомендуется)"
		set global.i18n[4] = {"ДА","НЕТ"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "オプションパラメータ"
		set global.i18n[3] = "サブネットマスクを手動で設定する必要がありますか？（非推奨）"
		set global.i18n[4] = {"はい","いいえ"}
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_11"
	;EN
	set global.i18n[2] = "Enter your Netmask"
	set global.i18n[3] = "Netmask to use when connected to this network"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Introduce tu Máscara de Red"
		set global.i18n[3] = "Máscara de red a usar cuando se conecte a esta red"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Geben Sie Ihre Netzmaske ein"
		set global.i18n[3] = "Netzmaske, die beim Verbinden mit diesem Netzwerk verwendet wird"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Entrez votre masque de sous-réseau"
		set global.i18n[3] = "Masque de sous-réseau à utiliser lors de la connexion à ce réseau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Inserisci la tua subnet mask"
		set global.i18n[3] = "Maschera di rete da utilizzare quando connesso a questa rete"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Digite sua Máscara de Rede"
		set global.i18n[3] = "Máscara de rede a ser usada ao se conectar a esta rede"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voer uw netmasker in"
		set global.i18n[3] = "Netmasker om te gebruiken bij verbinding met dit netwerk"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入您的子网掩码"
		set global.i18n[3] = "连接到此网络时使用的子网掩码"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Введите маску подсети"
		set global.i18n[3] = "Маска подсети для использования при подключении к этой сети"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "サブネットマスクを入力してください"
		set global.i18n[3] = "このネットワークに接続するときに使用するサブネットマスク"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_12"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "Check your WiFi settings and try again"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "Revisa la configuración de WiFi y vuelve a intentarlo"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Überprüfen Sie Ihre WiFi-Einstellungen und versuchen Sie es erneut"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Vérifiez vos paramètres WiFi et réessayez"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Controlla le impostazioni WiFi e riprova"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Verifique suas configurações de WiFi e tente novamente"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Controleer uw WiFi-instellingen en probeer het opnieuw"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "检查您的WiFi设置并重试"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Проверьте настройки WiFi и попробуйте снова"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "WiFi設定を確認して再試行してください"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_13"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "Check your wifi module and version"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "Revisa el módulo wifi y la versión"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Überprüfen Sie Ihr WiFi-Modul und Ihre Version"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Vérifiez votre module WiFi et votre version"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Controlla il modulo WiFi e la versione"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Verifique o módulo wifi e a versão"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Controleer uw wifi-module en versie"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "检查您的WiFi模块和版本"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Проверьте модуль wifi и версию"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "WiFiモジュールとバージョンを確認してください"
	M99

if global.i18n[1] == "macros_Network_WiFi_Add a new network_14"
	;EN
	set global.i18n[2] = "Connected"
	set global.i18n[3] = {"This is your IP address: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Conectado"
		set global.i18n[3] = {"Esta es tu dirección IP: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Verbunden"
		set global.i18n[3] = {"Dies ist Ihre IP-Adresse: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Connecté"
		set global.i18n[3] = {"Voici votre adresse IP : "^network.interfaces[1].actualIP}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Connesso"
		set global.i18n[3] = {"Questo è il tuo indirizzo IP: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Conectado"
		set global.i18n[3] = {"Este é o seu endereço IP: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Verbonden"
		set global.i18n[3] = {"Dit is uw IP-adres: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "已连接"
		set global.i18n[3] = {"这是您的IP地址: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Подключено"
		set global.i18n[3] = {"Ваш IP-адрес: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "接続済み"
		set global.i18n[3] = {"こちらがIPアドレスです: "^network.interfaces[1].actualIP}
	M99


;0:/macros/Network/WiFi/Connect to the network

if global.i18n[1] == "macros_Network_WiFi_Connect to the network_01"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "Check your WiFi settings and try again"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "Revisa la configuración de WiFi y vuelve a intentarlo"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Überprüfen Sie Ihre WiFi-Einstellungen und versuchen Sie es erneut"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Vérifiez vos paramètres WiFi et réessayez"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Controlla le impostazioni WiFi e riprova"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Verifique suas configurações de WiFi e tente novamente"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Controleer uw WiFi-instellingen en probeer het opnieuw"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "检查您的WiFi设置并重试"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Проверьте настройки WiFi и попробуйте снова"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "WiFi設定を確認して再試行してください"
	M99

if global.i18n[1] == "macros_Network_WiFi_Connect to the network_02"
	;EN
	set global.i18n[2] = "Connected"
	set global.i18n[3] = {"This is your IP address: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Conectado"
		set global.i18n[3] = {"Esta es tu dirección IP: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Verbunden"
		set global.i18n[3] = {"Dies ist Ihre IP-Adresse: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Connecté"
		set global.i18n[3] = {"Voici votre adresse IP : "^network.interfaces[1].actualIP}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Connesso"
		set global.i18n[3] = {"Questo è il tuo indirizzo IP: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Conectado"
		set global.i18n[3] = {"Este é o seu endereço IP: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Verbonden"
		set global.i18n[3] = {"Dit is uw IP-adres: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "已连接"
		set global.i18n[3] = {"这是您的IP地址: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Подключено"
		set global.i18n[3] = {"Ваш IP-адрес: "^network.interfaces[1].actualIP}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "接続済み"
		set global.i18n[3] = {"こちらがIPアドレスです: "^network.interfaces[1].actualIP}
	M99


;0:/macros/Network/WiFi/View available networks

if global.i18n[1] == "macros_Network_WiFi_View available networks_01"
	;EN
	set global.i18n[3] = "Please wait a moment."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Por favor, espera un momento."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Bitte warten Sie einen Moment."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Veuillez patienter un moment."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Attendere un momento."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Por favor, aguarde um momento."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Een ogenblik geduld alstublieft."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "请稍等片刻。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Пожалуйста, подождите немного."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "少々お待ちください。"
	M99

if global.i18n[1] == "macros_Network_WiFi_View available networks_02"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "Check your WiFi settings and try again"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "Revisa la configuración de WiFi y vuelve a intentarlo"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Überprüfen Sie Ihre WiFi-Einstellungen und versuchen Sie es erneut"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Vérifiez vos paramètres WiFi et réessayez"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Controlla le impostazioni WiFi e riprova"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Verifique suas configurações de WiFi e tente novamente"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Controleer uw WiFi-instellingen en probeer het opnieuw"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "检查您的WiFi设置并重试"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Проверьте настройки WiFi и попробуйте снова"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "WiFi設定を確認して再試行してください"
	M99

if global.i18n[1] == "macros_Network_WiFi_View available networks_03"
	;EN
	set global.i18n[2] = "List obtained"
	set global.i18n[3] = "Go to the Console section to see the obtained list"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Lista obtenida"
		set global.i18n[3] = "Ve a la sección de Consola para ver la lista obtenida"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Liste erhalten"
		set global.i18n[3] = "Gehen Sie zum Konsolenbereich, um die erhaltene Liste zu sehen"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Liste obtenue"
		set global.i18n[3] = "Allez dans la section Console pour voir la liste obtenue"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Lista ottenuta"
		set global.i18n[3] = "Vai alla sezione Console per vedere la lista ottenuta"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Lista obtida"
		set global.i18n[3] = "Vá para a seção Console para ver a lista obtida"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Lijst verkregen"
		set global.i18n[3] = "Ga naar het console-gedeelte om de verkregen lijst te bekijken"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "已获取列表"
		set global.i18n[3] = "转到控制台部分查看获取的列表"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Список получен"
		set global.i18n[3] = "Перейдите в раздел консоли, чтобы просмотреть полученный список"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "リスト取得済み"
		set global.i18n[3] = "取得したリストはコンソールセクションで確認してください"
	M99


;0:/macros/Others/Create Pellet Material

if global.i18n[1] == "macros_Others_Create Pellet Material_01"
	;EN
	set global.i18n[2] = "Material name"
	set global.i18n[3] = "Specify a name for your material"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Nombre del material"
		set global.i18n[3] = "Especifica un nombre para tu material"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Materialname"
		set global.i18n[3] = "Geben Sie einen Namen für Ihr Material an"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Nom du matériau"
		set global.i18n[3] = "Spécifiez un nom pour votre matériau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Nome del materiale"
		set global.i18n[3] = "Specifica un nome per il tuo materiale"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Nome do material"
		set global.i18n[3] = "Especifique um nome para o seu material"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Materiaalnaam"
		set global.i18n[3] = "Geef een naam op voor uw materiaal"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "材料名称"
		set global.i18n[3] = "为您的材料指定一个名称"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Название материала"
		set global.i18n[3] = "Укажите название для вашего материала"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "材料名"
		set global.i18n[3] = "材料の名前を指定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_02"
	;EN
	set global.i18n[2] = "Mode selection"
	set global.i18n[3] = "Indicate the material complexity"
	set global.i18n[4] = {"Basic","Advanced"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Selección de modo"
		set global.i18n[3] = "Indica la complejidad del material"
		set global.i18n[4] = {"Básico","Avanzado"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Modusauswahl"
		set global.i18n[3] = "Geben Sie die Materialkomplexität an"
		set global.i18n[4] = {"Einfach","Erweitert"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Sélection du mode"
		set global.i18n[3] = "Indiquez la complexité du matériau"
		set global.i18n[4] = {"Basique","Avancé"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Selezione modalità"
		set global.i18n[3] = "Indica la complessità del materiale"
		set global.i18n[4] = {"Base","Avanzato"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Seleção de modo"
		set global.i18n[3] = "Indique a complexidade do material"
		set global.i18n[4] = {"Básico","Avançado"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Modus selectie"
		set global.i18n[3] = "Geef de materiaalkomplexiteit aan"
		set global.i18n[4] = {"Basis","Geavanceerd"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "模式选择"
		set global.i18n[3] = "指示材料的复杂性"
		set global.i18n[4] = {"基本","高级"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Выбор режима"
		set global.i18n[3] = "Укажите сложность материала"
		set global.i18n[4] = {"Базовый","Продвинутый"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "モード選択"
		set global.i18n[3] = "材料の複雑さを指定してください"
		set global.i18n[4] = {"基本","上級"}
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_03"
	;EN
	set global.i18n[2] = "Select your language"
	set global.i18n[3] = "Indicate the language in which the material notes should appear"
	set global.i18n[4] = {"English","Spanish"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Selecciona tu idioma"
		set global.i18n[3] = "Indica el idioma en el que deberían aparecer las notas del material"
		set global.i18n[4] = {"Inglés","Español"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Wählen Sie Ihre Sprache"
		set global.i18n[3] = "Geben Sie die Sprache an, in der die Materialhinweise erscheinen sollen"
		set global.i18n[4] = {"Englisch","Spanisch"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Sélectionnez votre langue"
		set global.i18n[3] = "Indiquez la langue dans laquelle les notes du matériau doivent apparaître"
		set global.i18n[4] = {"Anglais","Espagnol"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Seleziona la tua lingua"
		set global.i18n[3] = "Indica la lingua in cui dovrebbero apparire le note del materiale"
		set global.i18n[4] = {"Inglese","Spagnolo"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Selecione seu idioma"
		set global.i18n[3] = "Indique o idioma em que as notas do material devem aparecer"
		set global.i18n[4] = {"Inglês","Espanhol"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Selecteer uw taal"
		set global.i18n[3] = "Geef de taal aan waarin de materiaalnotities moeten verschijnen"
		set global.i18n[4] = {"Engels","Spaans"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "选择您的语言"
		set global.i18n[3] = "指明材料备注应出现的语言"
		set global.i18n[4] = {"英语","西班牙语"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Выберите ваш язык"
		set global.i18n[3] = "Укажите язык, на котором должны отображаться примечания к материалу"
		set global.i18n[4] = {"Английский","Испанский"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "言語を選択してください"
		set global.i18n[3] = "材料の注釈が表示される言語を指定してください"
		set global.i18n[4] = {"英語","スペイン語"}
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_04"
	;EN
	set global.i18n[2] = "Output temperature"
	set global.i18n[3] = "Set the temperature for the area closest to the nozzle"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura de salida"
		set global.i18n[3] = "Establece la temperatura para el área más cercana a la boquilla"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Austrittstemperatur"
		set global.i18n[3] = "Stellen Sie die Temperatur für den Bereich in der Nähe der Düse ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température de sortie"
		set global.i18n[3] = "Réglez la température pour la zone la plus proche de la buse"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura di uscita"
		set global.i18n[3] = "Imposta la temperatura per l'area più vicina all'ugello"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura de saída"
		set global.i18n[3] = "Defina a temperatura para a área mais próxima ao bocal"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Uitgangstemperatuur"
		set global.i18n[3] = "Stel de temperatuur in voor het gebied dicht bij de nozzle"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输出温度"
		set global.i18n[3] = "设置最接近喷嘴的区域温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура выхода"
		set global.i18n[3] = "Установите температуру для зоны, ближайшей к соплу"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "出力温度"
		set global.i18n[3] = "ノズルに最も近い領域の温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_05"
	;EN
	set global.i18n[2] = "Input temperature"
	set global.i18n[3] = "Set the temperature for the area closest to the material input"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura de entrada"
		set global.i18n[3] = "Establece la temperatura para el área más cercana a la entrada del material"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Eingangstemperatur"
		set global.i18n[3] = "Stellen Sie die Temperatur für den Bereich in der Nähe des Materialeingangs ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température d'entrée"
		set global.i18n[3] = "Réglez la température pour la zone la plus proche de l'entrée du matériau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura di ingresso"
		set global.i18n[3] = "Imposta la temperatura per l'area più vicina all'ingresso del materiale"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura de entrada"
		set global.i18n[3] = "Defina a temperatura para a área mais próxima da entrada do material"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Ingangstemperatuur"
		set global.i18n[3] = "Stel de temperatuur in voor het gebied dicht bij de materiaalinvoer"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "输入温度"
		set global.i18n[3] = "设置最接近材料入口的区域温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура входа"
		set global.i18n[3] = "Установите температуру для зоны, ближайшей к входу материала"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "入力温度"
		set global.i18n[3] = "材料入力部に最も近い領域の温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_06"
	;EN
	set global.i18n[2] = "Bed temperature"
	set global.i18n[3] = "Set the temperature for the heated bed"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura de la cama"
		set global.i18n[3] = "Establece la temperatura de la cama caliente"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Betttemperatur"
		set global.i18n[3] = "Stellen Sie die Temperatur des beheizten Bettes ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température du lit"
		set global.i18n[3] = "Réglez la température du lit chauffant"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura del letto"
		set global.i18n[3] = "Imposta la temperatura del letto riscaldato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura da cama"
		set global.i18n[3] = "Defina a temperatura da cama aquecida"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bedtemperatuur"
		set global.i18n[3] = "Stel de temperatuur in voor het verwarmde bed"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "加热床温度"
		set global.i18n[3] = "设置加热床的温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура стола"
		set global.i18n[3] = "Установите температуру нагревательного стола"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ベッド温度"
		set global.i18n[3] = "加熱ベッドの温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_07"
	;EN
	set global.i18n[2] = "Flow rate"
	set global.i18n[3] = "Set the extruder flow rate"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Tasa de flujo"
		set global.i18n[3] = "Establece la tasa de flujo del extrusor"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Durchflussrate"
		set global.i18n[3] = "Stellen Sie die Durchflussrate des Extruders ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Débit"
		set global.i18n[3] = "Réglez le débit de l'extrudeur"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Portata"
		set global.i18n[3] = "Imposta la portata dell'estrusore"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Taxa de fluxo"
		set global.i18n[3] = "Defina a taxa de fluxo do extrusor"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Stroomsnelheid"
		set global.i18n[3] = "Stel de stroomsnelheid van de extruder in"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "流速"
		set global.i18n[3] = "设置挤出机的流速"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Скорость потока"
		set global.i18n[3] = "Установите скорость потока экструдера"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "流量"
		set global.i18n[3] = "押出機の流量を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_08"
	;EN
	set global.i18n[2] = "Cold extrusion protection"
	set global.i18n[3] = "Select if you want to allow or block extrusions and retractions below 140ºC"
	set global.i18n[4] = {"Block","Allow"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Protección contra extrusión en frío"
		set global.i18n[3] = "Selecciona si quieres permitir o bloquear extrusiones y retracciones por debajo de 140ºC"
		set global.i18n[4] = {"Bloquear","Permitir"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Schutz vor Kalt-Extrusion"
		set global.i18n[3] = "Wählen Sie, ob Sie Extrusionen und Retraktionen unter 140ºC zulassen oder blockieren möchten"
		set global.i18n[4] = {"Blockieren","Erlauben"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Protection contre l'extrusion à froid"
		set global.i18n[3] = "Sélectionnez si vous souhaitez autoriser ou bloquer les extrusions et rétractions en dessous de 140ºC"
		set global.i18n[4] = {"Bloquer","Autoriser"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Protezione contro estrusione a freddo"
		set global.i18n[3] = "Seleziona se consentire o bloccare estrusioni e retrazioni sotto i 140ºC"
		set global.i18n[4] = {"Bloccare","Consentire"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Proteção contra extrusão a frio"
		set global.i18n[3] = "Selecione se deseja permitir ou bloquear extrusões e retrações abaixo de 140ºC"
		set global.i18n[4] = {"Bloquear","Permitir"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bescherming tegen koude extrusie"
		set global.i18n[3] = "Selecteer of u extrusies en terugtrekkingen onder 140ºC wilt toestaan of blokkeren"
		set global.i18n[4] = {"Blokkeren","Toestaan"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "冷挤出保护"
		set global.i18n[3] = "选择是否允许或阻止低于140ºC的挤出和收回"
		set global.i18n[4] = {"阻止","允许"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Защита от холодной экструзии"
		set global.i18n[3] = "Выберите, хотите ли вы разрешить или заблокировать экструзию и втягивание при температуре ниже 140ºC"
		set global.i18n[4] = {"Блокировать","Разрешить"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "低温押出保護"
		set global.i18n[3] = "140ºC未満の押出しおよび引き戻しを許可またはブロックするか選択してください"
		set global.i18n[4] = {"ブロック","許可"}
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_09"
	;EN
	set global.i18n[2] = "Configure microsteps"
	set global.i18n[3] = "Configure the microsteps, allowed values: 1,2,4,8,16"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Configurar micro pasos"
		set global.i18n[3] = "Configura los micro pasos, valores permitidos: 1,2,4,8,16"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Mikroschritte konfigurieren"
		set global.i18n[3] = "Konfigurieren Sie die Mikroschritte, erlaubte Werte: 1,2,4,8,16"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Configurer les micro-pas"
		set global.i18n[3] = "Configurez les micro-pas, valeurs autorisées : 1,2,4,8,16"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Configura micro-passi"
		set global.i18n[3] = "Configura i micro-passi, valori ammessi: 1,2,4,8,16"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Configurar micropassos"
		set global.i18n[3] = "Configura os micropassos, valores permitidos: 1,2,4,8,16"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Configureer microstappen"
		set global.i18n[3] = "Configureer de microstappen, toegestane waarden: 1,2,4,8,16"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "配置微步进"
		set global.i18n[3] = "配置微步进，允许的值：1、2、4、8、16"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Настройка микрошагов"
		set global.i18n[3] = "Настройте микрошаги, допустимые значения: 1,2,4,8,16"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "マイクロステップの設定"
		set global.i18n[3] = "許可される値は1,2,4,8,16です"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_10"
	;EN
	set global.i18n[2] = "Motor currents"
	set global.i18n[3] = "Set motor currents (80-100%)"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Corrientes del motor"
		set global.i18n[3] = "Establece las corrientes del motor (80-100%)"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Motorströme"
		set global.i18n[3] = "Stellen Sie die Motorströme ein (80-100%)"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Courants moteur"
		set global.i18n[3] = "Réglez les courants du moteur (80-100%)"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Correnti del motore"
		set global.i18n[3] = "Imposta le correnti del motore (80-100%)"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Correntes do motor"
		set global.i18n[3] = "Defina as correntes do motor (80-100%)"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Motorstromen"
		set global.i18n[3] = "Stel de motorstromen in (80-100%)"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "电机电流"
		set global.i18n[3] = "设置电机电流（80-100％）"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Токи двигателя"
		set global.i18n[3] = "Установите токи двигателя (80-100%)"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "モーター電流"
		set global.i18n[3] = "モーターの電流を設定してください（80-100％）"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material_11"
	;EN
	set global.i18n[2] = "Chamber temperature"
	set global.i18n[3] = "Set the temperature for the heated chamber"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura de la cámara"
		set global.i18n[3] = "Establece la temperatura para la cámara calefactada"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Kammertemperatur"
		set global.i18n[3] = "Stellen Sie die Temperatur für die beheizte Kammer ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température de la chambre"
		set global.i18n[3] = "Définir la température de la chambre chauffée"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura camera"
		set global.i18n[3] = "Imposta la temperatura della camera riscaldata"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura da câmara"
		set global.i18n[3] = "Defina a temperatura da câmara aquecida"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Kamertemperatuur"
		set global.i18n[3] = "Stel de temperatuur van de verwarmde kamer in"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "腔体温度"
		set global.i18n[3] = "设置加热腔的温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура камеры"
		set global.i18n[3] = "Установите температуру нагреваемой камеры"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "チャンバー温度"
		set global.i18n[3] = "加熱チャンバーの温度を設定してください"
	M99


;0:/macros/Others/Sensor/Check Filament Sensor

if global.i18n[1] == "macros_Others_Diagnostics_Check Material Sensor_01"
	;EN
	set global.i18n[2] = "ATTENTION"
	set global.i18n[3] = "Make sure to remove the material from the printheads before proceeding. If there is material, remove it before continuing."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ATENCIÓN"
		set global.i18n[3] = "Asegúrate de quitar el material de los cabezales de impresión antes de continuar. Si hay material, retíralo antes de seguir."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "ACHTUNG"
		set global.i18n[3] = "Stellen Sie sicher, dass Sie das Material von den Druckköpfen entfernen, bevor Sie fortfahren. Wenn Material vorhanden ist, entfernen Sie es, bevor Sie fortfahren."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ATTENTION"
		set global.i18n[3] = "Assurez-vous de retirer le matériau des têtes d'impression avant de continuer. S'il y a du matériau, retirez-le avant de poursuivre."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ATTENZIONE"
		set global.i18n[3] = "Assicurati di rimuovere il materiale dalle testine di stampa prima di procedere. Se c'è del materiale, rimuovilo prima di continuare."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ATENÇÃO"
		set global.i18n[3] = "Certifique-se de remover o material das cabeças de impressão antes de prosseguir. Se houver material, remova-o antes de continuar."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "LET OP"
		set global.i18n[3] = "Zorg ervoor dat u het materiaal van de printkoppen verwijdert voordat u doorgaat. Als er materiaal is, verwijder het dan voordat u doorgaat."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "注意"
		set global.i18n[3] = "在继续之前，请确保从打印头中移除材料。如果有材料，请先移除后再继续。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ВНИМАНИЕ"
		;set global.i18n[3] = "Убедитесь, что материал удален с печатающих головок перед продолжением. Если материал присутствует, удалите его перед продолжением." ;Error
	if global.i18n[0] == "JA"
		set global.i18n[2] = "注意"
		set global.i18n[3] = "続行する前に、プリントヘッドから材料を取り除いてください。材料がある場合は、続行する前に取り除いてください。"
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Material Sensor_02"
	;EN
	set global.i18n[2] = "Material Sensor Tool "^var.receivedValue
	set global.i18n[3] = "Insert material into the sensor before continuing"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor de Material Herramienta "^var.receivedValue
		set global.i18n[3] = "Inserta el material en el sensor antes de continuar"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Materialsensor Werkzeug "^var.receivedValue
		set global.i18n[3] = "Material in den Sensor einführen, bevor Sie fortfahren"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur de matériau Outil "^var.receivedValue
		set global.i18n[3] = "Insérez le matériau dans le capteur avant de continuer"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Materiale Utensile "^var.receivedValue
		set global.i18n[3] = "Inserisci il materiale nel sensore prima di continuare"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor de Material Ferramenta "^var.receivedValue
		set global.i18n[3] = "Insira o material no sensor antes de continuar"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Materiaalsensor Gereedschap "^var.receivedValue
		set global.i18n[3] = "Plaats materiaal in de sensor voordat u doorgaat"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "材料传感器工具"^var.receivedValue
		set global.i18n[3] = "在继续之前将材料插入传感器"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик материала Инструмент "^var.receivedValue
		set global.i18n[3] = "Вставьте материал в датчик перед продолжением"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "材料センサー ツール "^var.receivedValue
		set global.i18n[3] = "続行する前に材料をセンサーに挿入してください"
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Material Sensor_03"
	;EN
	set global.i18n[2] = "Material Sensor Tool "^var.receivedValue
	set global.i18n[3] = "The sensor worked correctly"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor de Material Herramienta "^var.receivedValue
		set global.i18n[3] = "El sensor funcionó correctamente"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Materialsensor Werkzeug "^var.receivedValue
		set global.i18n[3] = "Der Sensor hat korrekt funktioniert"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur de matériau Outil "^var.receivedValue
		set global.i18n[3] = "Le capteur a fonctionné correctement"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Materiale Utensile "^var.receivedValue
		set global.i18n[3] = "Il sensore ha funzionato correttamente"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor de Material Ferramenta "^var.receivedValue
		set global.i18n[3] = "O sensor funcionou corretamente"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Materiaalsensor Gereedschap "^var.receivedValue
		set global.i18n[3] = "De sensor werkte correct"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "材料传感器工具"^var.receivedValue
		set global.i18n[3] = "传感器工作正常"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик материала Инструмент "^var.receivedValue
		set global.i18n[3] = "Датчик сработал правильно"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "材料センサー ツール "^var.receivedValue
		set global.i18n[3] = "センサーは正常に動作しました"
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Material Sensor_04"
	;EN
	set global.i18n[2] = "Material Sensor Tool "^var.receivedValue
	set global.i18n[3] = "The sensor did NOT work, please consult your trusted technician"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor de Material Herramienta "^var.receivedValue
		set global.i18n[3] = "El sensor NO funcionó, por favor consulta a tu técnico de confianza"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Materialsensor Werkzeug "^var.receivedValue
		set global.i18n[3] = "Der Sensor hat NICHT funktioniert, wenden Sie sich an Ihren Techniker"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur de matériau Outil "^var.receivedValue
		set global.i18n[3] = "Le capteur n'a PAS fonctionné, consultez votre technicien de confiance"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Materiale Utensile "^var.receivedValue
		set global.i18n[3] = "Il sensore NON ha funzionato, consulta il tuo tecnico di fiducia"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor de Material Ferramenta "^var.receivedValue
		set global.i18n[3] = "O sensor NÃO funcionou, consulte seu técnico de confiança"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Materiaalsensor Gereedschap "^var.receivedValue
		set global.i18n[3] = "De sensor heeft NIET gewerkt, raadpleeg uw vertrouwde technicus"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "材料传感器工具"^var.receivedValue
		set global.i18n[3] = "传感器未正常工作，请咨询您的技术员"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик материала Инструмент "^var.receivedValue
		set global.i18n[3] = "Датчик НЕ сработал, обратитесь к вашему технику"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "材料センサー ツール "^var.receivedValue
		set global.i18n[3] = "センサーが正常に動作しませんでした。信頼できる技術者にご相談ください"
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Material Sensor_05"
	;EN
	set global.i18n[3] = "The check of the available material sensors has finished"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "La comprobación de los sensores de material disponibles ha finalizado"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die Überprüfung der verfügbaren Materialsensoren ist abgeschlossen"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "La vérification des capteurs de matériau disponibles est terminée"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Il controllo dei sensori di materiale disponibili è terminato"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "A verificação dos sensores de material disponíveis foi concluída"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "De controle van de beschikbare materiaalsensoren is voltooid"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "可用材料传感器的检查已完成"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Проверка доступных датчиков материала завершена"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "利用可能な材料センサーの確認が完了しました"
	M99


;0:/macros/Others/Material sensor/Enable-Disable

if global.i18n[1] == "macros_Others_Material sensor_Enable-Disable_01"
	;EN
	set global.i18n[3] = "Sensor OFF"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Sensor DESACTIVADO"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Sensor AUS"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Capteur DÉSACTIVÉ"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Sensore SPENTO"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Sensor DESLIGADO"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Sensor UIT"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "传感器关闭"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Датчик ВЫКЛ"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "センサーOFF"
	M99

if global.i18n[1] == "macros_Others_Material sensor_Enable-Disable_02"
	;EN
	set global.i18n[3] = "Sensor ON"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Sensor ACTIVADO"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Sensor EIN"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Capteur ACTIVÉ"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Sensore ACCESO"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Sensor LIGADO"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Sensor AAN"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "传感器开启"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Датчик ВКЛ"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "センサーON"
	M99

;0:/macros/Others/Pellets Feeder/Manual Load
if global.i18n[1] == "macros_Others_Pellets Feeder_Manual Load_01"
	;EN
	set global.i18n[3] = "Pellet loading has been completed."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "La carga de pellets se ha completado."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die Pelletladung ist abgeschlossen."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Le chargement des pellets est terminé."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Il caricamento dei pellet è completato."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "O carregamento de pellets foi concluído."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Het laden van pellets is voltooid."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "颗粒加载已完成。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Загрузка гранул завершена."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "ペレットのロードが完了しました。"
	M99

if global.i18n[1] == "macros_Others_Pellets Feeder_Manual Load_02"
	;EN
	set global.i18n[3] = "Pellet loading has not completed. Please check your feeder or initiate a new load."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "La carga de pellets no se ha completado. Por favor, revise su alimentador o realice una nueva carga."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die Pelletladung wurde nicht abgeschlossen. Bitte überprüfen Sie Ihren Feeder oder starten Sie eine neue Ladung."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Le chargement des pellets n'est pas terminé. Veuillez vérifier votre chargeur ou recommencer le chargement."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Il caricamento dei pellet non è stato completato. Controlla il tuo alimentatore o avvia un nuovo carico."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "O carregamento de pellets não foi concluído. Verifique seu alimentador ou inicie uma nova carga."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Het laden van pellets is niet voltooid. Controleer uw invoerapparaat of start een nieuwe lading."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "颗粒加载未完成。请检查您的供料器或重新加载。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Загрузка гранул не завершена. Пожалуйста, проверьте податчик или загрузите заново."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "ペレットのロードが完了していません。フィーダーを確認するか、新しいロードを行ってください。"
	M99

if global.i18n[1] == "macros_Others_Pellets Feeder_Manual Load_03"
	;EN
	set global.i18n[3] = "Your pellet feeder is not activated."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Su alimentador de pellets no está activado."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Ihr Pelletförderer ist nicht aktiviert."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Votre alimentation en pellets n'est pas activée."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Il tuo alimentatore di pellet non è attivato."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "O seu alimentador de pellets não está ativado."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Uw pelletinvoer is niet geactiveerd."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "您的颗粒进料器未激活。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Ваш податчик гранул не активирован."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "ペレットフィーダーがアクティブになっていません。"
	M99

;0:/macros/Others/Pellets Feeder/Disable Feeder

if global.i18n[1] == "macros_Others_Pellets Feeder_Disable Feeder_01"
	;EN
	set global.i18n[3] = "Pellets Feeder Disable"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Desactivación del Alimentador de Pellets"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Pellets-Zuführung Deaktivieren"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Désactivation de l'alimenteur de granulés"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Disabilitazione del alimentatore di pellets"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Desativar alimentador de pellets"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Pellets Feeder Uitschakelen"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "禁用颗粒进料器"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Отключение подающего устройства для гранул"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "ペレット供給装置を無効にする"
	M99

;0:/macros/Others/Pellets Feeder/Enable Feeder

if global.i18n[1] == "macros_Others_Pellets Feeder_Enable Feeder_01"
	;EN
	set global.i18n[3] = "Pellets Feeder Enable"
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Activar Alimentador de Pellets"
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Pelletzuführung aktivieren"
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Activer l'alimentateur de granulés"
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Abilita alimentatore di pellet"
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Ativar alimentador de pellets"
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Pellettoevoer inschakelen"
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "启用颗粒进料器"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Включить подачу гранул"
	if global.i18n[0] == "JA"
		set global.i18n[3] = "ペレットフィーダーを有効にする"
	M99

;0:/macros/Others/Pellets Feeder/Material Sensor-Pellet Feeder
if global.i18n[1] == "macros_Others_Pellets_Feeder_Material_Sensor_Pellet_Feeder_01"
	;EN
	set global.i18n[3] = "Your print head is not compatible with this option."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Su cabezal no es compatible con esta opción."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Ihr Druckkopf ist mit dieser Option nicht kompatibel."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Votre tête d'impression n'est pas compatible avec cette option."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "La tua testina di stampa non è compatibile con questa opzione."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Sua cabeça de impressão não é compatível com esta opção."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Uw printkop is niet compatibel met deze optie."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "您的打印头与此选项不兼容。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Ваша печатающая головка несовместима с этой опцией."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "このオプションはお使いのプリントヘッドに対応していません。"
	M99

;0:/macros/Others/Change language

if global.i18n[1] == "macros_Other_Change language_01"
	;EN
	set global.i18n[2] = "Change language"
	set global.i18n[3] = "Select language"
	set global.i18n[4] = {"EN","ES","DE","FR","IT","PT","NL","ZH","RU","JA"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Cambiar idioma"
		set global.i18n[3] = "Selecciona el idioma"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Sprache ändern"
		set global.i18n[3] = "Sprache auswählen"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Changer de langue"
		set global.i18n[3] = "Sélectionnez la langue"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Cambia lingua"
		set global.i18n[3] = "Seleziona la lingua"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Mudar idioma"
		set global.i18n[3] = "Selecione o idioma"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Taal wijzigen"
		set global.i18n[3] = "Selecteer taal"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "更改语言"
		set global.i18n[3] = "选择语言"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Сменить язык"
		set global.i18n[3] = "Выберите язык"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "言語を変更"
		set global.i18n[3] = "言語を選択"
	M99

if global.i18n[1] == "macros_Other_Change language_02"
	;EN
	set global.i18n[2] = "Language changed"
	set global.i18n[3] = {"You have selected the "^global.i18n[0]^" language"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Idioma cambiado"
		set global.i18n[3] = {"Has seleccionado el idioma "^global.i18n[0]}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Sprache geändert"
		set global.i18n[3] = {"Sie haben die Sprache "^global.i18n[0]^" ausgewählt"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Langue modifiée"
		set global.i18n[3] = {"Vous avez sélectionné la langue "^global.i18n[0]}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Lingua cambiata"
		set global.i18n[3] = {"Hai selezionato la lingua "^global.i18n[0]}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Idioma alterado"
		set global.i18n[3] = {"Você selecionou o idioma "^global.i18n[0]}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Taal gewijzigd"
		set global.i18n[3] = {"U heeft de taal "^global.i18n[0]^" geselecteerd"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "语言已更改"
		set global.i18n[3] = {"您已选择 "^global.i18n[0]^" 语言"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Язык изменен"
		set global.i18n[3] = {"Вы выбрали язык "^global.i18n[0]}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "言語が変更されました"
		set global.i18n[3] = {"あなたは "^global.i18n[0]^" 言語を選択しました"}
	M99

;0:/macros/Others/Chamber/Set Heated Timer
if global.i18n[1] == "macros_Others_Chamber_Set Heated Timer_01"
	;EN
	set global.i18n[2] = "Set Temperature"
	set global.i18n[3] = "Set the temperature to preheat the heater"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Establece la temperatura"
		set global.i18n[3] = "Establece la temperatura a la que quiere precalentar el calefactor"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Temperatur einstellen"
		set global.i18n[3] = "Stellen Sie die Temperatur zum Vorheizen des Heizelements ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Définir la température"
		set global.i18n[3] = "Définissez la température pour préchauffer le chauffage"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Imposta la temperatura"
		set global.i18n[3] = "Imposta la temperatura per preriscaldare il riscaldatore"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Definir temperatura"
		set global.i18n[3] = "Defina a temperatura para pré-aquecer o aquecedor"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Temperatuur instellen"
		set global.i18n[3] = "Stel de temperatuur in om de verwarmer voor te verwarmen"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "设置温度"
		set global.i18n[3] = "设置预热加热器的温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Установить температуру"
		set global.i18n[3] = "Установите температуру для предварительного нагрева нагревателя"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "温度を設定"
		set global.i18n[3] = "ヒーターを予熱する温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Chamber_Set Heated Timer_02"
	;EN
	set global.i18n[2] = "Set delay time"
	set global.i18n[3] = "Set the delay time in hours to preheat the heater"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Establece el tiempo de espera"
		set global.i18n[3] = "Establece el tiempo en horas de retardoo para precalentar el calentador"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Wartezeit einstellen"
		set global.i18n[3] = "Stellen Sie die Verzögerungszeit in Stunden ein, um den Heizkörper vorzuheizen"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Définir le délai"
		set global.i18n[3] = "Définissez le temps d'attente en heures pour préchauffer le chauffage"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Imposta il tempo di attesa"
		set global.i18n[3] = "Imposta il tempo di ritardo in ore per preriscaldare il riscaldatore"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Definir tempo de espera"
		set global.i18n[3] = "Defina o tempo de atraso em horas para pré-aquecer o aquecedor"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Vertragingstijd instellen"
		set global.i18n[3] = "Stel de vertragingstijd in uren in om de verwarmer voor te verwarmen"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "设置等待时间"
		set global.i18n[3] = "设置预热加热器的延迟时间（小时）"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Установить время задержки"
		set global.i18n[3] = "Установите время задержки в часах для предварительного нагрева нагревателя"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "遅延時間を設定"
		set global.i18n[3] = "ヒーターを予熱する遅延時間（時間）を設定してください"
	M99

if global.i18n[1] == "macros_Others_Chamber_Set Heated Timer_03"
	;EN
	set global.i18n[3] = "The preheating timer has been stopped."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Se ha detenido el temporizador de precalentamiento."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Der Vorheiz-Timer wurde gestoppt."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Le minuteur de préchauffage a été arrêté."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Il timer di preriscaldamento è stato interrotto."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "O temporizador de pré-aquecimento foi interrompido."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "De voorverwarmingstimer is gestopt."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "预热定时器已停止。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Таймер предварительного нагрева остановлен."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "予熱タイマーが停止されました。"
	M99


;0:/macros/Others/Slicers Generator/Profiles Simplify v4 and v5

if global.i18n[1] == "macros_Others_Slicers Generator_Profiles Simplify v5_01"
	;EN
	set global.i18n[2] = "Generating profiles for simplify"
	set global.i18n[3] = "Wait a moment..."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Generando perfiles para simplify"
		set global.i18n[3] = "Espera un momento..."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Profile für Simplify werden erstellt"
		set global.i18n[3] = "Einen Moment bitte..."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Génération de profils pour Simplify"
		set global.i18n[3] = "Veuillez patienter..."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Generazione profili per Simplify"
		set global.i18n[3] = "Attendere un momento..."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Gerando perfis para Simplify"
		set global.i18n[3] = "Aguarde um momento..."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Profielen genereren voor Simplify"
		set global.i18n[3] = "Even geduld aub..."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "生成Simplify配置文件"
		set global.i18n[3] = "请稍等..."
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Генерация профилей для Simplify"
		set global.i18n[3] = "Пожалуйста, подождите..."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "Simplify用プロファイルを生成中"
		set global.i18n[3] = "少々お待ちください..."
	M99

if global.i18n[1] == "macros_Others_Slicers Generator_Profiles Simplify v5_02"
	;EN
	set global.i18n[2] = "Simplify profiles generated"
	set global.i18n[3] = "Go to System/Simplify/V5 and download your profiles."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Perfiles de Simplify generados"
		set global.i18n[3] = "Ve a System/Simplify/V5 y descarga tus perfiles."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Simplify-Profile erstellt"
		set global.i18n[3] = "Gehen Sie zu System/Simplify/V5 und laden Sie Ihre Profile herunter."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Profils Simplify générés"
		set global.i18n[3] = "Allez dans System/Simplify/V5 et téléchargez vos profils."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Profili Simplify generati"
		set global.i18n[3] = "Vai su System/Simplify/V5 e scarica i tuoi profili."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Perfis Simplify gerados"
		set global.i18n[3] = "Vá para System/Simplify/V5 e baixe seus perfis."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Simplify-profielen gegenereerd"
		set global.i18n[3] = "Ga naar System/Simplify/V5 en download uw profielen."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "已生成Simplify配置文件"
		set global.i18n[3] = "转到System/Simplify/V5并下载配置文件。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Профили Simplify созданы"
		set global.i18n[3] = "Перейдите в System/Simplify/V5 и скачайте свои профили."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "Simplifyのプロファイルが生成されました"
		set global.i18n[3] = "System/Simplify/V5に移動してプロファイルをダウンロードしてください。"
	M99

if global.i18n[1] == "macros_Others_Slicers Generator_Profiles Simplify v4_01"
	;EN
	set global.i18n[2] = "Simplify profiles generated"
	set global.i18n[3] = "Go to System/Slicers/Simplify/V4 and download your profiles."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Perfiles de Simplify generados"
		set global.i18n[3] = "Ve a System/Slicers/Simplify/V4 y descarga tus perfiles."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Simplify-Profile erstellt"
		set global.i18n[3] = "Gehen Sie zu System/Slicers/Simplify/V4 und laden Sie Ihre Profile herunter."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Profils Simplify générés"
		set global.i18n[3] = "Allez dans System/Slicers/Simplify/V4 et téléchargez vos profils."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Profili Simplify generati"
		set global.i18n[3] = "Vai su System/Slicers/Simplify/V4 e scarica i tuoi profili."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Perfis Simplify gerados"
		set global.i18n[3] = "Vá para System/Slicers/Simplify/V4 e baixe seus perfis."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Simplify-profielen gegenereerd"
		set global.i18n[3] = "Ga naar System/Slicers/Simplify/V4 en download uw profielen."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "已生成Simplify配置文件"
		set global.i18n[3] = "转到System/Slicers/Simplify/V4并下载配置文件。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Профили Simplify созданы"
		set global.i18n[3] = "Перейдите в System/Slicers/Simplify/V4 и скачайте свои профили."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "Simplifyのプロファイルが生成されました"
		set global.i18n[3] = "System/Slicers/Simplify/V4に移動してプロファイルをダウンロードしてください。"
	M99

;0:/macros/Others/Firmware verification
if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_01"
	;EN
	set global.i18n[2] = {boards[global.data[0]].name}
	set global.i18n[3] = {"The electronics are on the CORRECT version. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"La electrónica se encuentra en la versión CORRECTA. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Die Elektronik ist auf der KORREKTEN Version. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"L'électronique est sur la version CORRECTE. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"L'elettronica è sulla versione CORRETTA. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"A eletrônica está na versão CORRETA. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"De elektronica is op de JUISTE versie. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"电子设备处于正确的版本。 "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Электроника находится на ПРАВИЛЬНОЙ версии. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"電子機器は正しいバージョンです。 "^boards[global.data[0]].firmwareVersion}
	M99


if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_02"
	;EN
	set global.i18n[2] = {boards[global.data[0]].name}
	set global.i18n[3] = {"The electronics are NOT on the correct version. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"La electrónica NO se encuentra en la versión correcta. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Die Elektronik ist NICHT auf der richtigen Version. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"L'électronique N'EST PAS sur la bonne version. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"L'elettronica NON è sulla versione corretta. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"A eletrônica NÃO está na versão correta. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"De elektronica is NIET op de juiste versie. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"电子设备未处于正确的版本。 "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Электроника находится НЕ на правильной версии. "^boards[global.data[0]].firmwareVersion}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"電子機器は正しいバージョンではありません。 "^boards[global.data[0]].firmwareVersion}
	M99


if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_03"
	;EN
	set global.i18n[2] = {boards[global.data[0]].name}
	set global.i18n[3] = {"Proceeding with the installation of "^boards[global.data[0]].firmwareFileName}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Se procederá a la instalación de "^boards[global.data[0]].firmwareFileName}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Die Installation von "^boards[global.data[0]].firmwareFileName^" wird fortgesetzt"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Installation de "^boards[global.data[0]].firmwareFileName^" en cours"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Si procederà con l'installazione di "^boards[global.data[0]].firmwareFileName}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Procedendo com a instalação de "^boards[global.data[0]].firmwareFileName}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Doorgaan met de installatie van "^boards[global.data[0]].firmwareFileName}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"正在进行 "^boards[global.data[0]].firmwareFileName^" 的安装"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {"Продолжается установка "^boards[global.data[0]].firmwareFileName}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {boards[global.data[0]].name}
		set global.i18n[3] = {" "^boards[global.data[0]].firmwareFileName^" のインストールを進めています"}
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_04"
	;EN
	set global.i18n[2] = {"Module "^network.interfaces[1].type}
	set global.i18n[3] = {"The module "^network.interfaces[1].type^" is NOT on the correct version. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {"Módulo "^network.interfaces[1].type}
		set global.i18n[3] = {"El módulo "^network.interfaces[1].type^" NO se encuentra en la versión correcta. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {"Modul "^network.interfaces[1].type}
		set global.i18n[3] = {"Das Modul "^network.interfaces[1].type^" ist NICHT in der richtigen Version. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {"Module "^network.interfaces[1].type}
		set global.i18n[3] = {"Le module "^network.interfaces[1].type^" n'est PAS dans la bonne version. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {"Modulo "^network.interfaces[1].type}
		set global.i18n[3] = {"Il modulo "^network.interfaces[1].type^" NON è nella versione corretta. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {"Módulo "^network.interfaces[1].type}
		set global.i18n[3] = {"O módulo "^network.interfaces[1].type^" NÃO está na versão correta. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {"Module "^network.interfaces[1].type}
		set global.i18n[3] = {"De module "^network.interfaces[1].type^" is NIET in de juiste versie. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {"模块 "^network.interfaces[1].type}
		set global.i18n[3] = {"模块 "^network.interfaces[1].type^" 不是正确的版本。 "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {"Модуль "^network.interfaces[1].type}
		set global.i18n[3] = {"Модуль "^network.interfaces[1].type^" НЕ находится в правильной версии. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {"モジュール "^network.interfaces[1].type}
		set global.i18n[3] = {"モジュール "^network.interfaces[1].type^" は正しいバージョンではありません。 "^network.interfaces[1].firmwareVersion}
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_05"
	;EN
	set global.i18n[2] = {"Module "^network.interfaces[1].type}
	set global.i18n[3] = {"Proceeding with the installation of the module "^network.interfaces[1].type}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {"Módulo "^network.interfaces[1].type}
		set global.i18n[3] = {"Se procederá a la instalación del módulo "^network.interfaces[1].type}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {"Modul "^network.interfaces[1].type}
		set global.i18n[3] = {"Die Installation des Moduls "^network.interfaces[1].type^" wird fortgesetzt"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {"Module "^network.interfaces[1].type}
		set global.i18n[3] = {"Installation du module "^network.interfaces[1].type^" en cours"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {"Modulo "^network.interfaces[1].type}
		set global.i18n[3] = {"Si procederà con l'installazione del modulo "^network.interfaces[1].type}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {"Módulo "^network.interfaces[1].type}
		set global.i18n[3] = {"Procedendo com a instalação do módulo "^network.interfaces[1].type}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {"Module "^network.interfaces[1].type}
		set global.i18n[3] = {"Doorgaan met de installatie van de module "^network.interfaces[1].type}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {"模块 "^network.interfaces[1].type}
		set global.i18n[3] = {"正在进行模块 "^network.interfaces[1].type^" 的安装"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {"Модуль "^network.interfaces[1].type}
		set global.i18n[3] = {"Продолжается установка модуля "^network.interfaces[1].type}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {"モジュール "^network.interfaces[1].type}
		set global.i18n[3] = {"モジュール "^network.interfaces[1].type^" のインストールを進めています"}
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_06"
	;EN
	set global.i18n[2] = {"Module "^network.interfaces[1].type}
	set global.i18n[3] = {"The module "^network.interfaces[1].type^" is on the CORRECT version. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "ES"
		set global.i18n[2] = {"Módulo "^network.interfaces[1].type}
		set global.i18n[3] = {"El módulo "^network.interfaces[1].type^" se encuentra en la versión CORRECTA. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "DE"
		set global.i18n[2] = {"Modul "^network.interfaces[1].type}
		set global.i18n[3] = {"Das Modul "^network.interfaces[1].type^" ist in der KORREKTEN Version. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "FR"
		set global.i18n[2] = {"Module "^network.interfaces[1].type}
		set global.i18n[3] = {"Le module "^network.interfaces[1].type^" est sur la version CORRECTE. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "IT"
		set global.i18n[2] = {"Modulo "^network.interfaces[1].type}
		set global.i18n[3] = {"Il modulo "^network.interfaces[1].type^" è nella versione CORRETTA. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "PT"
		set global.i18n[2] = {"Módulo "^network.interfaces[1].type}
		set global.i18n[3] = {"O módulo "^network.interfaces[1].type^" está na versão CORRETA. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "NL"
		set global.i18n[2] = {"Module "^network.interfaces[1].type}
		set global.i18n[3] = {"De module "^network.interfaces[1].type^" is op de JUISTE versie. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = {"模块 "^network.interfaces[1].type}
		set global.i18n[3] = {"模块 "^network.interfaces[1].type^" 处于正确的版本。 "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "RU"
		set global.i18n[2] = {"Модуль "^network.interfaces[1].type}
		set global.i18n[3] = {"Модуль "^network.interfaces[1].type^" находится в ПРАВИЛЬНОЙ версии. "^network.interfaces[1].firmwareVersion}
	if global.i18n[0] == "JA"
		set global.i18n[2] = {"モジュール "^network.interfaces[1].type}
		set global.i18n[3] = {"モジュール "^network.interfaces[1].type^" は正しいバージョンです。 "^network.interfaces[1].firmwareVersion}
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_07"
	;EN
	set global.i18n[2] = "ERROR"
	set global.i18n[3] = "No Wifi module detected"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "ERROR"
		set global.i18n[3] = "No se ha detectado módulo Wifi"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "FEHLER"
		set global.i18n[3] = "Kein WLAN-Modul erkannt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "ERREUR"
		set global.i18n[3] = "Aucun module Wifi détecté"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "ERRORE"
		set global.i18n[3] = "Nessun modulo Wifi rilevato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "ERRO"
		set global.i18n[3] = "Nenhum módulo Wifi detectado"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "FOUT"
		set global.i18n[3] = "Geen Wifi-module gedetecteerd"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "错误"
		set global.i18n[3] = "未检测到 Wifi 模块"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "ОШИБКА"
		set global.i18n[3] = "Модуль Wifi не обнаружен"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "エラー"
		set global.i18n[3] = "Wifi モジュールが検出されませんでした"
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_08"
	;EN
	set global.i18n[2] = "PanelDue"
	set global.i18n[3] = {"Ensure that the PanelDue is on version "^global.data[0]^". Is it on this version?"}
	set global.i18n[4] = {"YES","NO"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Asegúrese de que el PanelDue está en la versión "^global.data[0]^". ¿Se encuentra en dicha versión?"}
		set global.i18n[4] = {"SI","NO"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Stellen Sie sicher, dass das PanelDue auf Version "^global.data[0]^" ist. Befindet es sich in dieser Version?"}
		set global.i18n[4] = {"JA","NEIN"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Assurez-vous que le PanelDue est en version "^global.data[0]^". Est-il sur cette version ?"}
		set global.i18n[4] = {"OUI","NON"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Assicurarsi che il PanelDue sia nella versione "^global.data[0]^". Si trova in questa versione?"}
		set global.i18n[4] = {"SI","NO"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Certifique-se de que o PanelDue está na versão "^global.data[0]^". Está nesta versão?"}
		set global.i18n[4] = {"SIM","NÃO"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Zorg ervoor dat de PanelDue op versie "^global.data[0]^" staat. Staat het op deze versie?"}
		set global.i18n[4] = {"JA","NEE"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"请确保 PanelDue 处于版本 "^global.data[0]^"。它处于该版本吗？"}
		set global.i18n[4] = {"是","否"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"Убедитесь, что PanelDue находится в версии "^global.data[0]^". Это так?"}
		set global.i18n[4] = {"ДА","НЕТ"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "PanelDue"
		set global.i18n[3] = {"PanelDue がバージョン "^global.data[0]^" であることを確認してください。このバージョンですか？"}
		set global.i18n[4] = {"はい","いいえ"}
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_09"
	;EN
	set global.i18n[2] = "PanelDue"
	set global.i18n[3] = {"You have indicated that the PanelDue is on version "^global.data[0]}
	if global.i18n[0] == "ES"
		set global.i18n[3] = {"Has indicado que el PanelDue se encuentra en la versión "^global.data[0]}
	if global.i18n[0] == "DE"
		set global.i18n[3] = {"Sie haben angegeben, dass das PanelDue in Version "^global.data[0]^" ist"}
	if global.i18n[0] == "FR"
		set global.i18n[3] = {"Vous avez indiqué que le PanelDue est en version "^global.data[0]}
	if global.i18n[0] == "IT"
		set global.i18n[3] = {"Hai indicato che il PanelDue è nella versione "^global.data[0]}
	if global.i18n[0] == "PT"
		set global.i18n[3] = {"Você indicou que o PanelDue está na versão "^global.data[0]}
	if global.i18n[0] == "NL"
		set global.i18n[3] = {"U heeft aangegeven dat de PanelDue in versie "^global.data[0]^" is"}
	if global.i18n[0] == "ZH"
		set global.i18n[3] = {"您已指示 PanelDue 处于版本 "^global.data[0]}
	if global.i18n[0] == "RU"
		set global.i18n[3] = {"Вы указали, что PanelDue находится в версии "^global.data[0]}
	if global.i18n[0] == "JA"
		set global.i18n[3] = {"PanelDue がバージョン "^global.data[0]^" であることを指定しました"}
	M99

if global.i18n[1] == "macros_Others_Diagnostics_Check Firmware_10"
	;EN
	set global.i18n[2] = "PanelDue"
	set global.i18n[3] = "Proceeding with the installation of PanelDue."
	if global.i18n[0] == "ES"
		set global.i18n[3] = "Se procederá a la instalación del PanelDue."
	if global.i18n[0] == "DE"
		set global.i18n[3] = "Die Installation des PanelDue wird fortgesetzt."
	if global.i18n[0] == "FR"
		set global.i18n[3] = "Installation du PanelDue en cours."
	if global.i18n[0] == "IT"
		set global.i18n[3] = "Si procederà con l'installazione del PanelDue."
	if global.i18n[0] == "PT"
		set global.i18n[3] = "Procedendo com a instalação do PanelDue."
	if global.i18n[0] == "NL"
		set global.i18n[3] = "Doorgaan met de installatie van PanelDue."
	if global.i18n[0] == "ZH"
		set global.i18n[3] = "正在进行 PanelDue 的安装。"
	if global.i18n[0] == "RU"
		set global.i18n[3] = "Продолжается установка PanelDue."
	if global.i18n[0] == "JA"
		set global.i18n[3] = "PanelDue のインストールを進めています。"
	M99


;0:/sys/autopower.g

if global.i18n[1] == "sys_autopower_01"
	;EN
	set global.i18n[2] = "Power failure detected"
	set global.i18n[3] = "Do you want to get back in print?"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Fallo de energía detectado"
		set global.i18n[3] = "¿Quieres reanudar la impresión?"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Stromausfall erkannt"
		set global.i18n[3] = "Möchten Sie den Druck fortsetzen?"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Panne de courant détectée"
		set global.i18n[3] = "Voulez-vous reprendre l'impression ?"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Interruzione di corrente rilevata"
		set global.i18n[3] = "Vuoi riprendere la stampa?"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Falha de energia detectada"
		set global.i18n[3] = "Deseja retomar a impressão?"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Stroomuitval gedetecteerd"
		set global.i18n[3] = "Wilt u de afdruk hervatten?"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "检测到电源故障"
		set global.i18n[3] = "是否要恢复打印？"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Обнаружено отключение питания"
		set global.i18n[3] = "Вы хотите возобновить печать?"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "電源障害が検出されました"
		set global.i18n[3] = "印刷を再開しますか？"
	M99


;0:/sys/F_carga.g

if global.i18n[1] == "sys_F_carga_01"
	;EN
	set global.i18n[2] = "Loading"
	set global.i18n[3] = "Wait till the LED turns on to charge the filament."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Cargando"
		set global.i18n[3] = "Espera hasta que se encienda el LED para cargar el filamento."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Laden"
		set global.i18n[3] = "Warten Sie, bis die LED leuchtet, um das Filament zu laden."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Chargement"
		set global.i18n[3] = "Attendez que le voyant s'allume pour charger le filament."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Caricamento"
		set global.i18n[3] = "Attendere che si accenda il LED per caricare il filamento."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Carregando"
		set global.i18n[3] = "Aguarde até que o LED acenda para carregar o filamento."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bezig met laden"
		set global.i18n[3] = "Wacht tot het LED-lampje brandt om het filament te laden."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "加载中"
		set global.i18n[3] = "等待LED亮起以加载长丝。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Загрузка"
		set global.i18n[3] = "Подождите, пока не загорится светодиод, чтобы загрузить филамент."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ロード中"
		set global.i18n[3] = "フィラメントをロードするためにLEDが点灯するまで待ってください。"
	M99

if global.i18n[1] == "sys_F_carga_02"
	;EN
	set global.i18n[2] = "Loading..."
	set global.i18n[3] = "Check that the material is in the nozzle"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Cargando..."
		set global.i18n[3] = "Verifica que el material esté en la boquilla"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Laden..."
		set global.i18n[3] = "Überprüfen Sie, ob das Material in der Düse ist"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Chargement..."
		set global.i18n[3] = "Vérifiez que le matériau est dans la buse"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Caricamento..."
		set global.i18n[3] = "Verificare che il materiale sia nell'ugello"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Carregando..."
		set global.i18n[3] = "Verifique se o material está no bocal"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bezig met laden..."
		set global.i18n[3] = "Controleer of het materiaal in de nozzle zit"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "加载中..."
		set global.i18n[3] = "检查材料是否在喷嘴中"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Загрузка..."
		set global.i18n[3] = "Проверьте, что материал находится в сопле"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ロード中..."
		set global.i18n[3] = "ノズルに材料があることを確認してください"
	M99


;0:/sys/F_descarga.g

if global.i18n[1] == "sys_F_descarga_01"
	;EN
	set global.i18n[2] = "Unloading"
	set global.i18n[3] = "Wait till the LED turns on to unload the filament."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Descargando"
		set global.i18n[3] = "Espera hasta que se encienda el LED para descargar el filamento."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Entladen"
		set global.i18n[3] = "Warten Sie, bis die LED leuchtet, um das Filament zu entladen."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Déchargement"
		set global.i18n[3] = "Attendez que le voyant s'allume pour décharger le filament."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Scaricamento"
		set global.i18n[3] = "Attendere che si accenda il LED per scaricare il filamento."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Descarregando"
		set global.i18n[3] = "Aguarde até que o LED acenda para descarregar o filamento."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bezig met ontladen"
		set global.i18n[3] = "Wacht tot het LED-lampje brandt om het filament te ontladen."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "卸载中"
		set global.i18n[3] = "等待LED亮起以卸载长丝。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Выгрузка"
		set global.i18n[3] = "Подождите, пока не загорится светодиод, чтобы выгрузить филамент."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "アンロード中"
		set global.i18n[3] = "フィラメントをアンロードするためにLEDが点灯するまで待ってください。"
	M99

if global.i18n[1] == "sys_F_descarga_02"
	;EN
	set global.i18n[2] = "Unloading..."
	set global.i18n[3] = "Check the material is unloaded"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Descargando..."
		set global.i18n[3] = "Verifica que el material esté descargado"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Entladen..."
		set global.i18n[3] = "Überprüfen Sie, ob das Material entladen ist"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Déchargement..."
		set global.i18n[3] = "Vérifiez que le matériau est déchargé"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Scaricamento..."
		set global.i18n[3] = "Verificare che il materiale sia stato scaricato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Descarregando..."
		set global.i18n[3] = "Verifique se o material foi descarregado"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bezig met ontladen..."
		set global.i18n[3] = "Controleer of het materiaal is ontladen"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "卸载中..."
		set global.i18n[3] = "检查材料是否已卸载"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Выгрузка..."
		set global.i18n[3] = "Проверьте, что материал выгружен"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "アンロード中..."
		set global.i18n[3] = "材料がアンロードされていることを確認してください"
	M99


;0:/sys/trigger2.g

if global.i18n[1] == "sys_trigger2_01"
	;EN
	set global.i18n[2] = "Sensor Left_Tool"
	set global.i18n[3] = "No filament detected"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor Herramienta Izquierda"
		set global.i18n[3] = "No se detectó filamento"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Sensor Links_Werkzeug"
		set global.i18n[3] = "Kein Filament erkannt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur Outil Gauche"
		set global.i18n[3] = "Aucun filament détecté"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Strumento Sinistro"
		set global.i18n[3] = "Filamento non rilevato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor Ferramenta Esquerda"
		set global.i18n[3] = "Nenhum filamento detectado"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Sensor Linker_Gereedschap"
		set global.i18n[3] = "Geen filament gedetecteerd"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "左工具传感器"
		set global.i18n[3] = "未检测到长丝"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик Левого_Инструмента"
		set global.i18n[3] = "Филамент не обнаружен"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "左ツールセンサー"
		set global.i18n[3] = "フィラメントが検出されません"
	M99

if global.i18n[1] == "sys_trigger2_02"
	;EN
	set global.i18n[2] = "Sensor Left_Tool"
	set global.i18n[3] = "No pellets detected"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor Herramienta Izquierda"
		set global.i18n[3] = "No se detectaron pellets"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Sensor Links_Werkzeug"
		set global.i18n[3] = "Keine Pellets erkannt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur Outil Gauche"
		set global.i18n[3] = "Aucun granulé détecté"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Strumento Sinistro"
		set global.i18n[3] = "Nessun pellet rilevato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor Ferramenta Esquerda"
		set global.i18n[3] = "Nenhum pellet detectado"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Sensor Linker_Gereedschap"
		set global.i18n[3] = "Geen pellets gedetecteerd"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "左工具传感器"
		set global.i18n[3] = "未检测到颗粒"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик Левого_Инструмента"
		set global.i18n[3] = "Пеллеты не обнаружены"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "左ツールセンサー"
		set global.i18n[3] = "ペレットが検出されません"
	M99


;0:/sys/trigger3.g

if global.i18n[1] == "sys_trigger3_01"
	;EN
	set global.i18n[2] = "Sensor Right_Tool"
	set global.i18n[3] = "No filament detected"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor Herramienta Derecha"
		set global.i18n[3] = "No se detectó filamento"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Sensor Rechts_Werkzeug"
		set global.i18n[3] = "Kein Filament erkannt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur Outil Droit"
		set global.i18n[3] = "Aucun filament détecté"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Strumento Destro"
		set global.i18n[3] = "Filamento non rilevato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor Ferramenta Direita"
		set global.i18n[3] = "Nenhum filamento detectado"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Sensor Rechter_Gereedschap"
		set global.i18n[3] = "Geen filament gedetecteerd"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "右工具传感器"
		set global.i18n[3] = "未检测到长丝"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик Правого_Инструмента"
		set global.i18n[3] = "Филамент не обнаружен"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "右ツールセンサー"
		set global.i18n[3] = "フィラメントが検出されません"
	M99

if global.i18n[1] == "sys_trigger3_02"
	;EN
	set global.i18n[2] = "Sensor Right_Tool"
	set global.i18n[3] = "No pellets detected"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Sensor Herramienta Derecha"
		set global.i18n[3] = "No se detectaron pellets"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Sensor Rechts_Werkzeug"
		set global.i18n[3] = "Keine Pellets erkannt"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Capteur Outil Droit"
		set global.i18n[3] = "Aucun granulé détecté"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Sensore Strumento Destro"
		set global.i18n[3] = "Nessun pellet rilevato"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Sensor Ferramenta Direita"
		set global.i18n[3] = "Nenhum pellet detectado"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Sensor Rechter_Gereedschap"
		set global.i18n[3] = "Geen pellets gedetecteerd"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "右工具传感器"
		set global.i18n[3] = "未检测到颗粒"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Датчик Правого_Инструмента"
		set global.i18n[3] = "Пеллеты не обнаружены"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "右ツールセンサー"
		set global.i18n[3] = "ペレットが検出されません"
	M99

;0:/macros/Others/Create Pellet Material (Pulsar)
if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_01"
	;EN
	set global.i18n[2] = "Material name"
	set global.i18n[3] = "Specify a name for your material"
	set global.i18n[4] = "PLA"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Nombre del material"
		set global.i18n[3] = "Especifique un nombre para su material"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Materialname"
		set global.i18n[3] = "Geben Sie einen Namen für Ihr Material an"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Nom du matériau"
		set global.i18n[3] = "Spécifiez un nom pour votre matériau"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Nome del materiale"
		set global.i18n[3] = "Specifica un nome per il tuo materiale"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Nome do material"
		set global.i18n[3] = "Especifique um nome para o seu material"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Materiaalnaam"
		set global.i18n[3] = "Geef een naam op voor uw materiaal"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "材料名称"
		set global.i18n[3] = "请为您的材料指定一个名称"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Название материала"
		set global.i18n[3] = "Укажите имя для вашего материала"
		set global.i18n[4] = "PLA"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "材料名"
		set global.i18n[3] = "材料の名前を指定してください"
		set global.i18n[4] = "PLA"
	M99


if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_02"
	;EN
	set global.i18n[2] = "Confirmation"
	set global.i18n[3] = "The material " ^ global.data[0] ^ " already exists. Do you want to overwrite it?"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Confirmación"
		set global.i18n[3] = "El material " ^ global.data[0] ^ " ya existe. ¿Deseas sobrescribirlo?"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Bestätigung"
		set global.i18n[3] = "Das Material " ^ global.data[0] ^ " existiert bereits. Möchten Sie es überschreiben?"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Confirmation"
		set global.i18n[3] = "Le matériau " ^ global.data[0] ^ " existe déjà. Voulez-vous l'écraser ?"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Conferma"
		set global.i18n[3] = "Il materiale " ^ global.data[0] ^ " esiste già. Vuoi sovrascriverlo?"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Confirmação"
		set global.i18n[3] = "O material " ^ global.data[0] ^ " já existe. Deseja sobrescrevê-lo?"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Bevestiging"
		set global.i18n[3] = "Het materiaal " ^ global.data[0] ^ " bestaat al. Wilt u het overschrijven?"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "确认"
		set global.i18n[3] = "材料 " ^ global.data[0] ^ " 已存在。是否覆盖？"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Подтверждение"
		set global.i18n[3] = "Материал " ^ global.data[0] ^ " уже существует. Перезаписать?"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "確認"
		set global.i18n[3] = "材料 " ^ global.data[0] ^ " は既に存在します。上書きしますか？"
	M99


if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_03"
	;EN
	set global.i18n[2] = "Nozzle Zone Temperature"
	set global.i18n[3] = "Set the temperature for the zone closest to the nozzle"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura zona boquilla"
		set global.i18n[3] = "Defina la temperatura para la zona más cercana a la boquilla"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Temperatur Düsenbereich"
		set global.i18n[3] = "Legen Sie die Temperatur für den bereich in der Nähe der Düse fest"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température zone buse"
		set global.i18n[3] = "Définissez la température de la zone la plus proche de la buse"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura zona ugello"
		set global.i18n[3] = "Imposta la temperatura per la zona più vicina all'ugello"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura da zona do bico"
		set global.i18n[3] = "Defina a temperatura para a zona mais próxima do bico"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Temperatuur nozzlezone"
		set global.i18n[3] = "Stel de temperatuur in voor de zone dichtst bij de nozzle"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "喷嘴区域温度"
		set global.i18n[3] = "设置最靠近喷嘴区域的温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура зоны сопла"
		set global.i18n[3] = "Задайте температуру для зоны, ближайшей к соплу"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ノズル付近の温度"
		set global.i18n[3] = "ノズルに最も近いゾーンの温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_04"
	;EN
	set global.i18n[2] = "Central Zone Temperature"
	set global.i18n[3] = "Set the temperature for the intermediate zone"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura zona central"
		set global.i18n[3] = "Defina la temperatura para la zona intermedia"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Temperatur mittlere Zone"
		set global.i18n[3] = "Legen Sie die Temperatur für die mittlere Zone fest"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température zone centrale"
		set global.i18n[3] = "Définissez la température pour la zone intermédiaire"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura zona centrale"
		set global.i18n[3] = "Imposta la temperatura per la zona intermedia"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura da zona central"
		set global.i18n[3] = "Defina a temperatura para a zona intermediária"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Temperatuur centrale zone"
		set global.i18n[3] = "Stel de temperatuur in voor de middelste zone"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "中部区域温度"
		set global.i18n[3] = "设置中部区域的温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура центральной зоны"
		set global.i18n[3] = "Задайте температуру для центральной зоны"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "中央ゾーンの温度"
		set global.i18n[3] = "中間ゾーンの温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_05"
	;EN
	set global.i18n[2] = "Intake Zone Temperature"
	set global.i18n[3] = "Set the temperature for the zone closest to the material intake"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Temperatura zona entrada"
		set global.i18n[3] = "Defina la temperatura para la zona más cercana a la entrada del material"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Temperatur Eingangszone"
		set global.i18n[3] = "Legen Sie die Temperatur für die Zone in der Nähe des Materialeinlasses fest"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Température zone d'entrée"
		set global.i18n[3] = "Définissez la température de la zone la plus proche de l'entrée du matériau"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Temperatura zona ingresso"
		set global.i18n[3] = "Imposta la temperatura per la zona più vicina all'ingresso del materiale"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Temperatura da zona de entrada"
		set global.i18n[3] = "Defina a temperatura para a zona mais próxima da entrada do material"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Temperatuur invoerzone"
		set global.i18n[3] = "Stel de temperatuur in voor de zone dichtst bij de materiaalinvoer"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "进料区温度"
		set global.i18n[3] = "设置最靠近材料入口的区域温度"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Температура зоны подачи"
		set global.i18n[3] = "Установите температуру для зоны, ближайшей к подаче материала"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "材料投入部の温度"
		set global.i18n[3] = "材料の入口に最も近いゾーンの温度を設定してください"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_06"
	;EN
	set global.i18n[2] = "Extruder multiplier"
	set global.i18n[3] = "Enter extruder multiplier"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Multiplicador del extrusor"
		set global.i18n[3] = "Introduzca el multiplicador del extrusor"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Extrudermultiplikator"
		set global.i18n[3] = "Geben Sie den Extrudermultiplikator ein"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Multiplicateur d'extrudeuse"
		set global.i18n[3] = "Entrez le multiplicateur de l'extrudeuse"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Moltiplicatore estrusore"
		set global.i18n[3] = "Inserisci il moltiplicatore dell'estrusore"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Multiplicador do extrusor"
		set global.i18n[3] = "Insira o multiplicador do extrusor"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Extrudervermenigvuldiger"
		set global.i18n[3] = "Voer de extrudervermenigvuldiger in"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "挤出机倍增器"
		set global.i18n[3] = "输入挤出机倍增器"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Множитель экструдера"
		set global.i18n[3] = "Введите множитель экструдера"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "押出機の乗数"
		set global.i18n[3] = "押出機の乗数を入力してください"
	M99


if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_07"
	;EN
	set global.i18n[2] = "Volumetric Flow"
	set global.i18n[3] = "Volumetric flow rate (mm³/s)"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Flujo volumétrico"
		set global.i18n[3] = "Tasa de flujo volumétrico (mm³/s)"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Volumenstrom"
		set global.i18n[3] = "Volumenstromrate (mm³/s)"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Débit volumique"
		set global.i18n[3] = "Débit volumique (mm³/s)"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Flusso volumetrico"
		set global.i18n[3] = "Tasso di flusso volumetrico (mm³/s)"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Fluxo volumétrico"
		set global.i18n[3] = "Taxa de fluxo volumétrico (mm³/s)"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Volumestroom"
		set global.i18n[3] = "Volumestroomsnelheid (mm³/s)"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "体积流量"
		set global.i18n[3] = "体积流速（mm³/s）"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Объемный поток"
		set global.i18n[3] = "Скорость объемного потока (мм³/с)"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "体積流量"
		set global.i18n[3] = "体積流量 (mm³/s)"
	M99

if global.i18n[1] == "macros_Others_Create Pellet Material (Pulsar)_08"
	;EN
	set global.i18n[3] = {"Material Pellets_" ^ global.data[0] ^ " successfully created in /filaments/"}
	if global.i18n[0] == "ES"
		set global.i18n[3] = {"Material Pellets_" ^ global.data[0] ^ " creado correctamente en /filaments/"}
	if global.i18n[0] == "DE"
		set global.i18n[3] = {"Material Pellets_" ^ global.data[0] ^ " erfolgreich in /filaments/ erstellt"}
	if global.i18n[0] == "FR"
		set global.i18n[3] = {"Matériau Pellets_" ^ global.data[0] ^ " créé avec succès dans /filaments/"}
	if global.i18n[0] == "IT"
		set global.i18n[3] = {"Materiale Pellets_" ^ global.data[0] ^ " creato correttamente in /filaments/"}
	if global.i18n[0] == "PT"
		set global.i18n[3] = {"Material Pellets_" ^ global.data[0] ^ " criado com sucesso em /filaments/"}
	if global.i18n[0] == "NL"
		set global.i18n[3] = {"Materiaal Pellets_" ^ global.data[0] ^ " succesvol aangemaakt in /filaments/"}
	if global.i18n[0] == "ZH"
		set global.i18n[3] = {"材料 Pellets_" ^ global.data[0] ^ " 已成功创建于 /filaments/"}
	if global.i18n[0] == "RU"
		set global.i18n[3] = {"Материал Pellets_" ^ global.data[0] ^ " успешно создан в /filaments/"}
	if global.i18n[0] == "JA"
		set global.i18n[3] = {"材料 Pellets_" ^ global.data[0] ^ " が /filaments/ に正常に作成されました"}
	M99


;0:/sys/trigger4.g
if global.i18n[1] == "trigger4_01"
	;EN
	set global.i18n[2] = "Door Open"
	set global.i18n[3] = "Close the door to continue."
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Puerta abierta"
		set global.i18n[3] = "Cierra la puerta para continuar."
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Tür offen"
		set global.i18n[3] = "Schließen Sie die Tür, um fortzufahren."
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Porte ouverte"
		set global.i18n[3] = "Fermez la porte pour continuer."
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Porta aperta"
		set global.i18n[3] = "Chiudi la porta per continuare."
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Porta aberta"
		set global.i18n[3] = "Feche a porta para continuar."
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Deur open"
		set global.i18n[3] = "Sluit de deur om door te gaan."
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "门已打开"
		set global.i18n[3] = "请关闭门以继续操作。"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Дверь открыта"
		set global.i18n[3] = "Закройте дверь, чтобы продолжить."
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ドアが開いています"
		set global.i18n[3] = "続行するにはドアを閉めてください。"
	M99

if global.i18n[1] == "trigger4_02"
	;EN
	set global.i18n[2] = "Door Open"
	set global.i18n[3] = "Close the door before starting a print"
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Puerta abierta"
		set global.i18n[3] = "Cierra la puerta antes de iniciar una impresión"
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Tür offen"
		set global.i18n[3] = "Schließen Sie die Tür, bevor Sie einen Druck starten"
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Porte ouverte"
		set global.i18n[3] = "Fermez la porte avant de lancer une impression"
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Porta aperta"
		set global.i18n[3] = "Chiudi la porta prima di avviare una stampa"
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Porta aberta"
		set global.i18n[3] = "Feche a porta antes de iniciar uma impressão"
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Deur open"
		set global.i18n[3] = "Sluit de deur voordat je een print start"
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "门已打开"
		set global.i18n[3] = "开始打印前请关闭门"
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Дверь открыта"
		set global.i18n[3] = "Закройте дверь перед началом печати"
	if global.i18n[0] == "JA"
		set global.i18n[2] = "ドアが開いています"
		set global.i18n[3] = "印刷を開始する前にドアを閉めてください"
	M99

;0:/Example
if global.i18n[1] == "Example_01"
	;EN
	set global.i18n[2] = "Example"
	set global.i18n[3] = "message"
	set global.i18n[4] = {"choice1", "choice2"}
	if global.i18n[0] == "ES"
		set global.i18n[2] = "Ejemplo"
		set global.i18n[3] = "mensaje"
		set global.i18n[4] = {"opcion1", "opcion2"}
	if global.i18n[0] == "DE"
		set global.i18n[2] = "Beispiel"
		set global.i18n[3] = "Nachricht"
		set global.i18n[4] = {"wahl1", "wahl2"}
	if global.i18n[0] == "FR"
		set global.i18n[2] = "Exemple"
		set global.i18n[3] = "message"
		set global.i18n[4] = {"choix1", "choix2"}
	if global.i18n[0] == "IT"
		set global.i18n[2] = "Esempio"
		set global.i18n[3] = "messaggio"
		set global.i18n[4] = {"scelta1", "scelta2"}
	if global.i18n[0] == "PT"
		set global.i18n[2] = "Exemplo"
		set global.i18n[3] = "mensagem"
		set global.i18n[4] = {"escolha1", "escolha2"}
	if global.i18n[0] == "NL"
		set global.i18n[2] = "Voorbeeld"
		set global.i18n[3] = "boodschap"
		set global.i18n[4] = {"keuze1", "keuze2"}
	if global.i18n[0] == "ZH"
		set global.i18n[2] = "例子"
		set global.i18n[3] = "消息"
		set global.i18n[4] = {"选择1", "选择2"}
	if global.i18n[0] == "RU"
		set global.i18n[2] = "Пример"
		set global.i18n[3] = "сообщение"
		set global.i18n[4] = {"выбор1", "выбор2"}
	if global.i18n[0] == "JA"
		set global.i18n[2] = "例"
		set global.i18n[3] = "メッセージ"
		set global.i18n[4] = {"選択1", "選択2"}
	M99
