	sHeaderInitSFX						; Z80 offset is $F054
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM4, .FM4, $0C, $1C

.FM4
	sVoice		pSparkle
	dc.b nE5, $05, nG5, $05, nC6, $2B
	sStop
