	sHeaderInitSFX						; Z80 offset is $F99E
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00

.FM5
	sVoice		pSpikeRing
	dc.b nF3, $07, nF4, $15
	sStop
