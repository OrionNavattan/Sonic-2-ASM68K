	sHeaderInitSFX						; Z80 offset is $F2BF
	sHeaderPrio	$70
	sHeaderCh	$03
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00
	sHeaderSFX	$80, ctFM4, .FM4, $00, $00
	sHeaderSFX	$80, ctFM3, .FM3, $00, $02

.FM5
	sVoice		pBumper1
	sJump		.Jump1

.FM4
	sVoice		pBumper1
	ssDetune	$07
	dc.b nRst, $01

.Jump1
	dc.b nA4, $20
	sStop

.FM3
	sVoice		pBumper2
	dc.b nCs2, $03
	sStop
