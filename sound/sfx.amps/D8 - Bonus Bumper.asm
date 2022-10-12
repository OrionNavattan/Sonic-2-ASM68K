	sHeaderInitSFX						; Z80 offset is $FA35
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $07

.FM5
	sVoice		pTinyBumper
	dc.b nD4, $06, nD4, $15
	sStop
