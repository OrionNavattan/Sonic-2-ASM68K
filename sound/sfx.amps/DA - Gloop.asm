	sHeaderInitSFX						; Z80 offset is $FAB8
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pGloop
	sModAMPS	$01, $01, $7F, $F1

.loop
	dc.b nF3, $06
	sCont		.loop
	dc.b sHold, $04
	sStop
