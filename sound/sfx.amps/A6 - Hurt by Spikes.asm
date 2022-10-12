	sHeaderInitSFX						; Z80 offset is $F025
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $F2, $00

.FM5:
	sVoice		pSpikeHit
	sModAMPS	$01, $01, $10, $FF
	dc.b nFs6, $05, nD7, $25
	sStop
