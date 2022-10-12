	sHeaderInitSFX						; Z80 offset is $F5E5
	sHeaderPrio	$70
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM4, .FM4, $0C, $00
	sHeaderSFX	$80, ctFM5, .FM5, $00, $13

.FM4
	sVoice		pBigRing2
	dc.b nRst, $01, nA2, $08
	sVoice		pBigRing1
	dc.b sHold, nAb3, $26
	sStop

.FM5
	sVoice		pBigRing3
	sModAMPS	$07, $01, $03, $FF
	dc.b nRst, $0A

.Loop1
	dc.b nFs5, $06
	sLoop		$00, $05, .Loop1
	dc.b nFs5, $17
	sStop
