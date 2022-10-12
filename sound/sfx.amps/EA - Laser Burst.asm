	sHeaderInitSFX						; Z80 offset is $FE67
	sHeaderPrio	$6F
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $04

.FM5
	sVoice		pLazer
	dc.b nBb7, $14
	saVol		$18
	dc.b $06
	sStop
