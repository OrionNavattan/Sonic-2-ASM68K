	sHeaderInitSFX						; Z80 offset is $F416
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, $05, .FM5, $F4, $00

.FM5
	sVoice		pDoor
	dc.b nD2, $04, nRst, nG2, $06
	sStop
