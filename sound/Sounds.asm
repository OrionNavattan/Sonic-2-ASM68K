; ---------------------------------------------------------------------------
; Define background music
;
; This special macro is used to generate constants for both the main program and
; sound driver, and for the compressed music file definitions.
; Unfortunately, we can't use it to generate the includes directly, as they are
; included in the ROM in a completely different order.
; line format: \func	sound file, speed shoes tempo, flag
; (20h = uncompressed, 40h = disables PAL adjustment)
; ---------------------------------------------------------------------------

; Flag constants
uncompressed_mus_bit:	equ 5					; if set, this track is uncompressed in ROM
disable_pal_bit:		equ 6				; if set, this track will NOT be adjusted for PAL
mus_bank_bit:			equ 7				; if set, track is in bank 2, otherwise bank 1
uncompressed_mus:		equ 1<<uncompressed_mus_bit
disable_pal:			equ 1<<disable_pal_bit
mus_bank:				equ 1<<mus_bank_bit
mus_flags:			equ uncompressed_mus|disable_pal|mus_bank

MusicFiles:	macro func

		\func	2PResults,		68h,	0
		\func	EHZ,			0BEh,	0
		\func	MCZ_2P,			0FFh,	0
		\func	OOZ,			0F0h,	0
		\func	MTZ,			0FFh,	0
		\func	HTZ,			0DEh,	0
		\func	ARZ,			0FFh,	0
		\func	CNZ_2P,			0DDh,	0
		\func	CNZ,			68h,	0
		\func	DEZ,			80h,	0
		\func	MCZ,			0D6h,	0
		\func	EHZ_2P,			7Bh,	0
		\func	SCZ,			7Bh,	0
		\func	CPZ,			0FFh,	0
		\func	WFZ,			0A8h,	0
		\func	HPZ,			0FFh,	0
		\func	Options,		87h,	0
		\func	SpecialStage,	0FFh,	0
		\func	Boss,			0FFh,	0
		\func	FinalBoss,		0C9h,	0
		\func	Ending,			97h,	0
		\func	SuperSonic,		0FFh,	0
		\func	Invincible,		0FFh,	0
		\func	ExtraLife,		0CDh,	uncompressed_mus
		\func	Title,			0CDh,	0
		\func	EndLevel,		0AAh,	0
		\func	GameOver,		0F2h,	uncompressed_mus
		\func	Continue,		0DBh,	0
		\func	Emerald,		0D5h,	uncompressed_mus
		\func	Credits,		0F0h,	uncompressed_mus
		\func	Drowning,		80h,	disable_pal ; don't adjust the drowning music for PAL; keep it synchronized with the gameplay
		endm

; ---------------------------------------------------------------------------
; Define sound effects
; This special macro is used to generate pointers and constants.
; Unlike with music, we can also use it to generate includes as well,
; since they are in the ROM in the same order as their IDs.
; Constants for IDs are: sfx_(name)
; line format: \func	sound file, sound priority
; ---------------------------------------------------------------------------

SFXFiles:	macro	func

		; WARNING: Ring, RingLeft, Gloop, and SpinDashCharge are referenced directly by
		; the sound driver via their ID constants. If you change their names here,
		; you will need to change their constants in the driver accordingly.

		\func	Jump,			80h
		\func	Checkpoint,		70h
		\func	SpikeSwitch,	70h			; used by Mecha Sonic
		\func	Death,			70h
		\func	Skid,			70h
		\func	MissileDissolve,70h			; unused Sonic 1 leftover, missile dissolve sound
		\func	SpikeHit,		70h		; spike impalement
		\func	Sparkle,		70h
		\func	Beep,			70h
		\func	ActionBlock,	70h			; unused Sonic 1 leftover, sound made when touching action blocks in Special Stage
		\func	Splash,			68h
		\func	Swish,			70h		; apparently unused
		\func	BossHit,		70h
		\func	Bubble,			70h
		\func	FireBall,		60h		; lava ball, arrow firing
		\func	Shield,			70h

		\func	LaserBeam,		70h		; same sound was used for the saws in Sonic 1's SBZ
		\func	Electricity,	60h			; unused Sonic 1 leftover, sound made by SBZ electric traps
		\func	Drown,			70h
		\func	Flame,			60h
		\func	Bumper,			70h		; round bumpers, Crawl's shield
		\func	Ring,			70h
		\func	SpikeMove,		70h
		\func	Rumbling,		70h		; holdover from Sonic 1, used only by Eggrobo rising from floor
		\func	Unknown1,		70h		; also in Sonic 1, and unused in that game as well
		\func	Collapse,		70h
		\func	Diamonds,		70h		; unused Sonic 1 leftover, sound made by glass blocks in Special Stage
		\func	Door,			70h
		\func	Dash,			70h		; spindash release, spin tubes, teleporters, and Mecha Sonic dash
		\func	Hammer,			70h
		\func	Roll,			70h
		\func	ContinueJingle,	7Fh

		\func	SlotMachine,	6Fh			; slot machine ding
		\func	Break,			70h
		\func	Ding,			70h		; air warning ding
		\func	GiantRing,		70h		; unused Sonic 1 leftover, sound made by giant rings
		\func	Bomb,			70h
		\func	Register,		70h
		\func	RingLoss,		70h
		\func	ChainRise,		70h		; unused Sonic 1 leftover, clicking of rising MZ stompers
		\func	Burning,		70h
		\func	Bonus,			70h		; unused Sonic 1 leftover, sound made by hidden bonus points
		\func	EnterSS,		70h
		\func	Smash,			70h
		\func	Spring,			70h
		\func	Switch,			6Fh
		\func	RingLeft,		70h
		\func	Signpost,		70h

		\func	Zapper,			70h		; CNZ boss zapper
		\func	Unknown2,		60h		; unknown, never used
		\func	Unknown3,		60h		; unknown, never used
		\func	Signpost2P,		70h
		\func	LidPop,			70h		; popping of OOZ burner platforms
		\func	SlidingSpike,	70h
		\func	Elevator,		70h		; CNZ elevators
		\func	PlatformKnock,	70h			; knocking of swinging platforms in ARZ and MCZ
		\func	SaucerBumper,	70h			; CNZ saucer bumpers
		\func	LargeBumper,	70h			; CNZ special bumpers
		\func	Gloop,			60h		; CPZ blue balls obstacle
		\func	PreArrowFiring,	62h			; ARZ arrow shooters
		\func	Fire,			60h
		\func	ArrowStick,		60h
		\func	Helicopter,		60h		; Eggman's helicopter in EHZ, propellers in WFZ
		\func	Transform,		70h		; Super Sonic transformation

		\func	SpinDashCharge,	70h			; charging a spindash
		\func	Rumbling2,		70h		; HTZ earthquakes, ARZ boss pillars, Death Egg rumbling as it explodes
		\func	PinballLauncher,70h			; CNZ pinball launchers
		\func	Flipper,		70h		; CNZ pinball flippers
		\func	ZiplineClick,	60h			; HTZ zipline click
		\func	Leaves,			60h		; ARZ leaves
		\func	MegaMackDrop,	60h
		\func	DrawbridgeMove,	6Fh			; MCZ drawbridges lowering
		\func	QuickDoorSlam,	70h			; unused
		\func	DrawbridgeDown,	70h
		\func	LaserBurst,		6Fh		; OOZ & MTZ boss lasers
		\func	Scatter,		6Fh		; OOZ boss laser on platform floor, laser that shoots Tornado shot down in WFZ
		\func	Teleport,		70h
		\func	Error,			71h
		\func	MechaSonicBuzz,	70h
		\func	LargeLaser,		70h		; large laser that shoots down Tornado in WFZ

		\func	OilSlide,		6Fh
		endm


; ---------------------------------------------------------------------------
; Define sound commands
; Constants for IDs are: cmd_(name)
; This special macro is used to generate constants.
; line format: \func	command name, command priority

; Note that Pause and Unpause are not real commands: but instead signal
; SndDriverInput to set the driver's pause flag, and are not passed to the
; driver itself.
; ---------------------------------------------------------------------------
DriverCmds:	macro	func

		\func	StopSFX,	real
		\func	Fade,		real
		\func	Sega,		real
		\func	Speedup,	real
		\func	Slowdown,	real
		\func	Stop,		real			; last real command
		\func	Pause
		\func	Unpause
		endm

; ---------------------------------------------------------------------------
; Generate constants for sound IDs in the main program
; (Constants for the sound driver are generated at MusicIndex)
; ---------------------------------------------------------------------------

; Background music
		rsset $80					; ID of the first music file
com_Null:	rs.b 1						; empty sound
_firstMusic:	rs.b 0						; constant for the first music

GenMusicConstMain:	macro	name
mus_\name:	rs.b 1						; use the next ID for music
		endm

		MusicFiles	GenMusicConstMain		; generate constants for each music file
_lastMusic:	equ __rs					; constant for empty slot after last music
; ---------------------------------------------------------------------------

; Sound effects
		rsset $A0					; ID of the first sfx file
_firstSfx:	rs.b 0						; constant for the first sfx

GenSfxConst:	macro	name
sfx_\name:	rs.b 1						; use the next ID for sfx
		endm

		SfxFiles	GenSfxConst			; generate constants for each sfx file
_lastSfx:	equ __rs					; constant for empty slot after last sfx
; ---------------------------------------------------------------------------

; Sound commands
		rsset $F8					; ID of the first command
_firstCmd:	rs.b 0						; constant for the first command

GenCmdConst:	macro	name
cmd_\name:	rs.b 1						; use the next ID for command
		endm

		DriverCmds	GenCmdConst			; generate constants for each command
_lastCmd:	equ __rs-2					; constant for slot after last real command (same as cmd_Pause)
