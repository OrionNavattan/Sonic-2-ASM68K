	sHeaderInitSFX						; Z80 offset is $FCF6
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $FF, $00

.FM5
	sVoice		pLaunchSpring
	dc.b nCs3, $05
	sModAMPS	$01, $01, $E7, $40

.Loop1
	dc.b nG5, $02, sHold
	saVol		$01
	sLoop		$00, $12, .Loop1
	sStop
