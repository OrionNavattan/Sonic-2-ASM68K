	sHeaderInitSFX						; Z80 offset is $F08F
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG2, .PSG2, $00+$0C, $00

.PSG2
	sModAMPS	$01, $01, $E6, $35
	dc.b nCs1, $06
	sStop
