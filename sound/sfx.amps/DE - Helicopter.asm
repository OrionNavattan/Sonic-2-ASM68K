	sHeaderInitSFX						; Z80 offset is $FB88
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM3, .FM3, $14, $05

.FM3
	sVoice		pHelicopter

.Loop1
	dc.b nAb1, $02, nAb1, $01
	sLoop		$00, $13, .Loop1

.Loop2
	dc.b nAb1, $02, nAb1, $01
	saVol		$01
	sLoop		$00, $1B, .Loop2
	sStop
