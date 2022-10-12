	sHeaderInitSFX						; Z80 offset is $F28E
	sHeaderPrio	$60
	sHeaderCh	$02
	sHeaderSFX	$80, ctFM5, .FM5, $00, $00
	sHeaderSFX	$A1, ctPSG3, .PSG3, $00+$0C, $00

.FM5
	sVoice		pLavaBall
	dc.b nRst, $01
	sModAMPS	$01, $01, $40, $48
	dc.b nD0, $06, nE0, $02
	sStop

.PSG3
	sVolEnv		vNone
	dc.b nRst, $0B
	sNoisePSG	$E7
	dc.b nD3, $25, sHold

.Loop1
	dc.b $02
	saVol		$08
	dc.b sHold
	sLoop		$00, $10, .Loop1
	sStop
