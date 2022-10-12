	sHeaderInitSFX						; Z80 offset is $F875
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $F4, $00

.FM5
	sVoice		pZapper
	dc.b nD4, $04, nRst, $01

.Loop1
	dc.b nEb4, $04, nRst, $01
	sLoop		$00, $04, .Loop1
	sStop
