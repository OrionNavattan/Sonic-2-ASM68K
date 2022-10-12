	sHeaderInitSFX						; Z80 offset is $F755
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $0E, $00

.FM5
	sVoice		pBonu
	sModAMPS	$01, $01, $33, $18
	dc.b nAb4, $1A
	sStop
