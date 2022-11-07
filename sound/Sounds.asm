; ---------------------------------------------------------------------------
; Macro for playing a sound or a command
; ---------------------------------------------------------------------------

;play:		macro	queue, command, song
;		move.\0	#\song,d0				; load the song to d0

;		if (\queue < 0) | (\queue > v_soundqueue_size)
;			inform 2,"Invalid or undefined sound queue slot. Must be between 0 and \#v_soundqueue_size"
;		endc

;		\command	PlaySound\queue			; call playsound based on the slot ID
;		endm

; ---------------------------------------------------------------------------
; Define background music
;
; This special macro is used to generate constants for both the main program and 
; sound driver, and for the compressed music, file definitions.
; Unfortunately, we can't use it to generate the includes directly, as they are 
; included in the rom in a completely different order.
; line format: \func	sound file, speed shoes tempo, flag 
; (20h = uncompressed, 40h = disables PAL mode), -128 = hack to force the
; Continue music's pointer to the correct value of 0.
; ---------------------------------------------------------------------------


MusicFiles:	macro func

		\func	2PResults,		$68, 0
		\func	EHZ,			$BE, 0
		\func	MCZ_2P,			$FF, 0
		\func	OOZ,			$F0, 0
		\func	MTZ,			$FF, 0
		\func	HTZ,			$DE, 0
		\func	ARZ,			$FF, 0
		\func	CNZ_2P,			$DD, 0
		\func	CNZ,			$68, 0
		\func	DEZ,			$80, 0
		\func	MCZ,			$D6, 0
		\func	EHZ_2P,			$7B, 0
		\func	SCZ,			$7B, 0
		\func	CPZ,			$FF, 0
		\func	WFZ,			$A8, 0
		\func	HPZ,			$FF, 0
		\func	Options,		$87, 0
		\func	SpecialStage,	$FF, 0
		\func	Boss,			$FF, 0
		\func	FinalBoss,		$C9, 0
		\func	Ending,			$97, 0
		\func	SuperSonic,		$FF, 0
		\func	Invincible,		$FF, 0
		\func	ExtraLife,		$CD, 20h
		\func	Title,			$CD, 0
		\func	EndLevel,		$AA, 0
		\func	GameOver,		$F2, 20h
		\func	Continue,		$DB, -128	; force the continue music's pointer to the correct value
		\func	Emerald,		$D5, 20h
		\func	Credits,		$F0, 20h
		\func	Drowning,		$80, 40h	; don't adjust the drowning music for PAL, keep it synchronized with the gameplay
	endm	

; ---------------------------------------------------------------------------
; Define sound effects
; This special macro is used to generate pointers and constants.
; Unlike with music, we can also use it to generate includes as well,
; since they are in the ROM in the same order as their IDs
; Constants for IDs are: sfx_(name)
; line format: \func	sound file, sound priority
; ---------------------------------------------------------------------------

SFXFiles:	macro	func

		; WARNING: Ring, RingLeft, Gloop, and SpinDashCharge are referenced directly by
		; the sound driver via ID. If you change their names here, you will need to change
		; their constants in the driver accordingly.

		\func	Jump,			80h	
		\func	Checkpoint,		70h
		\func	SpikeSwitch,	70h	; used by Mecha Sonic
		\func	Death,			70h
		\func	Skid,			70h
		\func	BlockPush,		70h
		\func	SpikeHit,		70h	; spike impalement
		\func	Sparkle,		70h
		\func	Beep,			70h
		\func	ActionBlock,	70h	; unused Sonic 1 leftover, sound made when touching R block in Special Stage 
		\func	Splash,			68h
		\func	Swish,			70h	; apparently unused
		\func	BossHit,		70h
		\func	Bubble,			70h
		\func	FireBall,		60h	; lava ball, arrow firing
		\func	Shield,			70h
		
		\func	LaserBeam,		70h	; same sound was used for the saws in Sonic 1's SBZ
		\func	Electricity,	60h	; unused Sonic 1 leftover, sound made by SBZ electric traps
		\func	Drown,			70h
		\func	Flame,			60h
		\func	Bumper,			70h	; round bumpers, Crawl's shield
		\func	Ring,			70h
		\func	SpikeMove,		70h
		\func	Rumbling,		70h	; holdover from Sonic 1, used only by Eggrobo rising from floor
		\func	Unknown1,		70h	; also in Sonic 1, and unused in that game as well
		\func	Collapse,		70h
		\func	Diamonds,		70h	; unused Sonic 1 leftover, sound made by glass blocks in Special Stage
		\func	Door,			70h
		\func	Dash,			70h	; spindash release, spin tubes, teleporters, and Mecha Sonic dash
		\func	Hammer,			70h
		\func	Roll,			70h
		\func	ContinueJingle,	7Fh
				
		\func	SlotMachine,	6Fh	; slot machine ding
		\func	Break,			70h
		\func	Ding,			70h	; air warning ding
		\func	GiantRing,		70h	; unused Sonic 1 leftover, sound made by giant rings
		\func	Bomb,			70h
		\func	Register,		70h
		\func	RingLoss,		70h
		\func	ChainRise,		70h	; unused Sonic 1 leftover, clicking of rising MZ stompers
		\func	Burning,		70h
		\func	Bonus,			70h	; unused Sonic 1 leftover, sound made by hidden bonus points
		\func	EnterSS,		70h
		\func	Smash,			70h
		\func	Spring,			70h
		\func	Switch,			6Fh
		\func	RingLeft,		70h
		\func	Signpost,		70h
		
		\func	Zapper,			70h	; CNZ boss zapper
		\func	Unknown2,		60h	; unknown, never used
		\func	Unknown3,		60h	; unknown, never used
		\func	Signpost2P,		70h
		\func	LidPop,			70h	; popping of OOZ burner platforms
		\func	SlidingSpike,	70h
		\func	Elevator,		70h	; CNZ elevators
		\func	PlatformKnock,	70h	; knocking of swinging platforms in ARZ and MCZ
		\func	SaucerBumper,	70h	; CNZ saucer bumpers
		\func	LargeBumper,	70h	; CNZ special bumpers
		\func	Gloop,			60h	; CPZ blue balls obstacle
		\func	PreArrowFiring,	62h	; ARZ arrow shooters
		\func	Fire,			60h
		\func	ArrowStick,		60h
		\func	Helicopter,		60h	; Eggman's autogyro in EHZ, propellers in WFZ
		\func	Transform,		70h	; Super Sonic transformation
		
		\func	SpinDashCharge,	70h	; charging a spindash
		\func	Rumbling2,		70h	; HTZ earthquakes, ARZ boss pillars, Death Egg rumbling as it explodes
		\func	PinballLauncher,70h	; CNZ pinball launchers
		\func	Flipper,		70h	; CNZ pinball flippers
		\func	ZiplineClick,	60h	; HTZ zipline click
		\func	Leaves,			60h	; ARZ leaves
		\func	MegaMackDrop,	60h
		\func	DrawbridgeMove,	6Fh	; MCZ drawbridges lowering
		\func	QuickDoorSlam,	70h	; unused
		\func	DrawbridgeDown,	70h
		\func	LaserBurst,		6Fh	; OOZ & MTZ boss lasers
		\func	Scatter,		6Fh	; OOZ boss laser on platform floor, Tornado shot down in WFZ
		\func	Teleport,		70h
		\func	Error,			71h
		\func	MechaSonicBuzz,	70h
		\func	LargeLaser,		70h	; large laser that shoots down Tornado in WFZ
		
		\func	OilSlide,		6Fh	
		endm


; ---------------------------------------------------------------------------
; Define sound commands
; Constants for IDs are: cmd_(name)
; This special macro is used to generate constants
; line format: \func	command name, command priority

; Note that Pause and Unpause are not real commands, but instead signal 
; SndDriverInput to set the driver's pause flag.
; ---------------------------------------------------------------------------
DriverCmds:	macro	func
		
		\func	StopSFX
		\func	Fade
		\func	Sega	
		\func	Speedup	
		\func	Slowdown	
		\func	Stop 	; last real command
		\func	Pause
		\func	Unpause
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