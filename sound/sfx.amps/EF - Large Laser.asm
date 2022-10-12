	sHeaderInitSFX						; Z80 offset is $FF91
	sHeaderPrio	$78
	sHeaderCh	$03
	sHeaderSFX	$80, ctFM5, .FM5, $00, $0B
	sHeaderSFX	$80, ctFM4, .FM4, $00, $12
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.FM4
	ssDetune	$02
	dc.b nRst, $02

.FM5
	sVoice		pLazer
	saVol		$0C
	dc.b nBb7, $06, sHold
	saVol		$F4
	dc.b $06, sHold
	saVol		$F4
	dc.b $12, sHold
	saVol		$0C
	dc.b $06, sHold
	saVol		$0C
	dc.b $06
	sStop

.PSG3
	sNoisePSG	$E7
	dc.b nA5, $04, nEb5, nA4, nEb4, nA3
	saVol		$08
	dc.b nA3
	saVol		$08
	dc.b nA3
	saVol		$08
	dc.b nA3
	sStop
