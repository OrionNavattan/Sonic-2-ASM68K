	sHeaderInitSFX						; Z80 offset is $F581
	sHeaderPrio	$6F
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $00, $08
	sHeaderSFX	$80, ctFM4, .FM4, $00, $08

.FM4
	ssDetune	$03
	dc.b nRst, $02

.FM5
	sVoice		pContinue
	dc.b nG5, $16
	sStop
