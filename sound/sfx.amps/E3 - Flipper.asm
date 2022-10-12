	sHeaderInitSFX						; Z80 offset is $FD2D
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $09, $07

.FM5
	sVoice		pFlipper
	sModAMPS	$01, $01, $04, $56
	dc.b nF1, $03, nCs2, $25
	sStop
