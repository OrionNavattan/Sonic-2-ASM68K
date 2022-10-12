	sHeaderInitSFX						; Z80 offset is $F3EE
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $07

.FM5:
	sVoice		pDiamonds
	dc.b nA3, $08
	sStop
