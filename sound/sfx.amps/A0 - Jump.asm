	sHeaderInitSFX						; Z80 offset is $EF33
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG1, .PSG1, $F4+$0C, $00

.PSG1
	sVolEnv		vNone
	dc.b nF2, $05
	sModAMPS	$03, $01, $F8, $65
	dc.b nBb2, $15
	sStop
