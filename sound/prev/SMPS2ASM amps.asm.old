
; ===========================================================================
; ---------------------------------------------------------------------------
; Based on Flamewing's SMPS2ASM, and S1SMPS2ASM by Marc (AKA Cinossu)
; Reworked and improved by Natsumi
; ---------------------------------------------------------------------------

; this macro is created to emulate enum in AS
enum	macro	num, lable
; copy initial number for referencing later
.num: =	num

	rept narg-1
\lable		set .num
.num: =	.num+1
	shift
	endr
    endm

; simple macro to create a Z80 pointer (relative to bank)
z80_ptr	macro addr
	rept narg
		dc.w	(((\addr)<<8)&$FF00)|(((\addr)>>8)&$FF)|$80
		shift
	endr
    endm

; simple macro to create little endian word values
littleEndian	macro value
	rept narg
		dc.w	(((\value)<<8)&$FF00)|(((\value)>>8)&$FF)
		shift
	endr
    endm
; ---------------------------------------------------------------------------------------------
; Note Equates
	enum $80,  nRst,nC0,nCs0,nD0,nEb0,nE0,nF0,nFs0,nG0,nAb0,nA0,nBb0,nB0
	enum nB0+1,	nC1,nCs1,nD1,nEb1,nE1,nF1,nFs1,nG1,nAb1,nA1,nBb1,nB1
	enum nB1+1,	nC2,nCs2,nD2,nEb2,nE2,nF2,nFs2,nG2,nAb2,nA2,nBb2,nB2
	enum nB2+1,	nC3,nCs3,nD3,nEb3,nE3,nF3,nFs3,nG3,nAb3,nA3,nBb3,nB3
	enum nB3+1,	nC4,nCs4,nD4,nEb4,nE4,nF4,nFs4,nG4,nAb4,nA4,nBb4,nB4
	enum nB4+1,	nC5,nCs5,nD5,nEb5,nE5,nF5,nFs5,nG5,nAb5,nA5,nBb5,nB5
	enum nB5+1,	nC6,nCs6,nD6,nEb6,nE6,nF6,nFs6,nG6,nAb6,nA6,nBb6,nB6
	enum nB6+1,	nC7,nCs7,nD7,nEb7,nE7,nF7,nFs7,nG7,nAb7,nA7,nBb7
; ---------------------------------------------------------------------------------------------
; PSG volume envelope equates
;	enum v00=$00,	v01,v02,v03,v04,v05
;	enum v06=v05+1,	v07,v08,v09,v0A,v0B
;	enum v0C=v0B+1
	enum $00,		v00,v01,v02,v03,v04,v05
	enum v05+1,		v06,v07,v08,v09,v0A,v0B
	enum v0B+1,		v0C
; ---------------------------------------------------------------------------------------------
; PSG modulation envelope equates
;	enum m00=$00
	enum 0, m00 
; ---------------------------------------------------------------------------------------------
; DAC Equates
;	enum dKick=$81,			dSnare,dClap,dScratch,dTimpani,dHiTom,dVLowClap,dHiTimpani
;	enum dMidTimpani=dHiTimpani+1,	dLowTimpani,dFloorTimpani,dMidTom,dLowTom
;	enum dFloorTom=dLowTom+1,	dHiClap,dMidClapdLowClap
	
	enum $81,			dKick,dSnare,dClap,dScratch,dTimpani,dHiTom,dVLowClap,dHiTimpani
	enum dHiTimpani+1,	dMidTimpani,dLowTimpani,dFloorTimpani,dMidTom,dLowTom
	enum dLowTom+1,		dFloorTom,dHiClap,dMidClap,dLowClap
; ---------------------------------------------------------------------------------------------
; Channel IDs for SFX
cPSG1 =		$80
cPSG2 =		$A0
cPSG3 =		$C0
cNoise =	$E0	; Not for use in S3/S&K/S3D
cFM3 =		$02
cFM4 =		$04
cFM5 =		$05
cFM6 =		$06	; Only in S3/S&K/S3D, overrides DAC
; ---------------------------------------------------------------------------------------------
; Header Macros
sHeaderInit	macro
sPointZero =	offset(*)
    endm

; Header - Set up Patches Location
; Common to music and SFX
sHeaderPatch	macro loc
	if sPointZero<>offset(*)
		; silently initialize song. Change this if behavior needs to be different
sPointZero =	offset(*)
;		inform 2,"Missing sHeaderInit"
	endif

	z80_ptr \loc
    endm

; Header macros
; Header - Set up Channel Usage
sHeaderCh	macro fm,psg
	dc.b \fm

	if narg=2
		dc.b \psg
	endif
    endm

; Header - Set up Tempo and Tick Multiplier
sHeaderTempo	macro tmul,tempo
	dc.b \tmul,\tempo
    endm

; Header - Set up Tick Multiplier
sHeaderTick	macro tmul
	dc.b \tmul
    endm

; Header - Set up DAC Channel
sHeaderDAC	macro loc,pitch,vol
	z80_ptr \loc

	if narg>=2
		dc.b \pitch
		if narg>=3
			dc.b \vol
		else
			dc.b $00
		endif
	else
		dc.w $00
	endif
    endm

; Header - Set up FM Channel
sHeaderFM	macro loc,pitch,vol
	z80_ptr \loc
	dc.b \pitch,\vol
    endm

; Header - Set up PSG Channel
sHeaderPSG	macro loc,pitch,vol,null,volenv
	z80_ptr \loc
	dc.b \pitch,\vol,\null,\volenv
    endm

; Header - Set up SFX Channel
sHeaderSFX	macro play,patch,loc,pitch,vol
	dc.b \play,\patch
	z80_ptr \loc
	dc.b \pitch,\vol
    endm
; ---------------------------------------------------------------------------------------------
; Equates for different panning types
spNone =	$00
spRight =	$40
spLeft =	$80
spCentre =	$C0
spCenter =	$C0
; ---------------------------------------------------------------------------------------------
; SMPS commands

; E0xx - Panning, AMS, FMS (PANAFMS - PAFMS_PAN)
sPan		macro dir,amsfms
	if narg=2
		dc.b $E0,\dir|\amsfms
	else
		dc.b $E0,\dir
	endif
    endm

; E1xx - Set channel frequency displacement to xx (DETUNE)
ssDetune	macro val
	dc.b $E1,\val
    endm

; E2xx - Set communications byte to xx (SET_COMM)
sComm		macro val
	dc.b $E2,\val
    endm

; E3 - Return (RETURN)
sRet		macro
	dc.b $E3
    endm

; E4 - Fade in previous song (FADE_IN_SONG)
sFade		macro
	dc.b $E4
    endm

; E5xx - Set channel tick multiplier to xx (TICK_MULT - TMULT_CUR)
ssTickMulCh	macro val
	dc.b $E5,\val
    endm

; E6xx - Add xx to FM channel volume (VOLUME - VOL_NN_FM)
saVolFM		macro val
	dc.b $E6,\val
    endm

; E7 - Do not attack next note (HOLD)
sHold =		$E7

; E8xx - Stop note after xx frames (NOTE_STOP - NSTOP_NORMAL)
sGate		macro val
	dc.b $E8,\val
    endm

; E9xx - Add xx to channel pitch (TRANSPOSE - TRNSP_ADD)
saTranspose	macro val
	dc.b $E9,\val
    endm

; EAxx - Set music tempo to xx (TEMPO - TEMPO_SET)
ssTempo		macro val
	dc.b $EA,\val
    endm

; EBxx - Set global tick multiplier to xx (TICK_MULT - TMULT_ALL)
ssTickMul	macro val
	dc.b $EB,\val
    endm

; ECxx - Add xx to PSG channel volume (VOLUME - VOL_NN_PSG)
saVolPSG	macro val
	dc.b $EC,\val
    endm

sNop		macro val
	if narg=1
		dc.b $ED,\val
	else
		dc.b $EE
	endif
    endm

; EFxx - Set patch id of FM channel to xx (INSTRUMENT - INS_N_FM)
sPatFM		macro val
	dc.b $EF,\val
    endm

; F0wwxxyyzz - Modulation
;  ww: wait time
;  xx: modulation speed
;  yy: change per step
;  zz: number of steps
; (MOD_SETUP)
ssMod68k	macro wait,speed,change,step
	dc.b $F0,\wait,\speed,\change,\step
    endm

; F1 - Turn on Modulation (MOD_SET - MODS_ON)
sModOn		macro
	dc.b $F1
    endm

; F2 - End of channel (TRK_END - TEND_STD)
sStop		macro
	dc.b $F2
    endm

; F3xx - PSG waveform to xx (PSG_NOISE - PNOIS_SET)
sNoisePSG	macro val
	dc.b $F3,\val
    endm

; F4 - Turn off Modulation (MOD_SET - MODS_OFF)
sModOff		macro
	dc.b $F4
    endm

; F5xx - PSG volume envelope to xx (INSTRUMENT - INS_N_PSG)
sVolEnvPSG	macro val
	dc.b $F5,\val
    endm

; F6xxxx - Jump to xxxx (GOTO)
sJump		macro loc
	dc.b $F6
	z80_ptr \loc
    endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing (LOOP)
sLoop		macro index,loops,loc
	dc.b $F7,\index,\loops
	z80_ptr \loc
    endm

; F8xxxx - Call pattern at xxxx, saving return point (GOSUB)
sCall		macro loc
	dc.b $F8
	z80_ptr \loc
    endm

; F9 - Mutes FM1 (SND_OFF)
sMuteFM1	macro
	dc.b $F9
    endm
; ---------------------------------------------------------------------------------------------
; Macros for FM instruments

; Patches - Feedback
spFeedback macro val
spFe =	\val
    endm

; Patches - Algorithm
spAlgorithm macro val
spAl =	\val
    endm

; Patches - Detune
spDetune macro op1,op2,op3,op4
spDe1 =	\op1
spDe2 =	\op2
spDe3 =	\op3
spDe4 =	\op4
    endm

; Patches - Multiple
spMultiple macro op1,op2,op3,op4
spMu1 =	\op1
spMu2 =	\op2
spMu3 =	\op3
spMu4 =	\op4
    endm

; Patches - Rate Scale
spRateScale macro op1,op2,op3,op4
spRS1 =	\op1
spRS2 =	\op2
spRS3 =	\op3
spRS4 =	\op4
    endm

; Patches - Attack Rate
spAttackRt macro op1,op2,op3,op4
spAR1 =	\op1
spAR2 =	\op2
spAR3 =	\op3
spAR4 =	\op4
    endm

; Patches - Amplitude Modulation
spAmpMod macro op1,op2,op3,op4
spAM1 =	\op1
spAM2 =	\op2
spAM3 =	\op3
spAM4 =	\op4
    endm

; Patches - Sustain Rate
spSustainRt macro op1,op2,op3,op4
spSR1 =	\op1
spSR2 =	\op2
spSR3 =	\op3
spSR4 =	\op4
    endm

; Patches - Sustain Level
spSustainLv macro op1,op2,op3,op4
spSL1 =	\op1
spSL2 =	\op2
spSL3 =	\op3
spSL4 =	\op4
    endm

; Patches - Decay Rate
spDecayRt macro op1,op2,op3,op4
spDR1 =	\op1
spDR2 =	\op2
spDR3 =	\op3
spDR4 =	\op4
    endm

; Patches - Release Rate
spReleaseRt macro op1,op2,op3,op4
spRR1 =	\op1
spRR2 =	\op2
spRR3 =	\op3
spRR4 =	\op4
    endm

; Patches - Total Level
spTotalLv macro op1,op2,op3,op4
spTL1 =	\op1
spTL2 =	\op2
spTL3 =	\op3
spTL4 =	\op4

	dc.b (spFe<<3)|spAl
;   0     1     2     3     4     5     6     7
;%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111
spTLMask4 = $80
spTLMask3 = ((spAl>=4)<<7)
spTLMask2 = ((spAl>=5)<<7)
spTLMask1 = ((spAl=7)<<7)

	dc.b (spDe1<<4)|spMu1, (spDe2<<4)|spMu2, (spDe3<<4)|spMu3, (spDe4<<4)|spMu4
	dc.b (spRS1<<6)|spAR1, (spRS2<<6)|spAR2, (spRS3<<6)|spAR3, (spRS4<<6)|spAR4
	dc.b (spAM1<<7)|spSR1, (spAM2<<7)|spSR2, (spAM3<<7)|spSR3, (spAM4<<7)|spSR4
	dc.b spDR1,            spDR2,            spDR3,            spDR4
	dc.b (spSL1<<4)|spRR1, (spSL2<<4)|spRR2, (spSL3<<4)|spRR3, (spSL4<<4)|spRR4
	dc.b spTL1|spTLMask1,  spTL2|spTLMask2,  spTL3|spTLMask3,  spTL4|spTLMask4
    endm

