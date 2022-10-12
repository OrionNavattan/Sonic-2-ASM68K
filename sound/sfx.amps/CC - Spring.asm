	sHeaderInitSFX
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM4, .FM4, $00, $02

.FM4	sVoice		pSpring
	dc.b nRst, $01
	sModAMPS	$04, $01, $5D, $10
	dc.b nB3, $0B
	sModOff

.Loop	dc.b sHold
	saVol		$02
	dc.b nC5, $02
	sLoop		$00, $19, .Loop
	dc.b sHold, $01
	sStop
