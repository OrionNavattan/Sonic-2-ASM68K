	sHeaderInitSFX						; Z80 offset is $F4D5
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM4, .FM4, $0C, $05

.FM4
	sVoice		pRoll
	dc.b nRst, $01
	sModAMPS	$03, $01, $09, $FF
	dc.b nCs6, $25
	sModOff

.Loop1
	dc.b sHold
	saVol		$01
	dc.b nG6, $02
	sLoop		$00, $2A, .Loop1
	sStop
