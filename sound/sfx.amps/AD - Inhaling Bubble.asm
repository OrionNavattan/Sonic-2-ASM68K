	sHeaderInitSFX						; Z80 offset is $F135
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $0E, $00

.FM5
	sVoice		pBubble
	sModAMPS	$01, $01, $21, $6E
	dc.b nCs3, $07, nRst, $06
	sModAMPS	$01, $01, $44, $1E
	dc.b nAb3, $08
	sStop
