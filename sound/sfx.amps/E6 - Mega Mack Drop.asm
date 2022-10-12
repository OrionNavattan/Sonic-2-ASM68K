	sHeaderInitSFX						; Z80 offset is $FDA5
	sHeaderPrio	$71
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $EE, $08
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00, $00

.PSG3
	sNoisePSG	$E7
	sVolEnv		v09
	dc.b nHiHat, $36
	sStop

.FM5
	sVoice		pGloopDrop
	dc.b nRst, $01, nF1, $02, $02, $02, $30
	sStop
