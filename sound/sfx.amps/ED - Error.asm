	sHeaderInitSFX						; Z80 offset is $FF27
	sHeaderPrio	$78
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $04

.FM5
	sVoice		pError
	dc.b nB3, $06, nRst, $06, nB3, $18
	sStop
