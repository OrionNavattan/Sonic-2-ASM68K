	sHeaderInitSFX						; Z80 offset is $F1E2
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $FB, $05

.FM5
	sVoice		pSaw
	dc.b nBb7, $7F

.Loop1
	dc.b nBb7, $02
	saVol		$01
	sLoop		$00, $1B, .Loop1
	sStop
