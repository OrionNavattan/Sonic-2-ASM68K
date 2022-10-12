	sHeaderInitSFX						; Z80 offset is $FFD4
	sHeaderPrio	$6F
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00, $00

.PSG3
	sNoisePSG	$E7
	dc.b nHiHat, $18

.Loop1
	dc.b sHold, $03
	saVol		$08
	sLoop		$00, $08, .Loop1
	sStop
