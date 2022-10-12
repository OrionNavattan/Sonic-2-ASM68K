	sHeaderInitSFX						; Z80 offset is $FE2A
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $F4, $00
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00, $00

.FM5
	sVoice		pDoor
	dc.b nD2, $03, nEb3, $06, nF2, $08
	sStop

.PSG3
	sVolEnv		v04
	sNoisePSG	$E7
	dc.b nHiHat, $03, $06, $08
	sStop
