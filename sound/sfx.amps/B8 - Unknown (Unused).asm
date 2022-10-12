	sHeaderInitSFX						; Z80 offset is $F387
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.PSG3
	sModAMPS	$01, $01, $F0, $08
	sNoisePSG	$E7
	dc.b nEb4, $08

.Loop1
	dc.b nB3, $02
	saVol		$08
	sLoop		$00, $03, .Loop1
	sStop
