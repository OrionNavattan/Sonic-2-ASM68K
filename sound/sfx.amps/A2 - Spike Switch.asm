	sHeaderInitSFX						; Z80 offset is $EF73
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.PSG3
	sModAMPS	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nEb5, $04, nCs5, $04

.Loop1
	dc.b nEb5, $01
	saVol		$08
	sLoop		$00, $06, .Loop1
	sStop
