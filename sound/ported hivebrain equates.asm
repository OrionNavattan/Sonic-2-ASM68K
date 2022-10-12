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
;
; Notes are tuned to where A4 = 440hz. Note that values are slightly off.
; Only sharp notes are defined; flats and sharps are often interchangeable,
; but for the sake of simplicity, only sharps are used here.
; By default, range from $80 to $DF. The first entries have lower ID.
; This special macro is used to generate constants and frequency tables.
;
; line format: \func	constant, psg frequency, fm frequency
; ---------------------------------------------------------------------------

DefineNotes:	macro	func
		\func	   ,	   , $0000|fmfq_B		; B-1 note (the fact that this entry exists seems like a bug)

		\func	nC0,	854, $0000|fmfq_C		; C0 note
		\func	nCs0,	806, $0000|fmfq_Cs		; C#0 note
		\func	nD0,	761, $0000|fmfq_D		; D0 note
		\func	nDs0,	718, $0000|fmfq_Ds		; D#0 note
		\func	nE0,	677, $0000|fmfq_E		; E0 note
		\func	nF0,	640, $0000|fmfq_F		; F0 note
		\func	nFs0,	604, $0000|fmfq_Fs		; F#0 note
		\func	nG0,	570, $0000|fmfq_G		; G0 note
		\func	nGs0,	538, $0000|fmfq_Gs		; G#0 note
		\func	nA0,	507, $0000|fmfq_A		; A0 note
		\func	nAs0,	479, $0000|fmfq_As		; A#0 note
		\func	nB0,	452, $0800|fmfq_B		; B0 note

		\func	nC1,	427, $0800|fmfq_C		; C1 note
		\func	nCs1,	403, $0800|fmfq_Cs		; C#1 note
		\func	nD1,	381, $0800|fmfq_D		; D1 note
		\func	nDs1,	359, $0800|fmfq_Ds		; D#1 note
		\func	nE1,	339, $0800|fmfq_E		; E1 note
		\func	nF1,	320, $0800|fmfq_F		; F1 note
		\func	nFs1,	302, $0800|fmfq_Fs		; F#1 note
		\func	nG1,	285, $0800|fmfq_G		; G1 note
		\func	nGs1,	269, $0800|fmfq_Gs		; G#1 note
		\func	nA1,	254, $0800|fmfq_A		; A1 note
		\func	nAs1,	239, $0800|fmfq_As		; A#1 note
		\func	nB1,	226, $1000|fmfq_B		; B1 note

		\func	nC2,	214, $1000|fmfq_C		; C2 note
		\func	nCs2,	201, $1000|fmfq_Cs		; C#2 note
		\func	nD2,	190, $1000|fmfq_D		; D2 note
		\func	nDs2,	180, $1000|fmfq_Ds		; D#2 note
		\func	nE2,	169, $1000|fmfq_E		; E2 note
		\func	nF2,	160, $1000|fmfq_F		; F2 note
		\func	nFs2,	151, $1000|fmfq_Fs		; F#2 note
		\func	nG2,	143, $1000|fmfq_G		; G2 note
		\func	nGs2,	135, $1000|fmfq_Gs		; G#2 note
		\func	nA2,	127, $1000|fmfq_A		; A2 note
		\func	nAs2,	120, $1000|fmfq_As		; A#2 note
		\func	nB2,	113, $1800|fmfq_B		; B2 note

		\func	nC3,	107, $1800|fmfq_C		; C3 note
		\func	nCs3,	101, $1800|fmfq_Cs		; C#3 note
		\func	nD3,	095, $1800|fmfq_D		; D3 note
		\func	nDs3,	090, $1800|fmfq_Ds		; D#3 note
		\func	nE3,	085, $1800|fmfq_E		; E3 note
		\func	nF3,	080, $1800|fmfq_F		; F3 note
		\func	nFs3,	075, $1800|fmfq_Fs		; F#3 note
		\func	nG3,	071, $1800|fmfq_G		; G3 note
		\func	nGs3,	067, $1800|fmfq_Gs		; G#3 note
		\func	nA3,	064, $1800|fmfq_A		; A3 note
		\func	nAs3,	060, $1800|fmfq_As		; A#3 note
		\func	nB3,	057, $2000|fmfq_B		; B3 note

		\func	nC4,	054, $2000|fmfq_C		; C4 note
		\func	nCs4,	051, $2000|fmfq_Cs		; C#4 note
		\func	nD4,	048, $2000|fmfq_D		; D4 note
		\func	nDs4,	045, $2000|fmfq_Ds		; D#4 note
		\func	nE4,	043, $2000|fmfq_E		; E4 note
		\func	nF4,	040, $2000|fmfq_F		; F4 note
		\func	nFs4,	038, $2000|fmfq_Fs		; F#4 note
		\func	nG4,	036, $2000|fmfq_G		; G4 note
		\func	nGs4,	034, $2000|fmfq_Gs		; G#4 note
		\func	nA4,	032, $2000|fmfq_A		; A4 note
		\func	nAs4,	031, $2000|fmfq_As		; A#4 note
		\func	nB4,	029, $2800|fmfq_B		; B4 note

		\func	nC5,	027, $2800|fmfq_C		; C5 note
		\func	nCs5,	026, $2800|fmfq_Cs		; C#5 note
		\func	nD5,	024, $2800|fmfq_D		; D5 note
		\func	nDs5,	023, $2800|fmfq_Ds		; D#5 note
		\func	nE5,	022, $2800|fmfq_E		; E5 note
		\func	nF5,	021, $2800|fmfq_F		; F5 note
		\func	nFs5,	019, $2800|fmfq_Fs		; F#5 note
		\func	nG5,	018, $2800|fmfq_G		; G5 note
		\func	nGs5,	017, $2800|fmfq_Gs		; G#5 note
		\func	nHiHat,    ,				; PSG hi-hat value
		\func	nA5,	000, $2800|fmfq_A		; A5 note
		\func	nAs5,	   , $2800|fmfq_As		; A#5 note
		\func	nB5,	   , $3000|fmfq_B		; B5 note

		\func	nC6,	   , $3000|fmfq_C		; C6 note
		\func	nCs6,	   , $3000|fmfq_Cs		; C#6 note
		\func	nD6,	   , $3000|fmfq_D		; D6 note
		\func	nDs6,	   , $3000|fmfq_Ds		; D#6 note
		\func	nE6,	   , $3000|fmfq_E		; E6 note
		\func	nF6,	   , $3000|fmfq_F		; F6 note
		\func	nFs6,	   , $3000|fmfq_Fs		; F#6 note
		\func	nG6,	   , $3000|fmfq_G		; G6 note
		\func	nGs6,	   , $3000|fmfq_Gs		; G#6 note
		\func	nA6,	   , $3000|fmfq_A		; A6 note
		\func	nAs6,	   , $3000|fmfq_As		; A#6 note
		\func	nB6,	   , $3800|fmfq_B		; B6 note

		\func	nC7,	   , $3800|fmfq_C		; C7 note
		\func	nCs7,	   , $3800|fmfq_Cs		; C#7 note
		\func	nD7,	   , $3800|fmfq_D		; D7 note
		\func	nDs7,	   , $3800|fmfq_Ds		; D#7 note
		\func	nE7,	   , $3800|fmfq_E		; E7 note
		\func	nF7,	   , $3800|fmfq_F		; F7 note
		\func	nFs7,	   , $3800|fmfq_Fs		; F#7 note
		\func	nG7,	   , $3800|fmfq_G		; G7 note
		\func	nGs7,	   , $3800|fmfq_Gs		; G#7 note
		\func	nA7,	   , $3800|fmfq_A		; A7 note
		\func	nAs7,	   , $3800|fmfq_As		; A#7 note
		endm

; ---------------------------------------------------------------------------
; Constants for notes in the sound driver
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
nR:		rs.b 1						; rest note - stop sounds for current channel
_firstNote:	rs.b 0						; the first actual note
		DefineNotes	GenNoteConst			; generate note constants
_lastNote:	equ __rs-1					; the last note

; ---------------------------------------------------------------------------
; Define samples
;
; By default, range from $81 to $8F
; The first entries have lower ID.
; Constants for IDs are: d(name)
; This special macro is used to generate constants and jump tables
;
; line format: \func	name, alt1, alt2 [...]
; ---------------------------------------------------------------------------

DefineSamples:	macro	func
		\func Kick					; Kick Sample
		\func Snare					; Snare sample
		\func Clap					; Clap sample
		\func Scratch				; Record scratch sample	
		\func Timpani				; Timpani sample (DO NOT USE)	
		\func HiTom					; High tom sample
		\func VLowClap				; Very low clap sample, apparently unused?
		\func HiTimpani				; Timpani high pitch
		\func MidTimpani			; Timpani middle pitch
		\func LowTimpani			; Timpani low pitch
		\func VLowTimpani			; Timpani very low pitch	
		\func MidTom				; Middle tom sample
		\func LowTom				; Low tom sample
		\func FloorTom				; Very low tom sample
		\func HiClap				; High clap
		\func MidClap				; Mid clap
		\func LowClap				; Low clap
		endm

; ---------------------------------------------------------------------------
; Constants for envelopes
; ---------------------------------------------------------------------------

GenSampleConst:	macro	const
		rept narg-1
d\const:	rs.b 0						; generate alt constants
		shift
		endr

d\const:	rs.b 1						; generate the main constant
		endm
; ---------------------------------------------------------------------------

		rsset	nR+1					; samples start at $81
_firstSample:	rs.b 0						; the first valid sample
		DefineSamples	GenSampleConst			; generate constants for samples
_lastSample:	equ __rs-1					; the last valid sample

; ---------------------------------------------------------------------------
; Define track commands
;
; By default, range from $E0 to $FF, and $FF can have special flags.
; The first entries have lower ID.
; Constants for IDs are: com_(name)
; This special macro is used to generate constants and jump tables
;
; line format: \func	name, alt1, alt2 [...]
; ---------------------------------------------------------------------------

TrackCommand:	macro	func
		\func	Pan					; Pan FM channel (left/right/centre)
		\func	DetuneSet				; Detune a channel (change frequency)
		\func	Timing					; External song timing
		\func	Ret					; Subroutine return
		\func	RestoreSong				; Restore previous song
		\func	ChannelTick				; Set tick multiplier for channel
		\func	VolAddFM				; FM volume add
		\func	Tie, Hold				; Do not key off. Can be used to tie two notes together (extend delay, run commands, set new note, etc)
		\func	Gate					; Set note gate timer (frames)
		\func	TransAdd				; Transposition add
		\func	TempoSet				; Set tempo (affected by tick multiplier!)
		\func	SongTick				; Set tick multiplier for song
		\func	VolAddPSG				; PSG volume add
		\func	ClearPush				; Clear special push sound effect flag
		\func	EndBack					; End background sound effect channel
		\func	Voice					; Load FM voice
		\func	Vib					; Set automatic vibrate
		\func	VibOn					; Enable automatic vibrate (without parameter set)
		\func	End					; End a song channel
		\func	NoiseSet				; Set PSG4 noise mode
		\func	VibOff					; Disable automatic vibrate (parameters preserved)
		\func	Env					; Set volume envelope (PSG only)
		\func	Jump					; Jump to song routine
		\func	Loop					; Loop song data
		\func	Call					; Call song subroutine
		\func	Release34				; Hacky command to immediately release ops 3 and 4. Used in SYZ music only
		endm
