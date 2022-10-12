	sHeaderInitSFX						; Z80 offset is $F91E
	sHeaderPrio	$80
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $F5, $03

.FM5
	sVoice		pSignpost2P
	sModAMPS	$01, $01, $46, $09
	dc.b nD3, $14, sHold, $14, sHold
	saVol		$04
	dc.b $14, sHold
	saVol		$04
	dc.b $14, sHold
	saVol		$04
	dc.b $0A, sHold
	saVol		$04
	dc.b $0A
	sStop
