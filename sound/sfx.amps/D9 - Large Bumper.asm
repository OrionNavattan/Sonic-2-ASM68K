	sHeaderInitSFX						; Z80 offset is $FA5F
	sHeaderPrio	$70
	sHeaderCh	$03
	sHeaderSFX	$80, ctFM4, .FM4, $00, $00
	sHeaderSFX	$80, ctFM3, .FM3, $00, $02
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM4
	sVoice		pLargeBumper1
	ssDetune	$0C
	dc.b nE4, $14
	sStop

.FM3
	sVoice		pBumper2
	dc.b nCs2, $03
	sStop

.FM5
	sVoice		pLargeBumper1
	dc.b nF4, $14
	sStop
