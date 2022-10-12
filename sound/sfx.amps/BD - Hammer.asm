	sHeaderInitSFX						; Z80 offset is $F482
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $10, $0A
	sHeaderSFX	$80, ctFM4, .FM4, $00, $00

.FM5
	sVoice		pStomp1
	sModAMPS	$01, $01, $60, $01
	dc.b nD3, $08
	sStop

.FM4
	dc.b nRst, $08
	sVoice		pStomp2
	dc.b nEb0, $22
	sStop
