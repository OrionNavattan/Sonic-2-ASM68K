	sHeaderInitSFX						; Z80 offset is $FC5E
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $FE, $00

.FM5
	sSpinRev
	sVoice		pSpindash
	sModAMPS	$01, $01, $20, $F6
	dc.b nG5, $16, sHold
	sModOff
	dc.b nG6, $18, sHold

.Loop1
	dc.b $04, sHold
	saVol		$03
	sLoop		$00, $10, .Loop1
	sSpinReset
	sStop
