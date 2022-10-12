	sHeaderInitSFX						; Z80 offset is $F0A1
	sHeaderPrio	$68
	sHeaderCh	$02
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00
	sHeaderSFX	$80, ctFM5, .FM5, $00, $03

.PSG3
	sVolEnv		vNone
	sNoisePSG	$E7
	dc.b nF5, $05, nBb5, $05, sHold

.Loop1
	dc.b $07
	saVol		$08
	dc.b sHold
	sLoop		$00, $0F, .Loop1
	sStop

.FM5
	sVoice		pSplash
	dc.b nCs3, $14
	sStop
