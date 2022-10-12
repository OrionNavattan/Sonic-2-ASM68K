	sHeaderInitSFX						; Z80 offset is $F213
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $FB, $02

.FM5
	sVoice		pElectric
	dc.b nD4, $05, nRst, $01, nD4, $09
	sStop
