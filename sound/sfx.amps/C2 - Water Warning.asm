	sHeaderInitSFX						; Z80 offset is $F5D4
	sHeaderPrio	$71
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $0C, $08

.FM5
	sVoice		pContinue
	dc.b nA4, $08, nA4, $25
	sStop
