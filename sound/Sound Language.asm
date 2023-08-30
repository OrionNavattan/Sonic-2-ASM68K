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

; ===========================================================================
; Orginally created for AS by Flamewing, based on S1SMPS2ASM version 1.1 
; by Marc Gordon (AKA Cinossu)

; Initial ASM68K port by Brainulator; modified by OrionNavattan
; with some influence from NatsumiFox's AMPS.

; The conditionals for driver version, SMPS2ASM version, and sample settings, 
; as well as all note and sample definitions, are in "Frequency, Note, Envelope,
; & Sample Definitions.asm".
; Everything in this file is specific to SMPS2ASM. 
; ---------------------------------------------------------------------------

; PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.
psgdelta	equ 12


; SMPS2ASM uses nMaxPSG for songs from S1/S2 drivers.
; nMaxPSG1 and nMaxPSG2 are used only for songs from S3/S&K/S3D drivers.
; The use of psgdelta is intended to undo the effects of PSGPitchConvert
; and ensure that the ending note is indeed the maximum PSG frequency.
	if SonicDriverVer<=2
nMaxPSG				equ nA5
nMaxPSG1			equ nA5+psgdelta
nMaxPSG2			equ nA5+psgdelta
	else
nMaxPSG				equ nBb6-psgdelta
nMaxPSG1			equ nBb6
nMaxPSG2			equ nB6
	endc

; ---------------------------------------------------------------------------
; Channel IDs for SFX
cPSG1				equ $80
cPSG2				equ $A0
cPSG3				equ $C0
cNoise				equ $E0				; Not for use in S3/S&K/S3D
cFM3				equ $02
cFM4				equ $04
cFM5				equ $05
cFM6				equ $06				; Only in S3/S&K/S3D, overrides DAC

; ---------------------------------------------------------------------------
; Conversion macros and functions

	if ~def(little_endian)
little_endian macros
		dc.w	((\1<<8)&$FF00)|((\1>>8)&$FF)
	endc

s2TempotoS1 macro n
	s21convval:	= (((768-n)>>1)/(256-n))&$FF
	endm

s2TempotoS3 macro n
	s23convval:	= ($100-((n=0)|n))&$FF
	s32convval:	= s23convval
	endm

s1TempotoS2 macro n
	if n=0
		s12convval:	= ((((256-1)<<8)+(256>>1))/256)&$FF
	else
		s12convval:	= ((((n-1)<<8)+(n>>1))/n)&$FF
	endc
	endm

s1TempotoS3 macro n
	s1TempotoS2	n
	s2TempotoS3	s12convval
	endm

s3TempotoS1 macro n
	s2TempotoS3	n
	s2TempotoS1	s23convval
	endm

s3TempotoS2 macros
	s2TempotoS3	\_

convertMainTempoMod macro val
	if ((SourceDriver>=3)&(SonicDriverVer>=3))|(SonicDriverVer=SourceDriver)
		dc.b \val
	elseif SourceDriver=1
		if \val\=1
			inform 3,"Invalid main tempo of 1 in song from Sonic 1"
		endc
		if SonicDriverVer=2
			s1TempotoS2	\val
			dc.b s12convval
		else;if SonicDriverVer>=3
			s1TempotoS3	\val
			dc.b s13convval
		endc
	elseif SourceDriver=2
		if \val\=0
			inform 3,"Invalid main tempo of 0 in song from Sonic 2"
		endc
		if SonicDriverVer=1
			s2TempotoS1	\val
			dc.b s21convval
		else;if SonicDriverVer>=3
			s2TempotoS3	\val
			dc.b s23convval
		endc
	else;if SourceDriver>=3
		if \val\=0
			inform 2,"Performing approximate conversion of Sonic 3 main tempo modifier of 0"
		endc
		if SonicDriverVer=1
			s3TempotoS1	\val
			dc.b s31convval
		else;if SonicDriverVer=2
			s3TempotoS2	\val
			dc.b s32convval
		endc
	endc
	endm

; PSG conversion to S3/S&K/S3D drivers require a tone shift of 12 semi-tones.
PSGPitchConvert macro val
	if (SonicDriverVer>=3)&(SourceDriver<3)
		dc.b (\val\+psgdelta)&$FF
	elseif (SonicDriverVer<3)&(SourceDriver>=3)
		dc.b (\val\-psgdelta)&$FF
	else
		dc.b \val
	endc
	endm

CheckedChannelPointer macro location
	if SonicDriverVer<>1
		z80_ptr	\location\
	else
		if def(\location)
			inform 3,"Tracks for Sonic 1 songs must come after the start of the song"
		else
			dc.w \location\-songStart
		endc
	endc
	endm
	
; ---------------------------------------------------------------------------
; Header Macros
smpsHeaderStartSong macro ver,sourcesmps2asmver

SourceDriver = ver

	if (narg=2)
SourceSMPS2ASM = sourcesmps2asmver
	else
SourceSMPS2ASM = 0
	endc

songStart = offset(*)

	if SMPS2ASMVer<SourceSMPS2ASM
		inform 1,"Song at $%h was made for a newer version of SMPS2ASM (this is version %d, but song wants at least version %d).",songStart,SMPS2ASMVer,SourceSMPS2ASM
	endc

	endm

smpsHeaderVoiceNull macro
	if songStart<>offset(*)
		inform 3,"Missing smpsHeaderStartSong."
	endc
		dc.w $0000
	endm

; Header - Set up Voice Location
; Common to music and SFX
smpsHeaderVoice macro location
	if songStart<>offset(*)
		inform 3,"Missing smpsHeaderStartSong."
	endc
	if SonicDriverVer<>1
		z80_ptr	\location\
	else
		if def(\location)
			inform 3,"Voice banks for Sonic 1 songs must come after the song."
		else
			dc.w \location\-songStart
		endc
	endc
	endm

; Header - Set up Voice Location as S3's Universal Voice Bank
; Common to music and SFX
smpsHeaderVoiceUVB macro
	if songStart<>offset(*)
		inform 3,"Missing smpsHeaderStartSong"
	endc
	if SonicDriverVer>=5
		z80_ptr	z80_UniVoiceBank
	elseif SonicDriverVer>=3
		little_endian	z80_UniVoiceBank
	else
		inform 3,"Universal Voice Bank does not exist in Sonic 1 or Sonic 2 drivers."
	endc
	endm

; Header macros for music (not for SFX)
; Header - Set up Channel Usage
smpsHeaderChan macro fm,psg
	dc.b \fm,\psg
	endm

; Header - Set up Tempo
smpsHeaderTempo macro div,mod
	dc.b	\div
	convertMainTempoMod \mod
	endm

; Header - Set up DAC Channel
smpsHeaderDAC macro location,pitch,vol
	CheckedChannelPointer \location
	if strlen("\pitch")>0
		dc.b	pitch
		if strlen("\vol")>0
			dc.b	vol
		else
			dc.b	$00
		endif
	else
		dc.w	$00
	endc
	endm

; Header - Set up FM Channel
smpsHeaderFM macro location,pitch,vol
	CheckedChannelPointer \location
	dc.b \pitch,\vol
	endm

; Header - Set up PSG Channel
smpsHeaderPSG macro location,pitch,vol,mod,voice
	CheckedChannelPointer \location
	PSGPitchConvert \pitch
	dc.b \vol
; Frequency envelope
	if (SonicDriverVer>=3)&(SourceDriver<3)
; In SMPS 68k Type 1, this byte is skipped and can contain garbage.
; Sonic 2's Oil Ocean Zone and Ending themes set this byte to a non-zero value which
; other drivers may try to process as valid data, so manually force it to 0 here.
		dc.b	0
	else
		if (SonicDriverVer<3)&(SourceDriver>=3)&(\mod<>0)
			inform 1,"This track header specifies a frequency envelope, but this driver does not support them."
		endc
		dc.b \mod
	endc
; Volume envelope
	dc.b \voice
	endm

; Header macros for SFX (not for music)
; Header - Set up Tempo
smpsHeaderTempoSFX macro div
	dc.b \div
	endm

; Header - Set up Channel Usage
smpsHeaderChanSFX macro chan
	dc.b \chan
	endm

; Header - Set up FM Channel
smpsHeaderSFXChannel macro chanid,location,pitch,vol
	if (SonicDriverVer>=3)&(chanid=cNoise)
		inform 3,"Using channel ID of cNoise ($E0) in Sonic 3 driver is dangerous. Fix the song so that it turns into a noise channel instead."
	elseif (SonicDriverVer<3)&(chanid=cFM6)
		inform 3,"Using channel ID of FM6 ($06) in Sonic 1 or Sonic 2 drivers is unsupported. Change it to another channel."
	endc
	dc.b	$80,chanid
	CheckedChannelPointer \location\
	if (chanid&$80)<>0
		PSGPitchConvert \pitch
	else
		dc.b \pitch
	endc
	dc.b	vol
	endm
	
; ---------------------------------------------------------------------------
; Co-ord Flag Macros and Equates
; E0xx - Panning, AMS, FMS
smpsPan macro direction,amsfms
	dc.b $E0,direction+amsfms
	endm

panNone equ $00
panRight equ $40
panLeft equ $80
panCentre equ $C0						; silly Brits :U
panCenter equ $C0

; E1xx - Set channel detune to val
smpsDetune macro val
	dc.b $E1,\val
	endm

; E2xx - Useless
smpsNop macro val
	if SonicDriverVer<3
		dc.b $E2,\val
	endc
	endm

; Return (used after smpsCall)
smpsReturn macro val
	if SonicDriverVer>=3
		dc.b $F9
	else
		dc.b $E3
	endc
	endm

; Fade in previous song (ie. 1-Up)
smpsFade macro val
	if SonicDriverVer>=3
		dc.b $E2
		ifarg val
			dc.b \val
		else
			dc.b $FF
		endc
		if SourceDriver<3
			smpsStop
		endc
	elseif (SourceDriver>=3)&(strlen("\val"))&(strcmp("\val","$FF"))
; This is one of those weird S3+ "fades" that we don't need
	else
		dc.b $E4
	endc
	endm

; E5xx - Set channel tempo divider to xx
smpsChanTempoDiv macro val
	if SonicDriverVer>=5
; New flag unique to Flamewing's modified S&K driver
		dc.b $FF,$08,\val
	elseif SonicDriverVer>=3
		inform 3,"Coord. Flag to set tempo divider of a single channel does not exist in S3 driver. Use Flamewing's modified S&K sound driver instead."
	else
		dc.b $E5,\val
	endc
	endm

; E6xx - Alter Volume by xx
smpsAlterVol macro val
	dc.b $E6,\val
	endm

; E7 - Prevent attack of next note
smpsNoAttack	equ $E7

; E8xx - Set note fill to xx
smpsNoteFill macro val
	if (SonicDriverVer>=5)&(SourceDriver<3)
; Unique to Flamewing's modified driver
		dc.b $FF,$0A,\val
	else
		if (SonicDriverVer>=3)&(SourceDriver<3)
			inform 1,"Note fill will not work as intended unless you divide the fill value by the tempo divider or complain to Flamewing to add an appropriate coordination flag for it."
		elseif (SonicDriverVer<3)&(SourceDriver>=3)
			inform 1,"Note fill will not work as intended unless you multiply the fill value by the tempo divider or complain to Flamewing to add an appropriate coordination flag for it."
		endc
		dc.b $E8,\val
	endc
	endm

; Add xx to channel pitch
smpsChangeTransposition macro val
	if SonicDriverVer>=3
		dc.b $FB,\val
	else
		dc.b $E9,\val
	endc
	endm

; Set music tempo modifier to xx
smpsSetTempoMod macro val
	if SonicDriverVer>=3
		dc.b $FF,$00
	else
		dc.b $EA
	endc
	convertMainTempoMod \val
	endm

; Set music tempo divider to xx
smpsSetTempoDiv macro val
	if SonicDriverVer>=3
		dc.b $FF,$04,val
	else
		dc.b $EB,\val
	endc
	endm

; ECxx - Set Volume to xx
smpsSetVol macro val
	if SonicDriverVer>=3
		dc.b $E4,\val
	else
		inform 3,"Coord. Flag to set volume (instead of volume attenuation) does not exist in S1 or S2 drivers. Complain to Flamewing to add it."
	endc
	endm

; Works on all drivers
smpsPSGAlterVol macro vol
	dc.b $EC,\vol
	endm

; Clears pushing sound flag in S1
smpsClearPush macro
	if SonicDriverVer=1
		dc.b $ED
	else
		inform 3,"Coord. Flag to clear S1 push block flag does not exist in S2 or S3 drivers. Complain to Flamewing to add it."
	endc
	endm

; Stops special SFX (S1 only) and restarts overridden music track
smpsStopSpecial macro
	if SonicDriverVer=1
		dc.b $EE
	else
		inform 2,"Coord. Flag to stop special SFX does not exist in S2 or S3 drivers. Complain to Flamewing to add it. With adequate caution, smpsStop can do this job."
		smpsStop
	endc
	endm

; EFxx[yy] - Set Voice of FM channel to xx; xx < 0 means yy present
smpsFMvoice macro voice,songID
	if (SonicDriverVer>=3)&(strlen("\songID")>0)
		dc.b $EF,\voice|$80,\songID+$81
	else
		dc.b $EF,\voice
	endc
	endm

; F0wwxxyyzz - Modulation - ww: wait time - xx: modulation speed - yy: change per step - zz: number of steps
smpsModSet macro wait,speed,change,step
	dc.b	$F0
	if (SonicDriverVer>=3)&(SourceDriver<3)
		dc.b \wait+1,\speed,\change,((\step+1)*\speed)&$FF
	elseif (SonicDriverVer<3)&(SourceDriver>=3)
		dc.b wait-1,\speed,\change
		conv_step:	= ((step=0)<<8)|step
		conv_speed:	= ((speed=0)<<8)|speed
		dc.b (\conv_step/\conv_speed)-1
	else
		dc.b \wait,\speed,\change,\step
	endc
;dc.b	speed,change,step
	endm

; Turn on Modulation
smpsModOn macro type
	if SonicDriverVer>=3
		if strlen("\type")>0
			dc.b $F4,\type
		else
			dc.b $F4,$80
		endc
	else
		dc.b $F1
	endc
	endm

; F2 - End of channel
smpsStop macro
	dc.b $F2
	endm

; F3xx - PSG waveform to xx
smpsPSGform macro form
	dc.b $F3,\form
	endm

; Turn off Modulation
smpsModOff macro
	if SonicDriverVer>=3
		dc.b $FA
	else
		dc.b $F4
	endc
	endm

; F5xx - PSG voice to xx
smpsPSGvoice macro voice
	dc.b $F5,\voice
	endm

; F6xxxx - Jump to xxxx
smpsJump macro loc
	dc.b $F6
	if SonicDriverVer<>1
		z80_ptr \loc
	else
		dc.w \loc-offset(*)-1
	endc
	endm

; F7xxyyzzzz - Loop back to zzzz yy times, xx being the loop index for loop recursion fixing
smpsLoop macro index,loops,loc
	dc.b	$F7
	dc.b	index,loops
	if SonicDriverVer<>1
		z80_ptr \loc
	else
		dc.w \loc-offset(*)-1
	endc
	endm

; F8xxxx - Call pattern at xxxx, saving return point
smpsCall macro loc
	dc.b	$F8
	if SonicDriverVer<>1
		z80_ptr \loc
	else
		dc.w \loc-offset(*)-1
	endc
	endm
	
; ---------------------------------------------------------------------------
; Alter Volume
smpsFMAlterVol macro val1,val2
	if (SonicDriverVer>=3)&(strlen("\val2")>0)
		dc.b $E5,\val1,\val2
	else
		dc.b $E6,\val1
	endc
	endm

; S3/S&K/S3D-only coordination flags
	if SonicDriverVer>=3
; Silences FM channel then stops as per smpsStop
smpsStopFM macro
	dc.b $E3
	endm

; Spindash Rev
smpsSpindashRev macro
	dc.b $E9
	endm

smpsPlayDACSample macro sample
	dc.b $EA,(\sample&$7F)
	endm

smpsConditionalJump macro index,loc
	dc.b $EB
	dc.b \index
	z80_ptr	\loc
	endm

; Set note values to xx-$40
smpsSetNote macro val
	dc.b $ED,\val
	endm

smpsFMICommand macro reg,val
	dc.b $EE,\reg,\val
	endm

; Set Modulation
smpsModChange2 macro fmmod,psgmod
	dc.b $F1,\fmmod,\psgmod
	endm

; Set Modulation
smpsModChange macro val
	dc.b $F4,\val
	endm

; FCxxxx - Jump to xxxx
smpsContinuousLoop macro loc
	dc.b $FC
	z80_ptr	\loc
	endm

smpsAlternateSMPS macro flag
	dc.b $FD,\flag
	endm

smpsFM3SpecialMode macro ind1,ind2,ind3,ind4
	dc.b $FE,\ind1,\ind2,\ind3,\ind4
	endm

smpsPlaySound macro index
	if SonicDriverVer>=5
		inform 1,"smpsPlaySound only plays SFX in Flamedriver ; use smpsPlayMusic to play music or fade effects."
	endc
	dc.b $FF,$01,\index
	endm

smpsHaltMusic macro flag
	dc.b $FF,$02,\flag
	endm

smpsCopyData macro data,len
	inform 3,"Coord. Flag to copy data should not be used. Complain to Flamewing if any music uses it."
;	dc.b	$FF,$03
;	little_endian \data
;	dc.b \len
	endm

smpsSSGEG macro op1,op2,op3,op4
	dc.b $FF,$05,\op1,\op3,\op2,\op4
	endm

smpsFMVolEnv macro tone,mask
	dc.b $FF,$06,\tone,\mask
	endm

smpsResetSpindashRev macro val
	dc.b $FF,$07
	endm

; Flags ported from other drivers.
	if SonicDriverVer>=5
smpsChanFMCommand macro reg,val
	dc.b $FF,$09,\reg,\val
	endm

smpsPitchSlide macro enable
	dc.b $FF,$0B,\enable
	endm

smpsSetLFO macro enable,amsfms
	dc.b $FF,$0C,\enable,\amsfms
	endm

smpsPlayMusic macro index
	dc.b $FF,$0D,\index
	endm
	endc

	endc
	
; ---------------------------------------------------------------------------
; S1/S2 only coordination flag
; Sets D1L to maximum volume (minimum attenuation) and RR to maximum for operators 3 and 4 of FM1
smpsMaxRelRate macro
	if SonicDriverVer>=3
; Emulate it in S3/S&K/S3D driver
		smpsFMICommand $88,$0F
		smpsFMICommand $8C,$0F
	else
		dc.b $F9
	endc
	endm
; ---------------------------------------------------------------------------
; Backwards compatibility
smpsAlterNote macro
	smpsDetune	\_
	endm

smpsAlterPitch macro
	smpsChangeTransposition	\_
	endm

smpsFMFlutter macro
	smpsFMVolEnv	\_
	endm

smpsWeirdD1LRR macro
	smpsMaxRelRate \_
	endm

smpsSetvoice macro
	smpsFMvoice \_
	endm
	
; ---------------------------------------------------------------------------
; Macros for FM instruments
; Voices - Feedback
smpsVcFeedback macro val
vcFeedback = val
	endm

; Voices - Algorithm
smpsVcAlgorithm macro val
vcAlgorithm = val
	endm

smpsVcUnusedBits macro val,d1r1,d1r2,d1r3,d1r4
vcUnusedBits = val
	if (strlen("\d1r1")>0)&(strlen("\d1r2")>0)&(strlen("\d1r3")>0)&(strlen("\d1r4")>0)
vcD1R1Unk = d1r1<<5
vcD1R2Unk = d1r2<<5
vcD1R3Unk = d1r3<<5
vcD1R4Unk = d1r4<<5
	else
vcD1R1Unk = 0
vcD1R2Unk = 0
vcD1R3Unk = 0
vcD1R4Unk = 0
	endc
	endm

; Voices - Detune
smpsVcDetune macro op1,op2,op3,op4
vcDT1 = op1
vcDT2 = op2
vcDT3 = op3
vcDT4 = op4
	endm

; Voices - Coarse-Frequency
smpsVcCoarseFreq macro op1,op2,op3,op4
vcCF1 = op1
vcCF2 = op2
vcCF3 = op3
vcCF4 = op4
	endm

; Voices - Rate Scale
smpsVcRateScale macro op1,op2,op3,op4
vcRS1 = op1
vcRS2 = op2
vcRS3 = op3
vcRS4 = op4
	endm

; Voices - Attack Rate
smpsVcAttackRate macro op1,op2,op3,op4
vcAR1 = op1
vcAR2 = op2
vcAR3 = op3
vcAR4 = op4
	endm

; Voices - Amplitude Modulation
; The original SMPS2ASM erroneously assumed the 6th and 7th bits
; were the Amplitude Modulation.
; According to several docs, however, it's actually the high bit.
smpsVcAmpMod macro op1,op2,op3,op4
	if SourceSMPS2ASM=0
vcAM1 = op1<<5
vcAM2 = op2<<5
vcAM3 = op3<<5
vcAM4 = op4<<5
	else
vcAM1 = op1<<7
vcAM2 = op2<<7
vcAM3 = op3<<7
vcAM4 = op4<<7
	endc
	endm

; Voices - First Decay Rate
smpsVcDecayRate1 macro op1,op2,op3,op4
vcD1R1 = op1
vcD1R2 = op2
vcD1R3 = op3
vcD1R4 = op4
	endm

; Voices - Second Decay Rate
smpsVcDecayRate2 macro op1,op2,op3,op4
vcD2R1 = op1
vcD2R2 = op2
vcD2R3 = op3
vcD2R4 = op4
	endm

; Voices - Decay Level
smpsVcDecayLevel macro op1,op2,op3,op4
vcDL1 = op1
vcDL2 = op2
vcDL3 = op3
vcDL4 = op4
	endm

; Voices - Release Rate
smpsVcReleaseRate macro op1,op2,op3,op4
vcRR1 = op1
vcRR2 = op2
vcRR3 = op3
vcRR4 = op4
	endm

; Voices - Total Level
; The original SMPS2ASM decides TL high bits automatically,
; but later versions leave it up to the user.
; Alternatively, if we're converting an SMPS 68k song to SMPS Z80,
; then we *want* the TL bits to match the algorithm, because SMPS 68k
; prefers the algorithm over the TL bits, ignoring the latter, while
; SMPS Z80 does the opposite.
; Unfortunately, there's nothing we can do if we're trying to convert
; an SMPS Z80 song to SMPS 68k. It will ignore the bits no matter
; what we do, so we just print a warning.
smpsVcTotalLevel macro op1,op2,op3,op4
vcTL1 = op1
vcTL2 = op2
vcTL3 = op3
vcTL4 = op4
	dc.b	(vcUnusedBits<<6)+(vcFeedback<<3)+vcAlgorithm
;   0     1     2     3     4     5     6     7
;%1000,%1000,%1000,%1000,%1010,%1110,%1110,%1111
	if SourceSMPS2ASM=0
vcTLMask4 = ((vcAlgorithm=7)<<7)
vcTLMask3 = ((vcAlgorithm>=4)<<7)
vcTLMask2 = ((vcAlgorithm>=5)<<7)
vcTLMask1 = $80
	else
vcTLMask4 = 0
vcTLMask3 = 0
vcTLMask2 = 0
vcTLMask1 = 0
	endc

	if (SonicDriverVer>=3)&(SourceDriver<3)
vcTLMask4 = ((vcAlgorithm=7)<<7)
vcTLMask3 = ((vcAlgorithm>=4)<<7)
vcTLMask2 = ((vcAlgorithm>=5)<<7)
vcTLMask1 = $80
vcTL1 = vcTL1&$7F
vcTL2 = vcTL2&$7F
vcTL3 = vcTL3&$7F
vcTL4 = vcTL4&$7F
	elseif (SonicDriverVer<3)&(SourceDriver>=3)&((((vcTL1|vcTLMask1)&$80)<>$80)|(((vcTL2|vcTLMask2)&$80)<>((vcAlgorithm>=5)<<7))|(((vcTL3|vcTLMask3)&$80)<>((vcAlgorithm>=4)<<7))|(((vcTL4|vcTLMask4)&$80)<>((vcAlgorithm=7)<<7)))
		inform 1,"Voice at $%h has TL bits that do not match its algorithm setting. This voice will not work in S1/S2 drivers.",offset(*)
	endc

	if SonicDriverVer=2
		dc.b	(vcDT4<<4)+vcCF4,       (vcDT2<<4)+vcCF2,       (vcDT3<<4)+vcCF3,       (vcDT1<<4)+vcCF1
		dc.b	(vcRS4<<6)+vcAR4,       (vcRS2<<6)+vcAR2,       (vcRS3<<6)+vcAR3,       (vcRS1<<6)+vcAR1
		dc.b	vcAM4|vcD1R4|vcD1R4Unk, vcAM2|vcD1R2|vcD1R2Unk, vcAM3|vcD1R3|vcD1R3Unk, vcAM1|vcD1R1|vcD1R1Unk
		dc.b	vcD2R4,                 vcD2R2,                 vcD2R3,                 vcD2R1
		dc.b	(vcDL4<<4)+vcRR4,       (vcDL2<<4)+vcRR2,       (vcDL3<<4)+vcRR3,       (vcDL1<<4)+vcRR1
		dc.b	vcTL4|vcTLMask4,        vcTL2|vcTLMask2,        vcTL3|vcTLMask3,        vcTL1|vcTLMask1
	else
		dc.b	(vcDT4<<4)+vcCF4,       (vcDT3<<4)+vcCF3,       (vcDT2<<4)+vcCF2,       (vcDT1<<4)+vcCF1
		dc.b	(vcRS4<<6)+vcAR4,       (vcRS3<<6)+vcAR3,       (vcRS2<<6)+vcAR2,       (vcRS1<<6)+vcAR1
		dc.b	vcAM4|vcD1R4|vcD1R4Unk, vcAM3|vcD1R3|vcD1R3Unk, vcAM2|vcD1R2|vcD1R2Unk, vcAM1|vcD1R1|vcD1R1Unk
		dc.b	vcD2R4,                 vcD2R3,                 vcD2R2,                 vcD2R1
		dc.b	(vcDL4<<4)+vcRR4,       (vcDL3<<4)+vcRR3,       (vcDL2<<4)+vcRR2,       (vcDL1<<4)+vcRR1
		dc.b	vcTL4|vcTLMask4,        vcTL3|vcTLMask3,        vcTL2|vcTLMask2,        vcTL1|vcTLMask1
	endc
	endm
