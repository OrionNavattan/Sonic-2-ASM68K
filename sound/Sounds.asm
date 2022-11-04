; ---------------------------------------------------------------------------
; Macro for playing a sound or a command
; ---------------------------------------------------------------------------

play:		macro	queue, command, song
		move.\0	#\song,d0				; load the song to d0

		if (\queue < 0) | (\queue > v_soundqueue_size)
		inform 2,"Invalid or undefined sound queue slot. Must be between 0 and \#v_soundqueue_size"
		endc

		\command	PlaySound\queue			; call playsound based on the slot ID
		endm

; ---------------------------------------------------------------------------
; Define background music
;
; This special macro is used to generate constants for both the main program and 
; sound driver, and for the compressed music, file definitions.
; Unfortunately, we can't use it to generate the includes directly, as they are 
; included in the rom in a completely different order.
; line format: \func	sound file, speed shoes tempo, flag 
; (20h = uncompressed, 40h = disables PAL mode)
; ---------------------------------------------------------------------------


MusicFiles:	macro func

		\func	TwoPlayerMenu,	68h, 0
		\func	EHZ,			BEh, 0
		\func	MCZ_2P,			FFh, 0
		\func	OOZ,			F0h, 0
		\func	MTZ,			DDh, 0
		\func	HTZ,			DEh, 0
		\func	ARZ,			FFh, 0
		\func	CNZ_2P,			DDh, 0
		\func	CNZ,			68h, 0
		\func	DEZ,			80h, 0
		\func	MCZ,			D6h, 0
		\func	EHZ_2P,			7Bh, 0
		\func	SCZ,			7Bh, 0
		\func	CPZ,			FFh, 0
		\func	WFZ,			A8h, 0
		\func	HPZ,			FFh, 0
		\func	Options,		87h, 0
		\func	SpecialStage,	FFh, 0
		\func	Boss,			FFh, 0
		\func	FinalBoss,		C9h, 0
		\func	Ending,			97h, 0
		\func	SuperSonic,		FFh, 0
		\func	Invincible,		FFh, 0
		\func	ExtraLife,		CDh, 20h
		\func	Title,			CDh, 0
		\func	EndOfAct,		AAh, 0
		\func	GameOver,		F2h, 20h
		\func	Continue,		DBh, 0
		\func	Emerald,		D5h, 20h
		\func	Credits,		F0h, 20h
		\func	Countdown,		80h, 40h	
	endm	


; ---------------------------------------------------------------------------
; Generate constants for sound IDs in the main program
; (Constants for the sound driver are generated at ZMasterPlaylist)
; ---------------------------------------------------------------------------

; Background music
		rsset $80					; ID of the first music file
com_Null:	rs.b 1						; empty sound
_firstMusic:	rs.b 0						; constant for the first music

GenMusicConstMain:	macro	name
mus_\name:	rs.b 1						; use the next ID for music
		endm

		MusicFiles	GenMusicConstMain			; generate constants for each music file
_lastMusic:	equ __rs-1					; constant for the last music
; ---------------------------------------------------------------------------

; Sound effects
;		rsset $A0					; ID of the first sfx file
;_firstSfx:	rs.b 0						; constant for the first sfx

;GenSfxConst:	macro	name
;sfx_\name:	rs.b 1						; use the next ID for sfx
;		endm

;		SfxFiles	GenSfxConst			; generate constants for each sfx file
;_lastSfx:	equ __rs-1					; constant for the last sfx
