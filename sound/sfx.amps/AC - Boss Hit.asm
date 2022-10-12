	sHeaderInitSFX						; Z80 offset is $F101
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pBossHit
	sModAMPS	$01, $01, $0C, $01

.Loop1
	dc.b nC0, $0A
	saVol		$10
	sLoop		$00, $04, .Loop1
	sStop
