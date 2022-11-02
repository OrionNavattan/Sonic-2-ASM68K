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
; By default, range from $81 to $9F. The first entries have lower ID.
; Constants for IDs are: mus_(name)
; This special macro is used to generate pointers, includes and constants
;
; line format: \func	sound file, speed shoes tempo
;
; NOTE: speed shoes tempo is missing in a few lines; In the original game, for
; some reason these were not filled in. This is a bug. Do not intentionally
; leave some values out whenever you modify the game!
; ---------------------------------------------------------------------------

;MusicFiles:	macro	func					
;		\func	GHZ, $90, $07				; Green Hill Zone music
;		\func	LZ, $90, $72				; Labyrinth Zone music
;		\func	MZ, $90, $73				; Marble Zone music
;		\func	SLZ, $90, $26				; Star Light Zone music
;		\func	SYZ, $90, $15				; Spring Yard Zone music
;		\func	SBZ, $90, $08				; Scrap Brain Zone music
;		\func	Invincible, $90, $FF			; Invincibility music
;		\func	ExtraLife, $90, $05			; Extra Life music
;		\func	SpecialStage, $90,			; $00	; Special Stage music
;		\func	TitleScreen, $90,			; $00	; Title Screen music
;		\func	Ending, $90,				; $00	; Ending music
;		\func	Boss, $90,				; $00	; Boss music
;		\func	FZ, $90,				; $00	; Final Zone music
;		\func	HasPassed, $90,				; $00	; Act Finished music
;		\func	GameOver, $90,				; $00	; Game Over music
;		\func	Continue, $90,				; $00	; Continue music
;		\func	Credits, $90,				; $00	; Credits music
;		\func	Drowning, $90,				; $00	; Drowning music
;		\func	Emerald, $90,				; $00	; Emerald music
;		endm


MusicFiles:

		\func	2PResult,	68h
		\func	EHZ,		BEh	
		\func	MCZ_2P,		FFh
		\func	OOZ,		F0h
		\func	MTZ,		DEh
		\func	HTZ,		FFh
		\func	ARZ,		DDh
		\func	CNZ_2P,		68h
		\func	
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		\func
		
		
		
zMusIDPtr_2PResult:	db	id(MusPtr_2PResult)	; 92
zMusIDPtr_EHZ:		db	id(MusPtr_EHZ)		; 81
zMusIDPtr_MCZ_2P:	db	id(MusPtr_MCZ_2P)	; 85
zMusIDPtr_OOZ:		db	id(MusPtr_OOZ)		; 8F
zMusIDPtr_MTZ:		db	id(MusPtr_MTZ)		; 82
zMusIDPtr_HTZ:		db	id(MusPtr_HTZ)		; 94
zMusIDPtr_ARZ:		db	id(MusPtr_ARZ)		; 86
zMusIDPtr_CNZ_2P:	db	id(MusPtr_CNZ_2P)	; 80
zMusIDPtr_CNZ:		db	id(MusPtr_CNZ)		; 83
zMusIDPtr_DEZ:		db	id(MusPtr_DEZ)		; 87
zMusIDPtr_MCZ:		db	id(MusPtr_MCZ)		; 84
zMusIDPtr_EHZ_2P:	db	id(MusPtr_EHZ_2P)	; 91
zMusIDPtr_SCZ:		db	id(MusPtr_SCZ)		; 8E
zMusIDPtr_CPZ:		db	id(MusPtr_CPZ)		; 8C
zMusIDPtr_WFZ:		db	id(MusPtr_WFZ)		; 90
zMusIDPtr_HPZ:		db	id(MusPtr_HPZ)		; 9B
zMusIDPtr_Options:	db	id(MusPtr_Options)	; 89
zMusIDPtr_SpecStage:	db	id(MusPtr_SpecStage)	; 88
zMusIDPtr_Boss:		db	id(MusPtr_Boss)		; 8D
zMusIDPtr_EndBoss:	db	id(MusPtr_EndBoss)	; 8B
zMusIDPtr_Ending:	db	id(MusPtr_Ending)	; 8A
zMusIDPtr_SuperSonic:	db	id(MusPtr_SuperSonic)	; 93
zMusIDPtr_Invincible:	db	id(MusPtr_Invincible)	; 99
zMusIDPtr_ExtraLife:	db	id(MusPtr_ExtraLife)+20h; B5
zMusIDPtr_Title:	db	id(MusPtr_Title)	; 96
zMusIDPtr_EndLevel:	db	id(MusPtr_EndLevel)	; 97
zMusIDPtr_GameOver:	db	id(MusPtr_GameOver)+20h	; B8
zMusIDPtr_Continue:	db	(MusPtr_Continue-MusicPoint1)/ptrsize	; 0
zMusIDPtr_Emerald:	db	id(MusPtr_Emerald)+20h	; BA
zMusIDPtr_Credits:	db	id(MusPtr_Credits)+20h	; BD
zMusIDPtr_Countdown:	db	id(MusPtr_Drowning)+40h	; DC
zMusIDPtr__End:




zSpedUpTempoTable


; speed shoes tempos
		db	 68h,0BEh,0FFh,0F0h
		db	0FFh,0DEh,0FFh,0DDh
		db	 68h, 80h,0D6h, 7Bh
		db	 7Bh,0FFh,0A8h,0FFh
		db	 87h,0FFh,0FFh,0C9h
		db	 97h,0FFh,0FFh,0CDh
		db	0CDh,0AAh,0F2h,0DBh
		db	0D5h,0F0h, 80h


; ---------------------------------------------------------------------------
; Constants for sound IDs
; ---------------------------------------------------------------------------

; Background music
		rsset $80					; ID of the first music file
com_Null:	rs.b 1						; empty sound
_firstMusic:	rs.b 0						; constant for the first music

GenMusicConst:	macro	name
mus_\name:	rs.b 1						; use the next ID for music
		endm

		MusicFiles	GenMusicConst			; generate constants for each music file
_lastMusic:	equ __rs-1					; constant for the last music
; ---------------------------------------------------------------------------

; Sound effects
		rsset $A0					; ID of the first sfx file
_firstSfx:	rs.b 0						; constant for the first sfx

GenSfxConst:	macro	name
sfx_\name:	rs.b 1						; use the next ID for sfx
		endm

		SfxFiles	GenSfxConst			; generate constants for each sfx file
_lastSfx:	equ __rs-1					; constant for the last sfx

; Sound commands
		rsset $E0					; ID of the first command
_firstCmd:	rs.b 0						; constant for the first command

GenCmdConst:	macro	name
cmd_\name:	rs.b 1						; use the next ID for command
		endm

		DriverCmdFiles	GenCmdConst			; generate constants for each command
_lastCmd:	equ __rs-1					; constant for the last command