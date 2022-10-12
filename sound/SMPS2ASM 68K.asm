; ===========================================================================
; Created by Flamewing, based on S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; Converted to ASM68K by OrionNavattan, with bits from Natsumi
; ===========================================================================
; Permission to use, copy, modify, and/or distribute this software for any
; purpose with or without fee is hereby granted.
;
; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
; WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
; MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
; ANY SPECIAL, DIRECT, INDIRECT, OR CONSequENTIAL DAMAGES OR ANY DAMAGES
; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
; ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT
; OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

; ---------------------------------------------------------------------------
; Macros to emulate a subset of the behavior of the enum commands in AS
; ---------------------------------------------------------------------------

; Emulate the enum counter increment setting in AS
;enumconf: macro	
;incr:	equ \1
;		endm

; Emulate the enum and nextenum functions of AS
enum:	macro	num,lable
; copy initial number for referencing later
.num: =	num
		rept narg-1
\lable		set .num
.num: =	.num+1
		shift
		endr
		endm
    
    
;SMPS2ASMVer	= 1

; PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.
;psgdelta:	equ 12  

; ---------------------------------------------------------------------------
; Standard Octave Pitch Equates
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
; Note Equates
		;enumconf 1
		enum $80,  nRst,nC0,nCs0,nD0,nEb0,nE0,nF0,nFs0,nG0,nAb0,nA0,nBb0,nB0
		enum nB0+1,	nC1,nCs1,nD1,nEb1,nE1,nF1,nFs1,nG1,nAb1,nA1,nBb1,nB1
		enum nB1+1,	nC2,nCs2,nD2,nEb2,nE2,nF2,nFs2,nG2,nAb2,nA2,nBb2,nB2
		enum nB2+1,	nC3,nCs3,nD3,nEb3,nE3,nF3,nFs3,nG3,nAb3,nA3,nBb3,nB3
		enum nB3+1,	nC4,nCs4,nD4,nEb4,nE4,nF4,nFs4,nG4,nAb4,nA4,nBb4,nB4
		enum nB4+1,	nC5,nCs5,nD5,nEb5,nE5,nF5,nFs5,nG5,nAb5,nA5,nBb5,nB5
		enum nB5+1,	nC6,nCs6,nD6,nEb6,nE6,nF6,nFs6,nG6,nAb6,nA6,nBb6,nB6
		enum nB6+1,	nC7,nCs7,nD7,nEb7,nE7,nF7,nFs7,nG7,nAb7,nA7,nBb7
; SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.
; nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.
; The use of psgdelta is intended to undo the effects of PSGPitchConvert
; and ensure that the ending note is indeed the maximum PSG frequency.
;	if SonicDriverVer<=2	
nMaxPSG				equ nA5
;nMaxPSG1			equ nA5+psgdelta
;nMaxPSG2			equ nA5+psgdelta
;	else
;nMaxPSG				equ nBb6-psgdelta
;nMaxPSG1			equ nBb6
;nMaxPSG2			equ nB6
;endc
	
; ---------------------------------------------------------------------------	
; PSG volume envelope equates
;	case SonicDriverVer
;		=1
			
;			enum 1,			fTone_01,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
;			enum fTone_06+1,fTone_07,fTone_08,fTone_09

;		=2	
			enum 1,			fTone_01,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
			enum fTone_06+1,fTone_07,fTone_08,fTone_09,fTone_0A,fTone_0B,fTone_0C
			enum fTone_0C+1,fTone_0D
			
;		>=3
			
;			enum 1,			sTone_01,sTone_02,sTone_03,sTone_04,sTone_05,sTone_06
;			enum sTone_06+1,sTone_07,sTone_08,sTone_09,sTone_0A,sTone_0B,sTone_0C
;			enum sTone_0C+1,sTone_0D,sTone_0E,sTone_0F,sTone_10,sTone_11,sTone_12
;			enum sTome_12+1,sTone_13,sTone_14,sTone_15,sTone_16,sTone_17,sTone_18
;			enum sTone_18+1,sTone_19,sTone_1A,sTone_1B,sTone_1C,sTone_1D,sTone_1E
;			enum sTone_1E+1,sTone_1F,sTone_20,sTone_21,sTone_22,sTone_23,sTone_24
;			enum sTone_24+1,sTone_25,sTone_26,sTone_27
;			
			; For conversions:
;			if SonicDriverVer>=5
				;nextenum	fTone_01,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
				;nextenum	fTone_07,fTone_08,fTone_09,fTone_0A,fTone_0B,fTone_0C
				;nextenum	fTone_0D
;				enum sTone_27+1,fTone_01,fTone_02,fTone_03,fTone_04,fTone_05,fTone_06
;				enum fTone_06+1,fTone_07,fTone_08,fTone_09,fTone_0A,fTone_0B,fTone_0C
;				enum fTone_0C+1,fTone_0D
;			endc
;	endcase	
	
; ---------------------------------------------------------------------------
; DAC Equates

;	case SonicDriverVer
;		=1
;			enum $81,		dKick,dSnare,dTimpani
;			enum $88,		dHiTimpani,dMidTimpani,dLowTimpani,dVLowTimpani
;		=2
			enum $81,			dKick,dSnare,dClap,dScratch,dTimpani,dHiTom,dVLowClap,dHiTimpani,dMidTimpani
			enum dMidTimpani+1,	dLowTimpani,dVLowTimpani,dMidTom,dLowTom,dFloorTom,dHiClap
			enum dHiClap+1,		dMidClap,dLowClap

    
;		>=3;SonicDriverVer>=3
;			if (use_s3_samples<>0)|(use_sk_samples<>0)|(use_s3d_samples<>0)
				
;				enum $81,				dSnareS3,dHighTom,dMidTomS3,dLowTomS3,dFloorTomS3,dKickS3,dMuffledSnare
;				enum dMuffledSnare+1,	dCrashCymbal,dRideCymbal,dLowMetalHit,dMetalHit,dHighMetalHit
;				enum dHighMetalHit+1,	dHigherMetalHit,dMidMetalHit,dClapS3,dElectricHighTom
;				enum dElectricHighTom+1,dElectricMidTom,dElectricLowTom,dElectricFloorTom
;				enum dElectricFloorTom+1,dTightSnare,dMidpitchSnare,dLooseSnare,dLooserSnare
;				enum dLooserSnare+1,	dHiTimpaniS3,dLowTimpaniS3,dMidTimpaniS3,dQuickLooseSnare
;				enum dQuickLooseSnare+1,dClick,dPowerKick,dQuickGlassCrash
				
;			if (use_s3_samples<>0)|(use_sk_samples<>0)
			
				
;				enum dQuickGlassCrash+1,dGlassCrashSnare,dGlassCrash,dGlassCrashKick,dQuietGlassCrash
;				enum dQuietGlassCrash+1,dOddSnareKick,dKickExtraBass,dComeOn,dDanceSnare,dLooseKick
;				enum dLooseKick+1,		dModLooseKick,dWoo,dGo,dSnareGo,dPowerTom,dHiWoodBlock,dLowWoodBlock
;				enum dLowWoodBlock+1,	dHiHitDrum,dLowHitDrum,dMetalCrashHit,dEchoedClapHit
;				enum dEchoedClapHit+1,	dLowerEchoedClapHit,dHipHopHitKick,dHipHopHitPowerKick
;				enum dHipHopHitPowerKick+1,dBassHey,dDanceStyleKick,dHipHopHitKick2,dHipHopHitKick3
;				enum dHipHopHitKick3+1,	dReverseFadingWind,dScratchS3,dLooseSnareNoise,dPowerKick2
;				enum dPowerKick2+1,		dCrashingNoiseWoo,dQuickHit,dKickHey,dPowerKickHit
;				enum dPowerKickHit+1,	dLowPowerKickHit,dLowerPowerKickHit,dLowestPowerKickHit
;			endc
;			endc
;			; For conversions:
;			if (use_s2_samples<>0)
;				if (use_s3_samples<>0)|(use_sk_samples<>0)|(use_s3d_samples<>0)
;					enum dLowestPowerKickHit+1,	dKick
;				else
;					enum $81, dKick
;				endc
;				enum dKick+1, dSnare,dClap,dScratch,dTimpani,dHiTom,dVLowClap,dHiTimpani,dMidTimpani
;				enum dMidTimpani+1,	dLowTimpani,dVLowTimpani,dMidTom,dLowTom,dFloorTom,dHiClap
;				enum dHiClap+1,		dMidClap,dLowClap

;			endc
;			if (use_s3d_samples<>0)
;				nextenum	dFinalFightMetalCrash,dIntroKick
;			endc
;			if (use_s3_samples<>0)
;				nextenum	dEchoedClapHit_S3,dLowerEchoedClapHit_S3
;			endc
;	endcase	
; ---------------------------------------------------------------------------
; Channel IDs for SFX
cPSG1:				equ $80
cPSG2:				equ $A0
cPSG3:				equ $C0
cNoise:				equ $E0
cFM3:				equ $02
cFM4:				equ $04
cFM5:				equ $05


; ---------------------------------------------------------------------------
; Header Macros
smpsHeaderStartSong macro ver
songStart\@ equ offset(*)
	; This stripped-down version of SMPS2ASM only supports Sonic 2 source driver, 
	; so halt assembly if a different source driver is detected.
	if ver<>2
		inform 3,"This version of SMPS2ASM only supports building music and sounds for Sonic 2."
	endm

; Header - Set up Voice Location
; Common to music and SFX
smpsHeaderVoice macro loc
;	if offset(songStart)<>offset(*)
;		inform 3,"smpsHeaderStartSong is missing."
;	endc
		z80_ptr \loc
	endm

smpsHeaderVoiceNull macro
;	if songStart<>*
;		fatal "Missing smpsHeaderStartSong"
;	endif
	dc.w	$0000
	endm

	
; Header macros for music (not for SFX)
; Header - Set up Channel Usage
smpsHeaderChan macro fm,psg
		dc.b	\fm
	ifarg /1
		dc.b	\psg
	endc	
	endm

; Header - Set up Tempo
smpsHeaderTempo macro div,mod
	dc.b \div,\mod
    endm

	
; Header - Set up DAC Channel
smpsHeaderDAC macro loc,pitch,vol
	z80_ptr \loc
	if narg>=2
		dc.b \pitch
		if narg>=3
			dc.b \vol
		else
			dc.b $00
		endc
	else
		dc.w $00
	endc
    endm


; Header - Set up FM Channel
smpsHeaderFM	macro loc,pitch,vol
		z80_ptr \loc
		dc.b \pitch,\vol
    endm

; Header - Set up PSG Channel
smpsHeaderPSG macro loc,pitch,vol,mod,voice
		z80_ptr \loc
		dc.b \pitch,\vol,\mod,\voice
	endm
		
; Header macros for SFX (not for music)
; Header - Set up Tempo
smpsHeaderTempoSFX macro div
		dc.b	\div
	endm

; Header - Set up Channel Usage
smpsHeaderChanSFX macro chan
		dc.b	\chan
	endm
		
; Header - Set up FM Channel for SFX
smpsHeaderSFXChannel macro chanid,loc,pitch,vol
		dc.b $80,\chanid
		z80_ptr \loc
		dc.b \pitch,\vol
	endm		
	
; ---------------------------------------------------------------------------	
; Co-ord Flag Macros and Equates
; Equates for different panning types
panNone =	$00
panRight =	$40
panLeft =	$80
panCentre =	$C0  ; silly Brits :U
panCenter =	$C0

; E0xx - Panning, AMS, FMS

smpsPan		macro dir,amsfms
	if narg=2
		dc.b $E0,\dir|\amsfms
	else
		dc.b $E0,\dir
	endif
    endm

; E1xx - Set channel detune to val
smpsAlterNote macro val
		dc.b $E1,\val
	endm
	
; E2xx - Useless
smpsNop macro val
		dc.b $E2,\val
	endm	
	
; E3 - Return (used after smpsCall)
smpsReturn macro
		dc.b $E3
	endm

; E4 - Fade in previous song (ie. 1-Up)
smpsFade macro
		dc.b $E4
	endm	
	
; E5xx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
		dc.b	$E5,\val
	endm	
	
; E6xx - Alter Volume by xx
smpsAlterVol macro val
		dc.b $E6,\val
	endm
	
; E7 - Prevent attack of next note
smpsNoAttack equ $E7

; E8xx - Set note fill to xx
smpsNoteFill macro val
		dc.b $E8,\val
	endm

; E9xx - Add xx to channel pitch
smpsAlterPitch macro val
		dc.b $E9,\val
	endm
	
; EAxx - Set music tempo modifier to xx
smpsSetTempoMod macro mod
		dc.b $EA,\mod
	endm
	
; EBxx - Set music tempo divider to xx
smpsSetTempoDiv macro val
		dc.b	$EB,\val
	endm	
	
; ECxx - Add xx to PSG channel volume
smpsPSGAlterVol macro vol
		dc.b $EC,\vol
	endm

; EFxx[yy] - Set Voice of FM channel to xx; xx < 0 means yy present
smpsSetvoice macro voice
		dc.b $EF,\voice
	endm	
	
; F0wwxxyyzz - Modulation
; ww: wait time
; xx: modulation speed
; yy: change per step
; zz: number of steps
smpsModSet macro wait,speed,change,step	
		dc.b $F0,\wait,\speed,\change,\step
    endm

; F1 - Turn on Modulation
smpsModOn	 macro
		dc.b $F1
    endm
    
; F2 - End of channel
smpsStop macro
		dc.b $F2
	endm  
	
; F3xx - PSG waveform to xx
smpsPSGform macro form
		dc.b $F3,\form
	endm	
	
; F4 - Turn off Modulation 
smpsModOff	macro
		dc.b $F4
    endm
    
 ; F5xx - PSG voice to xx
smpsPSGvoice macro voice
		dc.b $F5,\voice
	endm 
	
; F6xxxx - Jump to xxxx
smpsJump macro loc
		dc.b $F6
		z80_ptr \loc
	endm
	
; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
		dc.b $F7,\index,\loops
		z80_ptr \loc
	endm
	
; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
		dc.b $F8
		z80_ptr \loc
	endm
	
; ---------------------------------------------------------------------------
; Macros for FM instruments
; Voices - Feedback
smpsVcFeedback macro val
vcFeedback = \val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm = \val
	endm
	
smpsVcUnusedBits macro val,d1r1,d1r2,d1r3,d1r4
vcUnusedBits = \val
	if strlen("\2")>0; \d1r1
vcD1R1Unk = \d1r1
	else
vcD1R1Unk = 0
	endc

	if strlen("\3")>0; \d1r2
vcD1R2Unk = \d1r2
	else
vcD1R2Unk = 0
	endc
	
	if strlen("\4")>0; \d1r3
vcD1R3Unk = \d1r3
	else
vcD1R3Unk = 0
	endc

	if strlen("\5")>0; \d1r4
vcD1R4Unk = \d1r4
	else
vcD1R4Unk = 0
	endc
	endm		
	
; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 = \op1
vcDT2 = \op2		
vcDT3 = \op3	
vcDT4 = \op4	
	endm
	
; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 = \op1
vcCF2 = \op2
vcCF3 = \op3
vcCF4 = \op4
	endm
	
; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 = \op1
vcRS2 = \op2	
vcRS3 = \op3	
vcRS4 = \op4	
	endm
	
; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 =	\op1
vcAR2 =	\op2
vcAR3 =	\op3
vcAR4 =	\op4
    endm
    
; Voices - Amplitude Modulation
smpsVcAmpMod macro op1,op2,op3,op4
vcAM1 =	\op1;<<5
vcAM2 =	\op2;<<5
vcAM3 =	\op3;<<5
vcAM4 =	\op4;<<5
    endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 = \op1
vcD1R2 = \op2	
vcD1R3 = \op3	
vcD1R4 = \op4	
	endm
	
; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 = \op1
vcD2R2 = \op2	
vcD2R3 = \op3	
vcD2R4 = \op4	
	endm
	
; Voices - Decay Level
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 = \op1
vcDL2 = \op2
vcDL3 = \op3
vcDL4 = \op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 = \op1
vcRR2 = \op2
vcRR3 = \op3
vcRR4 = \op4
	endm
	
smpsVcTotalLevel macro op1,op2,op3,op4
vcTL1 = \op1
vcTL2 = \op2	
vcTL3 = \op3
vcTL4 = \op4
		dc.b (vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
;   0     1     2     3     4     5     6     7
;%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111

vcTLMask4 = ((vcAlgorithm=7)<<7)
vcTLMask3 = ((vcAlgorithm>=4)<<7)
vcTLMask2 = ((vcAlgorithm>=5)<<7)
vcTLMask1 = $80	

		dc.b	(vcDT4<<4)+vcCF4       ,(vcDT2<<4)+vcCF2       ,(vcDT3<<4)+vcCF3       ,(vcDT1<<4)+vcCF1
		dc.b	(vcRS4<<6)+vcAR4       ,(vcRS2<<6)+vcAR2       ,(vcRS3<<6)+vcAR3       ,(vcRS1<<6)+vcAR1
		dc.b	(vcAM4<<7)|vcD1R4|vcD1R4Unk,(vcAM2<<7)|vcD1R2|vcD1R2Unk,(vcAM3<<7)|vcD1R3|vcD1R3Unk,(vcAM1<<7)|vcD1R1|vcD1R1Unk
		dc.b	vcD2R4                 ,vcD2R2                 ,vcD2R3                 ,vcD2R1
		dc.b	(vcDL4<<4)+vcRR4       ,(vcDL2<<4)+vcRR2       ,(vcDL3<<4)+vcRR3       ,(vcDL1<<4)+vcRR1
		dc.b	vcTL4|vcTLMask4        ,vcTL2|vcTLMask2        ,vcTL3|vcTLMask3        ,vcTL1|vcTLMask1
	endm	
			