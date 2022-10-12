	sHeaderInitSFX
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $10

.FM5	sModAMPS	$04, $01, $78, $0B
	sVoice		pBreak
	dc.b nA4, $16
	sStop

.PSG3	sVolEnv		v01
	sNoisePSG	snWhitePSG3
	dc.b nB3, $1B
	sStop
