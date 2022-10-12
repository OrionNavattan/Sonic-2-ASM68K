	sHeaderInitSFX						; Z80 offset is $F744
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.PSG3
	sVolEnv	vNone
	sNoisePSG	$E7
	dc.b nD3, $25
	sStop
