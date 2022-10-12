	sHeaderInitSFX						; Z80 offset is $FE00
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $F4, $00

.FM5
	sVoice		pDoor
	dc.b nD2, $04, nC3, $06
	sStop
