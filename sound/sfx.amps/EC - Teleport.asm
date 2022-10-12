	sHeaderInitSFX						; Z80 offset is $FEBC
	sHeaderPrio	$78
	sHeaderCh	$04
	sHeaderSFX	$80, ctFM5, .FM5, $00, $10
	sHeaderSFX	$80, ctFM4, .FM4, $00, $10
	sHeaderSFX	$A1, ctPSG3, Transform_PSG3, $00+$0C, $00
	sHeaderSFX	$A1, ctPSG2, Transform_PSG2, $00+$0C, $00

.FM4
	ssDetune	$10

.FM5
	sVoice		pSwap2
	sModAMPS	$01, $01, $EC, $56
	dc.b nEb5, $24
	sModOff
	sVoice		pSwap1
	saVol		$F0

.Loop1
	dc.b nBb4, $02, sHold
	saVol		$02
	saTranspose	$01
	sLoop		$00, $20, .Loop1
	sStop
