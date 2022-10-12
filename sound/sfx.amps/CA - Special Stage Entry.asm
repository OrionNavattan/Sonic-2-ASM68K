	sHeaderInitSFX
	sHeaderPrio	$70
	sHeaderCh	$01
	sHeaderSFX	$80, ctFM5, .FM5, $00, $02

;.FM5	sVoice		pEnterSS
;	sModAMPS	$02, $01, $5B, $03
;	dc.b nEb6, $65
;	sStop

; NTP: This nonsense was the only way I could come up with to get this to sound like it did in
; NTP: the original game since the algorithm for modulation differs from Sound-Source 68k & trying
; NTP: to use a modulation command with adjusted parameters produces a version of the sound effect
; NTP: that sounds like a drunken version of the original. Handling modulation manually when a 
; NTP: sound file intended for Sound-Source 68k relies this heavily on the end-delay quirk of its
; NTP: modulation algorithm seems like the most sane way to handle it when porting to AMPS imo.

.FM5	sVoice		pEnterSS
	dc.b nEb6, $02, sHold, nF6, sHold, nEb6, $01
	
.Loop
	dc.b sHold, nCs6, $02, sHold, nEb6, $01, sHold, nF6, $02, sHold, nEb6, $01
	sLoop		$00, $10, .Loop
	sStop
	
