	sHeaderInitSFX						; Z80 offset is $FB19
	sHeaderPrio	$60
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM4, .FM4, $00, $0E
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.FM4
	sVoice		pFire
	dc.b nE0, $40

.Loop1
	dc.b sHold, $04
	saVol		$04
	sLoop		$00, $0A, .Loop1
	sStop

.PSG3
	sVolEnv		vNone
	sNoisePSG	$E7
	dc.b nD3, $40

.Loop2
	dc.b sHold, $08
	saVol		$08
	sLoop		$00, $05, .Loop2
	sStop
