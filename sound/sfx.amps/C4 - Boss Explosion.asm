	sHeaderInitSFX						; Z80 offset is $F65F
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pExplode
	dc.b nA0, $22
	sStop
