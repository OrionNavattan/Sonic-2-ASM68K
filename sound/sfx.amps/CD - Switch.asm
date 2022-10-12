	sHeaderInit						; Z80 offset is $F81C
	sHeaderPrio	$71
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.PSG3
	dc.b nBb4, $02
	sStop
