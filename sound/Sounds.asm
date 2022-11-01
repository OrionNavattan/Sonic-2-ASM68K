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
; line format: \func	sound file, sound priority, speed shoes tempo
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