	sHeaderInitSFX
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $05

.FM5	sPan		spRight

SFX_Ring1:
	sVoice		pRings
	dc.b nE5, $04, nG5, $05, nC6, $1B
	sStop
