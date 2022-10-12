	sHeaderInitSFX						; Z80 offset is $FA0D
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pPlatKnock
	dc.b nCs6, $15
	sStop
