	sHeaderInitSFX						; Z80 offset is $FC99
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM4, .FM4, $00, $04

.FM4
	dc.b nRst, $01
	sVoice		pRumble2
	sModAMPS	$01, $01, $70, $06
	dc.b nCs0, $06, nE0, $08, nD0, $01, nCs0, $05
	dc.b nF0, $06, nAb0, $03, nCs0, $08, nG0, $04
	dc.b nCs0, $06
	saVol		$02
	dc.b nE0, $08
	saVol		$02
	dc.b nD0, $01
	saVol		$02
	dc.b nCs0, $05
	saVol		$02
	dc.b nF0, $06
	saVol		$02
	dc.b nAb0, $03
	saVol		$02
	dc.b nCs0, $08
	saVol		$02
	dc.b nG0, $04
;	saVol		$02
	sStop
