	sHeaderInitSFX						; Z80 offset is $FDDF
	sHeaderPrio	$6F
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.PSG3
	sVolEnv		v06
	sNoisePSG	$E7
	dc.b nEb1, $0A, nG1, $0A, nB1, $0A, nEb2, $0A
	dc.b nG2, $0A, nB2, $08, nEb3, $08, nG3, $08
	dc.b nB3, $08
	sStop
