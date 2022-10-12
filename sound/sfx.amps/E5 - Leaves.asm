	sHeaderInitSFX						; Z80 offset is $FD84
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $F8+$0C, $00

.PSG3
	sVolEnv		v03
	sNoisePSG	$E7
	dc.b nFs6, $03
	sVolEnv		v06
	dc.b nFs6, $04
	saVol		$10
	dc.b nFs6, $02
	sVolEnv		v03
	saVol		-$10
	dc.b nFs6, $08, nFs6, $18
	sStop
