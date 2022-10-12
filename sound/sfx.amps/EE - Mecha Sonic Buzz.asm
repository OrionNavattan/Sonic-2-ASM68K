	sHeaderInitSFX						; Z80 offset is $FF53
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pMechaSonic
	dc.b nA5, $24, sHold

.Loop1
	dc.b nA5, $04, sHold
	saVol		$04
	sLoop		$00, $08, .Loop1
	sStop
