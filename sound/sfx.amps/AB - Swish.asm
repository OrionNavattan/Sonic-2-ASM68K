	sHeaderInitSFX						; Z80 offset is $F0E2
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00, $00

.PSG3
	sVolEnv		vNone
	sNoisePSG	$E7
	dc.b nHiHat, $03, nRst, nHiHat, $01, sHold

.Loop1
	dc.b $01
	saVol		$08
	dc.b sHold
	sLoop		$00, $0F, .Loop1
	sStop
