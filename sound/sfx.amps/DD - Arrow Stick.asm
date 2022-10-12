	sHeaderInitSFX						; Z80 offset is $FB60
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pChain
	dc.b nEb5, $04
	sStop
