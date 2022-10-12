	sHeaderInitSFX						; Z80 offset is $F95D
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $30

.FM5
	sVoice		pLidPop
	dc.b nF4, $15
	sStop

.PSG3
	sNoisePSG	$E7
	sVolEnv		v04
	dc.b nA5, $03, sHold, nAb5, sHold, nG5, sHold, nFs5
	dc.b sHold, nF5, sHold, nE5, sHold, nEb5
	sStop
