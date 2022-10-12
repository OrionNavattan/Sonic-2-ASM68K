	sHeaderInitSFX						; Z80 offset is $F9C8
	sHeaderPrio	$6F
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $10, $0E

.FM5
	sVoice		pElevator
	sModAMPS	$01, $01, $1E, $FF
	dc.b nD1, $1C
	sModOff

.Loop1
	dc.b sHold, nCs2, $05
	sLoop		$00, $09, .Loop1

.Loop2
	dc.b sHold, nCs2, $04
	saVol		$02
	dc.b sHold, nCs2, $04
	saVol		$02
	sLoop		$00, $08, .Loop2
	sStop
