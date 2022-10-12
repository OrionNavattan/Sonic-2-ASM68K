	sHeaderInitSFX
	sHeaderPrio	$81
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM4, .FM4, $0C, $04
	sHeaderSFX	$80, ctFM5, .FM5, $0E, $02

.FM5	sVoice		pDrown
	sModAMPS	$02, $01, $83, $0D

.Loop2	dc.b nA0, $05, $05
	saVol		$03
	sLoop		$00, $0A, .Loop2
	sStop

.FM4	dc.b nRst, $06
	sVoice		pDrown
	sModAMPS	$02, $01, $6F, $0F

.Loop1	dc.b nC1, $04, $05
	saVol		$03
	sLoop		$00, $0A, .Loop1
	sStop
