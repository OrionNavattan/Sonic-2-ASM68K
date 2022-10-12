	sHeaderInitSFX						; Z80 offset is $F8A8
	sHeaderPrio	$60
	sHeaderCh	$02
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $08
	sHeaderSFX	$80, ctFM5, .FM5, $00, $0B

.PSG3
	sVolEnv		v02
	sNoisePSG	$E4
	dc.b nB3, $04, nE0, $02
	sStop

.FM5
	sVoice		pUnk51
	dc.b nC3, $04, nRst, $02
	sStop
