	sHeaderInitSFX						; Z80 offset is $FE92
	sHeaderPrio	$6F
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM4, .FM4, $00, $02

.FM4
	sVoice		pLazerFloor
	dc.b nC0, $04, nRst, $0C
	sStop
