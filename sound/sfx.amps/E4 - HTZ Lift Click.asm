	sHeaderInitSFX						; Z80 offset is $FD5C
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $11, $00

.FM5
	sVoice		pTrackLift
	dc.b nBb5, $02
	sStop
