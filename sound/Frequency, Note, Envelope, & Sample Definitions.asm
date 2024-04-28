; ---------------------------------------------------------------------------
; Frequency, Note, Envelope, and Sample Definitions
; Definitions generated here are used by both SMPS2ASM and the sound driver.
; ---------------------------------------------------------------------------
; Standard SMPS settings
; ---------------------------------------------------------------------------

SonicDriverVer:			equ 2
SMPS2ASMVer:			equ 1
; Set the following to one to use all S2 DAC samples, or to zero otherwise.
; The S1 samples are a subset of this.
;use_s2_samples:			equ 1
; Set the following to one to use all S3D DAC samples, or to zero
; otherwise. Most of the S3D samples are also present in S3/S&K, but
; there are two samples specific to S3D.
;use_s3d_samples:			equ 0
; Set the following to one to use all S3 DAC samples,
; or to zero otherwise.
;use_s3_samples:			equ 0
; Set the following to one to use all S&K DAC samples,
; or to zero otherwise.
;use_sk_samples:			equ 0

; ---------------------------------------------------------------------------
; Define FM frequency equates for a single octave
; ---------------------------------------------------------------------------

fmfq_B:		equ	606					; B
fmfq_C:		equ	644					; C
fmfq_Cs:	equ	683					; C#
fmfq_D:		equ	723					; D
fmfq_Ds:	equ	766					; D#
fmfq_E:		equ	813					; E
fmfq_F:		equ	860					; F
fmfq_Fs:	equ	911					; F#
fmfq_G:		equ	965					; G
fmfq_Gs:	equ	1023					; G#
fmfq_A:		equ	1084					; A
fmfq_As:	equ	1148					; A#
fmfq_B1:	equ	1216					; B1	; <- used in S3K, as opposed to fmfq_B. This one seems to be the correct behavior.

; ---------------------------------------------------------------------------
; Define note information

; Notes are tuned to where A4 = 440hz. Note that values are slightly off.
; By default, range from $80 to $DF. The first entries have lower ID.

; line format: \func	constant, psg frequency, fm frequency, flag to mark first octave
; (used to enable a driver optimization)
; ---------------------------------------------------------------------------

DefineNotes:	macro	func
		\func	   ,	   , $0000|fmfq_B,f		; B-1 note (the fact that this entry exists seems like a bug)

		\func	nC0,	854, $0000|fmfq_C,f		; C0 note
		\func	nCs0,	806, $0000|fmfq_Cs,f		; C#0 note
		\func	nD0,	761, $0000|fmfq_D,f		; D0 note
		\func	nEb0,	718, $0000|fmfq_Ds,f		; D#0 note
		\func	nE0,	677, $0000|fmfq_E,f		; E0 note
		\func	nF0,	640, $0000|fmfq_F,f		; F0 note
		\func	nFs0,	604, $0000|fmfq_Fs,f		; F#0 note
		\func	nG0,	570, $0000|fmfq_G,f		; G0 note
		\func	nAb0,	538, $0000|fmfq_Gs,f		; G#0 note
		\func	nA0,	507, $0000|fmfq_A,f		; A0 note
		\func	nBb0,	479, $0000|fmfq_As,f		; A#0 note
		\func	nB0,	452, $0800|fmfq_B,		; B0 note

		\func	nC1,	427, $0800|fmfq_C		; C1 note
		\func	nCs1,	403, $0800|fmfq_Cs		; C#1 note
		\func	nD1,	381, $0800|fmfq_D		; D1 note
		\func	nEb1,	359, $0800|fmfq_Ds		; D#1 note
		\func	nE1,	339, $0800|fmfq_E		; E1 note
		\func	nF1,	320, $0800|fmfq_F		; F1 note
		\func	nFs1,	302, $0800|fmfq_Fs		; F#1 note
		\func	nG1,	285, $0800|fmfq_G		; G1 note
		\func	nAb1,	269, $0800|fmfq_Gs		; G#1 note
		\func	nA1,	254, $0800|fmfq_A		; A1 note
		\func	nBb1,	239, $0800|fmfq_As		; A#1 note
		\func	nB1,	226, $1000|fmfq_B		; B1 note

		\func	nC2,	214, $1000|fmfq_C		; C2 note
		\func	nCs2,	201, $1000|fmfq_Cs		; C#2 note
		\func	nD2,	190, $1000|fmfq_D		; D2 note
		\func	nEb2,	180, $1000|fmfq_Ds		; D#2 note
		\func	nE2,	169, $1000|fmfq_E		; E2 note
		\func	nF2,	160, $1000|fmfq_F		; F2 note
		\func	nFs2,	151, $1000|fmfq_Fs		; F#2 note
		\func	nG2,	143, $1000|fmfq_G		; G2 note
		\func	nAb2,	135, $1000|fmfq_Gs		; G#2 note
		\func	nA2,	127, $1000|fmfq_A		; A2 note
		\func	nBb2,	120, $1000|fmfq_As		; A#2 note
		\func	nB2,	113, $1800|fmfq_B		; B2 note

		\func	nC3,	107, $1800|fmfq_C		; C3 note
		\func	nCs3,	101, $1800|fmfq_Cs		; C#3 note
		\func	nD3,	095, $1800|fmfq_D		; D3 note
		\func	nEb3,	090, $1800|fmfq_Ds		; D#3 note
		\func	nE3,	085, $1800|fmfq_E		; E3 note
		\func	nF3,	080, $1800|fmfq_F		; F3 note
		\func	nFs3,	075, $1800|fmfq_Fs		; F#3 note
		\func	nG3,	071, $1800|fmfq_G		; G3 note
		\func	nAb3,	067, $1800|fmfq_Gs		; G#3 note
		\func	nA3,	064, $1800|fmfq_A		; A3 note
		\func	nBb3,	060, $1800|fmfq_As		; A#3 note
		\func	nB3,	057, $2000|fmfq_B		; B3 note

		\func	nC4,	054, $2000|fmfq_C		; C4 note
		\func	nCs4,	051, $2000|fmfq_Cs		; C#4 note
		\func	nD4,	048, $2000|fmfq_D		; D4 note
		\func	nEb4,	045, $2000|fmfq_Ds		; D#4 note
		\func	nE4,	043, $2000|fmfq_E		; E4 note
		\func	nF4,	040, $2000|fmfq_F		; F4 note
		\func	nFs4,	038, $2000|fmfq_Fs		; F#4 note
		\func	nG4,	036, $2000|fmfq_G		; G4 note
		\func	nAb4,	034, $2000|fmfq_Gs		; G#4 note
		\func	nA4,	032, $2000|fmfq_A		; A4 note
		\func	nBb4,	031, $2000|fmfq_As		; A#4 note
		\func	nB4,	029, $2800|fmfq_B		; B4 note

		\func	nC5,	027, $2800|fmfq_C		; C5 note
		\func	nCs5,	026, $2800|fmfq_Cs		; C#5 note
		\func	nD5,	024, $2800|fmfq_D		; D5 note
		\func	nEb5,	023, $2800|fmfq_Ds		; D#5 note
		\func	nE5,	022, $2800|fmfq_E		; E5 note
		\func	nF5,	021, $2800|fmfq_F		; F5 note
		\func	nFs5,	019, $2800|fmfq_Fs		; F#5 note
		\func	nG5,	018, $2800|fmfq_G		; G5 note
		\func	nAb5,	017, $2800|fmfq_Gs		; G#5 note
		\func	nA5,	000, $2800|fmfq_A		; A5 note
		\func	nBb5,	   , $2800|fmfq_As		; A#5 note
		\func	nB5,	   , $3000|fmfq_B		; B5 note

		\func	nC6,	   , $3000|fmfq_C		; C6 note
		\func	nCs6,	   , $3000|fmfq_Cs		; C#6 note
		\func	nD6,	   , $3000|fmfq_D		; D6 note
		\func	nEb6,	   , $3000|fmfq_Ds		; D#6 note
		\func	nE6,	   , $3000|fmfq_E		; E6 note
		\func	nF6,	   , $3000|fmfq_F		; F6 note
		\func	nFs6,	   , $3000|fmfq_Fs		; F#6 note
		\func	nG6,	   , $3000|fmfq_G		; G6 note
		\func	nAb6,	   , $3000|fmfq_Gs		; G#6 note
		\func	nA6,	   , $3000|fmfq_A		; A6 note
		\func	nBb6,	   , $3000|fmfq_As		; A#6 note
		\func	nB6,	   , $3800|fmfq_B		; B6 note

		\func	nC7,	   , $3800|fmfq_C		; C7 note
		\func	nCs7,	   , $3800|fmfq_Cs		; C#7 note
		\func	nD7,	   , $3800|fmfq_D		; D7 note
		\func	nEb7,	   , $3800|fmfq_Ds		; D#7 note
		\func	nE7,	   , $3800|fmfq_E		; E7 note
		\func	nF7,	   , $3800|fmfq_F		; F7 note
		\func	nFs7,	   , $3800|fmfq_Fs		; F#7 note
		\func	nG7,	   , $3800|fmfq_G		; G7 note
		\func	nAb7,	   , $3800|fmfq_Gs		; G#7 note
		\func	nA7,	   , $3800|fmfq_A		; A7 note
		\func	nBb7,	   , $3800|fmfq_As		; A#7 note
		endm

; ---------------------------------------------------------------------------
; Constants for notes
; ---------------------------------------------------------------------------

GenNoteConst:	macro	const, psgfq, fmfq
		if strlen("\const")>0
		if strlen("\fmfq")>0
\const:		rs.b 1						; normal equate
		else
\const:		rs.b 0						; alt name for a note
		endc
		endc
		endm
; ---------------------------------------------------------------------------

		rsset $80
nRst:		rs.b 1						; rest note - stop sounds for current channel
_firstNote:	rs.b 0						; the first actual note
		DefineNotes	GenNoteConst			; generate note constants
_lastNote:	equ __rs-1					; the last note


; ---------------------------------------------------------------------------
; Define envelopes
; line format: \func	name, alt1, alt2 [...]
; ---------------------------------------------------------------------------

VolumeEnv:	macro	func
;	if SonicDriverVer=1
;		\func	01
;		\func	02
;		\func	03
;		\func	04
;		\func	05
;		\func	06
;		\func	07
;		\func	08
;		\func	09
;	elseif SonicDriverVer=2
		\func	01
		\func	02
		\func	03
		\func	04
		\func	05
		\func	06
		\func	07
		\func	08
		\func	09
		\func	0Ah
		\func	0Bh
		\func	0Ch
		\func	0Dh
;	else							;if SonicDriverVer>=3
;		\func	01
;		\func	02
;		\func	03
;		\func	04
;		\func	05
;		\func	06
;		\func	07
;		\func	08
;		\func	09
;		\func	0Ah
;		\func	0Bh
;		\func	0Ch
;		\func	0Dh
;		\func	0Eh
;		\func	0Fh
;		\func	10h
;		\func	11h
;		\func	12h
;		\func	13h
;		\func	14h
;		\func	15h
;		\func	16h
;		\func	17h
;		\func	18h
;		\func	19h
;		\func	1Ah
;		\func	1Bh
;		\func	1Ch
;		\func	1Dh
;		\func	1Eh
;		\func	1Fh
;		\func	20h
;		\func	21h
;		\func	22h
;		\func	23h
;		\func	24h
;		\func	25h
;		\func	26h
;		\func	27h
;	endc
	endm

; ---------------------------------------------------------------------------
; Constants for envelopes
; ---------------------------------------------------------------------------

GenEnvConst:	macro	const
		num: = \const
		numstr: substr 1,2,"\const"			; get digits for constant
;	if SonicDriverVer>=5
;		if num<=$0D
;fTone_\numstr\:	rs.b 0						; if Flamewing's clone driver, generate fTone constants for envelopes $0D and lower for conversions
;		endc
;sTone_\numstr\:	rs.b 1						; generate main constant for Flamewing's clone driver
;	elseif  SonicDriverVer>=3
;sTone_\numstr\:	rs.b 1						; generate constant for S3, S3K, S3D
;	else							;if SonicDriverVer<=2
fTone_\numstr\:	rs.b 1						; generate constans for S1 & 2
;	endc
	endm

; ---------------------------------------------------------------------------

		rsset	0					; envelopes start at 1
env_None:	rs.b 1						; null envelope
_firstVolEnv:	rs.b 0						; the first valid envelope
		VolumeEnv	GenEnvConst			; generate constants for envelopes
_lastVolEnv:	equ __rs-1					; the last valid envelope

evcHold:		equ 80h					; terminator for PSG envelope lists

; ---------------------------------------------------------------------------
; Define samples for the sound driver and SMPS2ASM

; Constants for IDs are: d(name)
; This special macro is used to generate constants and jump tables

; line format: \func	name, name of original sample if this is simply
; a pitch alias, sample rate
; ---------------------------------------------------------------------------

DefineSamples:	macro	func

;	if SonicDriverVer=1
;		\func	Kick					; Kick sample
;		\func	Snare					; Snare sample
;		\func	Timpani					; Timpani sample (DO NOT USE)
;		\func	Null84					; this sample is not defined
;		\func	Null85					; this sample is not defined
;		\func	Null86					; this sample is not defined
;		\func	Null87					; this sample is not defined
;		\func	TimpaniHi				; Timpani high pitch
;		\func	TimpaniMid				; Timpani middle pitch
;		\func	TimpaniLow				; Timpani low pitch
;		\func	TimpaniFloor				; Timpani very low pitch

;	elseif SonicDriverVer=2

		\func Kick,			,			8250 ; Kick Sample
		\func Snare,		,			24000 ; Snare sample
		\func Clap,			,			17000 ; Clap sample
		\func Scratch,		,			15000 ; Record scratch sample
		\func Timpani,		,			7500 ; Timpani sample (DO NOT USE DIRECTLY)
		\func Tom,			,			14000 ; High tom sample
		\func Bongo,		,			7500 ; Very low clap sample, apparently unused directly?
		\func HiTimpani,	Timpani,	9750	; Timpani high pitch
		\func MidTimpani,	Timpani,	8750	; Timpani middle pitch
		\func LowTimpani,	Timpani,	7250	; Timpani low pitch
		\func VLowTimpani,	Timpani,	7000	; Timpani very low pitch
		\func MidTom,		Tom,		23000	; Middle tom sample
		\func LowTom,		Tom,		18000	; Low tom sample
		\func FloorTom,		Tom,		15000	; Very low tom sample
		\func HiClap,		Bongo,	15000		; High clap
		\func MidClap,		Bongo,	13000		; Mid clap
		\func LowClap,		Bongo,	9750		; Low clap

;	else;if SonicDriverVer>=3
;		if use_s3_samples|use_sk_samples|use_s3d_samples
;			\func SnareS3				; $81
;			\func HighTom
;			\func MidTomS3
;			\func LowTomS3
;			\func FloorTomS3
;			\func KickS3
;			\func MuffledSnare
;			\func CrashCymbal
;			\func RideCymbal
;			\func LowMetalHit
;			\func MetalHit
;			\func HighMetalHit
;			\func HigherMetalHit
;			\func MidMetalHit
;			\func ClapS3
;			\func ElectricHighTom			; $90
;			\func ElectricMidTom
;			\func ElectricLowTom
;			\func ElectricFloorTom
;			\func TightSnare
;			\func MidpitchSnare
;			\func LooseSnare
;			\func LooserSnare
;			\func HiTimpaniS3
;			\func LowTimpaniS3
;			\func MidTimpaniS3
;			\func QuickLooseSnare
;			\func Click
;			\func PowerKick
;			\func QuickGlassCrash			; $9E
;		endc

;		if use_s3_samples|use_sk_samples
;			\func GlassCrashSnare			; $9F
;			\func GlassCrash
;			\func GlassCrashKick
;			\func QuietGlassCrash
;			\func OddSnareKick
;			\func KickExtraBass
;			\func ComeOn
;			\func DanceSnare
;			\func LooseKick
;			\func ModLooseKick
;			\func Woo
;			\func Go
;			\func SnareGo
;			\func PowerTom
;			\func HiWoodBlock
;			\func LowWoodBlock
;			\func HiHitDrum1			; $AF

;			\func LowHitDrum
;			\func MetalCrashHit
;			\func EchoedClapHit
;			\func LowerEchoedClapHit
;			\func HipHopHitKick
;			\func HipHopHitPowerKick
;			\func BassHey
;			\func DanceStyleKick
;			\func HipHopHitKick2
;			\func HipHopHitKick3
;			\func ReverseFadingWind
;			\func ScratchS3
;			\func LooseSnareNoise
;			\func PowerKick2
;			\func CrashingNoiseWoo
;			\func QuickHit				; $BF
;			\func KickHey
;			\func PowerKickHit
;			\func LowPowerKickHit
;			\func LowerPowerKickHit
;			\func LowestPowerKickHit		; $C4
;		endc

		; For conversions:
;		if use_s2_samples
;			\func Kick				; if using s2 samples AND any combo of s3, s3k, s3d samples, we need to reset the rs counter here
;			\func Snare
;			\func Clap
;			\func Scratch
;			\func Timpani
;			\func HiTom
;			\func Bongo
;			\func HiTimpani
;			\func MidTimpani
;			\func LowTimpani
;			\func VLowTimpani
;			\func MidTom
;			\func LowTom
;			\func FloorTom
;			\func HiClap
;			\func MidClap
;			\func LowClap
;		endc

;		if use_s3d_samples
;			\func FinalFightMetalCrash
;			\func IntroKick
;		endc

;		if use_s3_samples
;			\func EchoedClapHit_S3
;			\func LowerEchoedClapHit_S3
;		endc
;	endc
	endm

; ---------------------------------------------------------------------------
; Constants for samples
; ---------------------------------------------------------------------------

GenSampleConst:	macro	const
		d\const:	rs.b 1				; generate the main constant
		endm
; ---------------------------------------------------------------------------

		rsset	nRst+1					; samples start at $81
_firstSample:	rs.b 0						; the first valid sample

		DefineSamples	GenSampleConst			; generate constants for samples

_lastSample:	equ __rs-1					; the last valid sample

; ---------------------------------------------------------------------------
; Define track commands

; By default, range from $E0 to $FF, and $FF can have special flags.
; The first entries have lower ID.
; Constants for IDs are: com_(name)
; This special macro is used to generate constants and jump tables

; line format: \func	name, alt1, alt2 [...]
; ---------------------------------------------------------------------------

TrackCommand:	macro	func
;	if SonicDriverVer=1
;		\func	Pan					; Pan FM channel (left/right/centre)
;		\func	DetuneSet,Detune				; Detune a channel (change frequency)
;		\func	Timing,Nop					; External song timing
;		\func	Ret,Return					; Subroutine return
;		\func	RestoreSong				; Restore previous song
;		\func	ChannelTick,ChanTempoDiv			; Set tick multiplier for channel
;		\func	VolAddFM,AlterVol				; FM volume add
;		\func	Tie,NoAttack				; Do not key off. Can be used to tie two notes together (extend delay, run commands, set new note, etc)
;		\func	Gate,NoteFill				; Set note gate timer (frames)
;		\func	TransAdd,ChangeTransposition	; Transposition add
;		\func	TempoSet,SetTempoMod				; Set tempo (affected by tick multiplier!)
;		\func	SongTick,SetTempoDiv				; Set tick multiplier for song
;		\func	VolAddPSG,PSGAlterVol				; PSG volume add
;		\func	ClearPush				; Clear special push sound effect flag
;		\func	StopSpecial				; End background sound effect channel
;		\func	FMvoice					; Load FM voice
;		\func	ModSet					; Set automatic vibrate
;		\func	ModOn					; Enable automatic vibrate (without parameter set)
;		\func	End					; End a song channel
;		\func	NoiseSet				; Set PSG4 noise mode
;		\func	VibOff					; Disable automatic vibrate (parameters preserved)
;		\func	Env					; Set volume envelope (PSG only)
;		\func	Jump					; Jump to song routine
;		\func	Loop					; Loop song data
;		\func	Call					; Call song subroutine
;		\func	Release34				; Hacky command to immediately release ops 3 and 4. Used in SYZ music only
;	elseif	SonicDriverVer=2
		\func	Pan					; Pan FM channel (left/right/centre)
		\func	Detuneset,Detune			; Detune a channel (change frequency)
		\func	Timing,Nop				; External song timing
		\func	Ret,Return				; Subroutine return
		\func	RestoreSong				; Restore previous song
		\func	ChannelTick,ChanTempoDiv		; Set tick multiplier for channel
		\func	VolAddFM,FMAlterVol			; FM volume add
		\func	Tie,NoAttack				; Do not key off. Can be used to tie two notes together (extend delay, run commands, set new note, etc)
		\func	Gate,NoteFill				; Set note gate timer (frames)
		\func	TransAdd,ChangeTransposition		; Transposition add
		\func	TempoSet,SetTempoMod			; Set tempo (affected by tick multiplier!)
		\func	SongTick,SetTempoDiv			; Set tick multiplier for song
		\func	VolAddPSG,PSGAlterVol			; PSG volume add
		\func	ClearPush			; unused, was Sonic 1's ClearPush
		\func	EndBack,StopSpecial			; unused, was Sonic 1's StopSpecial
		\func	Voice,FMvoice				; Load FM voice
		\func	Vib,ModSet				; Set automatic vibrate (aka, modulation)
		\func	VibOn,ModOn				; Enable automatic vibrate (without parameter set)
		\func	End,Stop				; End a song channel
		\func	NoiseSet,PSGform			; Set PSG4 noise mode
		\func	VibOff,ModOff				; Disable automatic vibrate (parameters preserved)
		\func	Env,PSGvoice				; Set volume envelope (PSG only)
		\func	Jump					; Jump to song routine
		\func	Loop					; Loop song data
		\func	Call					; Call song subroutine
		\func	Release34,MaxRelRate			; Hacky command to immediately release ops 3 and 4. Used in Sonic 1's SYZ music only
	;elseif	SonicDriverVer=3
	endm

; ---------------------------------------------------------------------------
; Constants for tracker commands
; ---------------------------------------------------------------------------

GenComConst:	macro	const
		rept narg-1
com_\const:	rs.b 0						; generate alt constants
		shift
		endr

com_\const:	rs.b 1						; generate the main constant
		endm
; ---------------------------------------------------------------------------

		rsset	_lastNote+1				; commands come after the last note
_firstCom:	rs.b 0						; the first valid command
		TrackCommand	GenComConst			; generate constants for all main commands
_lastCom:	equ __rs-1					; the last valid command
