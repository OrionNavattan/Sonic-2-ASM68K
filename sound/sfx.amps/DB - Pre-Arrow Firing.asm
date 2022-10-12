	sHeaderInitSFX						; Z80 offset is $FAE5
	sHeaderPrio	$62
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pArrowFire
	dc.b nRst, $02, nC3, $01, sHold

.Loop1
	dc.b $01, sHold
	saVol		$02
	sLoop		$00, $05, .Loop1
	sStop
