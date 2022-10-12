	sHeaderInitSFX						; Z80 offset is $F8E1
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $02

.FM5
	sModAMPS	$01, $01, $2A, $07
	sVoice		pUnk52

.Loop1
	dc.b nC3, $03, sHold
	sLoop		$00, $13, .Loop1

.Loop2
	dc.b nC3, $03, sHold
	saVol		$02
	sLoop		$00, $13, .Loop2
	sStop
