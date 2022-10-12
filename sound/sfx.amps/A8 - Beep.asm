	sHeaderInitSFX						; Z80 offset is $F080
	sHeaderPrio	$77
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG1, .PSG1, $E8+$0C, $18

.PSG1
	sVolEnv		v04
	dc.b nD6, $04
	sStop
