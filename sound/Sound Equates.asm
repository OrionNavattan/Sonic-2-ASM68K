; ---------------------------------------------------------------------------
; Standard Mega Drive Z80 hardware addresses
; ---------------------------------------------------------------------------

ym_reg_a0: 				equ	4000h
ym_reg_d0:				equ	4001h
ym_reg_a1:				equ	4002h
ym_reg_d1: 				equ	4003h
z_bank_select:			equ	6000h			; select the bank accessed by the ROM window
z_bank_select_mirror:	equ 6001h
z_psg_input: 			equ	7F11h
z_rom_window: 			equ	8000h			; start of $8000 byte window to 68K address space

; ---------------------------------------------------------------------------
; SN76489 registers
; ---------------------------------------------------------------------------

tone_volume_bit:	equ 4					; specifies whether we are latching a volume or tone register
psg_channel_bit1:	equ 5					; two bits for PSG channel number
psg_channel_bit2:	equ 6
psg_latch_bit:		equ 7					; specifies whether this is a latch/data or a pure data byte
psg_set_vol:		equ 1<<tone_volume_bit
psg_silence:		equ psg_set_vol|0Fh			; maximum attenuation value	(silence)

; ---------------------------------------------------------------------------
; YM2612/YM3438 registers
; ---------------------------------------------------------------------------

; Status register bits:
; Timer overflow bits: set when timers overflow and the enable bits in ym_timerctrl_ch3_mod are set.
ym_timer_b_overflow:	equ 0
ym_timer_a_overflow:	equ 1
ym_busy:				equ 7			; set while the chip is busy

; Global Registers
ym_lfo_control:		equ 22h					; enable frequency oscillator and set its frequency
	; Bits 0-3 set frequency as follows:
	lfo_382:	equ 0					; 3.82 Hz
	lfo_533:	equ 1					; 5.33 Hz
	lfo_577:	equ 2					; 5.77 Hz
	lfo_611: 	equ 3					; 6.11 Hz
	lfo_660:	equ 4					; 6.60 Hz
	lfo_923:	equ 5					; 9.23 Hz
	lfo_4611:	equ 6					; 46.11 Hz
	lfo_6922:	equ 7					; 69.22 Hz
	lfo_enable_bit:		equ 3				; 1 = LFO enabled; 0 = disabled
	lfo_frequency:		equ 7

ym_timer_a_freq_hi:	equ 24h					; timer A frequency, counts from value input in these two registers to $400, then reloads and repeats
ym_timer_a_freq_lo:	equ 25h					; uses all bits of hi register and bits 0-1 of low register
ym_timer_b_freq:	equ 26h					; same as above, except counts to $100, and frequency is computed as ($100-input) × 300.34µs; uses all 8 bits

ym_timerctrl_ch3_mode:	equ 27h					; timer control and channel 3 mode setting
	; Timer load bits: 1 = timer running, 0 = timer frozen
	timer_a_load_bit:	equ 0
	timer_b_load_bit:	equ 1
	; Timer enable bits: 1 = set the corresponding flag in the status register when timer overflows, 0 = do nothing when timer overflows
	timer_a_enable_bit:	equ 2
	timer_b_enable_bit:	equ 3
	; Timer reset bits:  1 = clear the overflow flag in the status register when the status register is read, 0 = do nothing
	timer_a_reset_bit:	equ 4
	timer_b_reset_bit:	equ 5
	load_timers:	equ (1<<timer_a_load_bit)|(1<<timer_b_load_bit)
	enable_timers:	equ (1<<timer_a_enable_bit)|(1<<timer_b_enable_bit)
	; FM 3 mode
	fm3_normal:		equ 0				; normal mode; channel 3 behaves like other channels
	fm3_special:	equ 40h					; special mode: each operator of channel 3 can be assigned its own frequency
	fm3_csm:		equ 80h				; composite sinusoidal modeling mode: enable special mode and quickly key on and off all operators of channel 3 when timer A expires

ym_keyonoff:		equ 28h					; key on and off; bits 0-3 select channel, bits 4-7 determine which operators are switched on or off
	oper_1_bit:		equ 4
	oper_2_bit:		equ 5
	oper_3_bit:		equ 6
	oper_4_bit:		equ 7
	oper_1:			equ 1<<oper_1_bit
	oper_2:			equ 1<<oper_2_bit
	oper_3:			equ 1<<oper_3_bit
	oper_4:			equ 1<<oper_4_bit
	all_opers:		equ oper_1|oper_2|oper_3|oper_4	; 0F0h

ym_dac_output:		equ 2Ah					; PCM data written here is output as-in on FM channel 6
ym_dac_enable:		equ 2Bh					; bit 7 switches channel 6 between FM and DAC output
	dac_disable:		equ 0
	dac_enable:			equ 80h

ym_dac_test:	equ 2Ch						; undocumented; when bit 5 is set, FM output is disabled, ym_dac_enable is ignored, DAC volume is quadrupled, and DAC output is panned proportionally based on the pan settings of all FM channels except channel 5
	enable_dac_test:	equ 20h

; Constants for per-operator registers: add these to the register base constant
; to get the register for the desired operator, e.g. 'ym_total_level+ym_1_4_op4'
; will select the register for setting TL on operator 4 of channels 1 or 4.

countof_operators:	equ 4					; four operators per channel
next_operator:		equ 4
ym_1_4_op1:	equ 0
ym_1_4_op2:	equ 4
ym_1_4_op3:	equ 8
ym_1_4_op4:	equ 0Ch
ym_2_5_op1:	equ 1
ym_2_5_op2: equ 5
ym_2_5_op3: equ 9
ym_2_5_op4: equ 0Dh
ym_3_6_op1: equ 2
ym_3_6_op2: equ 6
ym_3_6_op3: equ 0Ah
ym_3_6_op4: equ 0Eh

; Per operator register bases:
ym_mult_detune:				equ 30h			; bits 0-3 set base frequency multiplier; bits 4-6 set frequency detune
ym_total_level:				equ 40h			; bits 0-6 set volume
	tl_silence:				equ 7Fh		; silence value
ym_attack_scaling:			equ 50h			; bits 0-4 set attack rate; bits 6-7 set rate scaling
ym_decay_am:				equ 60h			; bits 0-4 set decay rate, bit 7 enables AMS for this operator
ym_sustainrate:					equ 70h		; bits 0-4 set sustain rate
ym_releaserate_sustainlevel:	equ 80h				; bits 0-3 set release rate, bits 5-7 set sustain level
ym_ssg_eg:					equ 90h		; bits 0-2 set envelope shape; bit 3 enables use of modified shape if attack rate is set to 31

countof_peroperatorregs:    equ ym_ssg_eg-ym_mult_detune

; Per-channel register bases:
ym_frequency_low:	equ 0A0h				; set frequency of each channel, or per operator for channel 3 in special mode
ym_frequency_high:	equ 0A4h

	; All bits of lo register and bits 0-2 of hi register set base frequency, bits 3-5 of hi set octave
	ym_freq_1_4_lo:	equ ym_frequency_low			; 0A0h
	ym_freq_1_4_hi:	equ ym_frequency_high			; 0A4h
	ym_freq_2_5_lo:	equ ym_frequency_low+1			; 0A1h
	ym_freq_2_5_hi:	equ ym_frequency_high+1			; 0A5h
	ym_freq_3_6_lo:	equ ym_frequency_low+2			; 0A2h
	ym_freq_3_6_hi:	equ	ym_frequency_high+2		; 0A6h

	; Per operator frequency settings for channel 3 special mode
	ym_freq_s1_lo:	equ ym_frequency_low+9			; 0A9h
	ym_freq_s1_hi:	equ ym_frequency_high+9			; 0ADh
	ym_freq_s2_lo:	equ ym_frequency_low+0Ah		; 0AAh
	ym_freq_s2_hi:	equ ym_frequency_high+0Ah		; 0AEh
	ym_freq_s3_lo:	equ ym_frequency_low+8			; 0A8h
	ym_freq_s3_hi:	equ ym_frequency_high+8			; 0ACh
	ym_freq_s4_lo:	equ ym_frequency_low+2			; 0A2h
	ym_freq_s4_hi:	equ ym_frequency_high+2			; 0A6h

ym_algorithm_feedback:	equ 0B0h				; bits 0-2 set algorithm; bits 3-5 set feedback on operator 1
	ym_algo_feed_1_4:	equ ym_algorithm_feedback	; 0B0h
	ym_algo_feed_2_5:	equ ym_algorithm_feedback+1	; 0B1h
	ym_algo_feed_3_6:	equ ym_algorithm_feedback+2	; 0B2h

	ym_algo_bit0:	equ 0
	ym_algo_bit1:	equ 1
	ym_algo_bit2:	equ 2
	ym_algo:		equ (1<<ym_algo_bit0)|(1<<ym_algo_bit1)|(1<<ym_algo_bit2) ; 7

ym_ams_fms_pan:			equ 0B4h			; bits 0-2 set frequency sensitivity; bits 4-5 set amplitude sensitivity. bits 6-7 set left or right output
	ym_ams_fms_pan_1_4:	equ ym_ams_fms_pan		; 0B4h
	ym_ams_fms_pan_2_5:	equ ym_ams_fms_pan+1		; 0B5h
	ym_ams_fms_pan_3_6:	equ ym_ams_fms_pan+2		; 0B6h

	pan_right_bit:		equ 6
	pan_left_bit:		equ 7
	pan_right:			equ 1<<pan_right_bit
	pan_left:			equ 1<<pan_left_bit
	fms_settings:		equ 7
	ams_settings:		equ $30


; ---------------------------------------------------------------------------
; SMPS header offsets
; ---------------------------------------------------------------------------

smps_voiceptr_hi:	equ 0					; high byte of pointer to voice table
smps_voiceptr_lo:	equ 1					; low byte of pointer to voice table
smps_fmch_cnt:		equ 2					; count of FM/DAC channels
smps_psgch_cnt:		equ 3					; count of PSG channels
smps_tick:			equ 4				; track tempo divisor
smps_tempo:			equ 5				; track tempo
smps_trackinitdata:	equ 6					; track-specific init information in header

; ---------------------------------------------------------------------------
; Offsets of global driver variables (relative to 1B80h by default)
; This setup is used because these are accessed both via immediate addressing
; (e.g., z_abs_vars+v_current_tempo), and via indexed addressing relative to
; the start of the global variables (e.g., ix+v_current_tempo, where ix = z_abs_vars).
; Additionally, v_sound_id and its slots are accessed by the 68K relative
; to z_abs_vars.
; ---------------------------------------------------------------------------
				rsreset
v_priority:				rs.b 1			; 0 ; sound priority (priority of new SFX must be higher or equal to this value or it won't play; bit 7 of priority being set prevents this value from changing)
v_tempo_counter:		rs.b 1				; 1 ; counts down to zero; when zero, resets to next value and delays song by 1 frame
v_current_tempo:		rs.b 1				; 2 ; current music tempo
f_pause_sound:			rs.b 1				; 3 ; set to 7Fh by the 68k to pause music, set to 80h to unpause
v_fadeout_counter:		rs.b 1				; 4 ; total volume levels to continue decreasing volume before fade out considered complete (starts at 28h, works downward)
v_fadeout_delay:		rs.b 1				; 5 ; delay ticker before next volume decrease
v_timing:				rs.b 1			; 6 ; unused; byte for synchronizing gameplay events with music (e.g., used in Ristar to sync with a boss' attacks)
f_updating_dac:			rs.b 1				; 7 ; set to FFh while DAC is updating, 0 otherwise
v_sound_id:				rs.b 1			; 8 ; ID of sound to play next
z_queue_0:				rs.b 1			; 9 ; queue slot 0
z_queue_1:				rs.b 1			; Ah ; queue slot 1
z_queue_2:				rs.b 1			; Bh ; queue slot 2 (unused). This slot was totally broken in Sonic 1's driver. It's mostly fixed here, but it's still a little broken (see 'InitMusicPlayback').
sizeof_z_queue:			equ __rs-z_queue_0
v_music_voice_table:	rs.b 2					; Ch ; voice data pointer (2 bytes)
f_fadein:				rs.b 1			; Eh ; flag for fade in; Set to 80h while fading in (disabling SFX)
v_fadein_delay:			rs.b 1				; Fh ; similar to v_fadeout_delay, but for fading in
v_fadein_counter:		rs.b 1				; 10h ; similar to v_fadeout_counter, but for fading in
f_has_backup:			rs.b 1				; 11h ; flag indicating 1-up fanfare is playing
v_tempo_main:			rs.b 1				; 12h ; music - tempo modifier
v_tempo_speed:			rs.b 1				; 13h ; music - tempo modifier for speed shoes
f_speedup:				rs.b 1			; 14h ; flag indicating whether speed shoes tempo is on (FFh) or off (0)
f_dac_enabled:			rs.b 1				; 15h ; set of 80h if DAC is enabled, 0 if FM6 is enabled
v_bank_number:			rs.b 1				; 16h ; current ROM bank (0 for MusicPoint1, $80 for MusicPoint2)
f_adjust_pal:			rs.b 1				; 17h ; indicates the current music will have its timing adjusted for PAL

sizeof_soundvars:		equ __rs			; 18h bytes

; ---------------------------------------------------------------------------
; Track variables structure
; This group of variables is duplicated 26 times in the Z80 RAM: once for each
; channel for music, a duplicate used to back up each channel when the extra life
; music is played, and additional duplicates of FM3-5 and all PSG tracks
; for SFX.
; ---------------------------------------------------------------------------
				rsreset
ch_flags:		rs.b 1					; 0 ; all tracks
	; Channel flag bits; 0, 5, and 6 are unused here
	chf_rest_bit:	equ 1
	chf_mask_bit:	equ 2
	chf_vib_bit:	equ 3
	chf_tie_bit:	equ 4
	chf_enable_bit: equ 7
	chf_rest:	equ 1<<chf_rest_bit			; 02h; track is at rest
	chf_mask:	equ 1<<chf_mask_bit			; 04h; SFX is overriding this track
	chf_vib:	equ 1<<chf_vib_bit			; 08h; set if vibrato is enabled
	chf_tie:	equ 1<<chf_tie_bit			; 10h; do not attack next note
	chf_enable: equ 1<<chf_enable_bit			; 80h; track is playing

ch_type:		rs.b 1					; 1; all tracks
	; FM assignment bits
	t_fm_bit1:		equ 0				; two bits for the FM channel number
	t_fm_bit2:		equ 1
	t_fmii_bit:		equ 2				; if set, FM assignment bits refer to FM channels 4-6, otherwise FM channels 1-3 (also used to select WriteFMI or WriteFMII)

	; PSG assignment bits
	t_psg_bit1:		equ psg_channel_bit1		; 5; two bits for PSG channel number
	t_psg_bit2:		equ psg_channel_bit2		; 6
	t_psgtrk_bit:	equ psg_latch_bit			; 7; if set, this is a PSG track

	t_psgtrk:		equ 1<<t_psgtrk_bit
	t_fmii:			equ 1<<t_fmii_bit

	; Channel assignment constants:
	tFM1:			equ 0				; 0, FM1 channel type
	tFM2:			equ 1				; 1, FM2 channel type
	tFM3:			equ 2				; 2, FM3 channel type
	tFM4:			equ t_fmii|tFM1			; 4, FM4 channel type
	tFM5:			equ t_fmii|tFM2			; 5, FM5 channel type
	tFM6:			equ t_fmii|tFM3			; 6, FM6 channel type
	tDAC:			equ tFM6			; 6, DAC channel type
	tPSG1:			equ t_psgtrk|(0<<t_psg_bit1)	; 80h; PSG1 channel type
	tPSG2:			equ t_psgtrk|(1<<t_psg_bit1)	; 0A0h; PSG2 channel type
	tPSG3:			equ t_psgtrk|(2<<t_psg_bit1)	; 0C0h; PSG3 channel type
	tPSG4:			equ t_psgtrk|(3<<t_psg_bit1)	; 0E0h; PSG4 channel type
	t_fm_assignment:	equ 1<<t_fm_bit1|1<<t_fm_bit2

ch_tick:			rs.b 1				; 2; all tracks; tempo divisor; 1 = Normal, 2 = Half, 3 = Third...
ch_dataptr_low:		rs.b 1					; 3; all tracks; track position low byte
ch_dataptr_high:	rs.b 1					; 4; all tracks; track position high byte
ch_transpose:		rs.b 1					; 5; FM/PSG; transpose (from coord flag E9)
ch_volume:			rs.b 1				; 6; FM/PSG; channel volume (only applied at voice changes)
ch_ams_fms_pan:		rs.b 1					; 7; FM/DAC; panning / AMS / FMS settings; bits correspond directly to settings for AMS/FMS/pan register


ch_voice:			rs.b 1				; 8; FM only; current voice in use
ch_vol_env_id:		equ ch_voice				; 8; PSG only; current PSG tone
ch_flutter:			rs.b 1				; 9; PSG only; flutter (dynamically affects PSG volume for decay effects)
ch_stackptr:		rs.b 1					; Ah; all tracks; "gosub" stack position offset (starts at 2Ah, i.e. end of track, and each jump decrements by 2)
ch_delay:			rs.b 1				; Bh; all tracks;  current duration timeout; counting down to zero
ch_saved_delay:		rs.b 1					; Ch; all tracks; last set duration (if a note follows a note, this is reapplied to 0Bh)

; Dh-Eh change a little depending on track -- essentially they hold data relevant to the next note to play
ch_sample:			rs.b 1				; Dh; DAC only; next sample to play
ch_freq_low:		equ	ch_sample			; Dh; FM/PSG: frequency low byte
ch_freq_high:		rs.b 1					; Eh; FM/PSG: frequency high byte
ch_gate:			rs.b 1				; Fh; FM/PSG; currently set note fill; counts down to zero and then cuts off note
ch_savedgate:		rs.b 1					; 10h; FM/PSG; reset value for current note fill
ch_vibptr_low:		rs.b 1					; 11h; FM/PSG; low byte of address of current modulation setting
ch_vibptr_high:		rs.b 1					; 12h; FM/PSG; high byte of address of current modulation setting
ch_vib_delay:		rs.b 1					; 13h; FM/PSG; wait for ww period of time before modulation starts
ch_vib_speed:		rs.b 1					; 14h; FM/PSG; modulation speed
ch_vib_delta:		rs.b 1					; 15h; FM/PSG; modulation change per mod
ch_vib_steps:		rs.b 1					; 16h; FM/PSG; number of steps in modulation (divided by 2)
ch_vibfreq_low:		rs.b 1					; 17h; FM/PSG; current modulation value low byte
ch_vibfreq_high:	rs.b 1					; 18h; FM/PSG; current modulation value high byte
ch_detune:			rs.b 1				; 19h; FM/PSG; set by detune coord flag E1; used to add directly to FM/PSG frequency
ch_vol_tl_mask:		rs.b 1					; 1Ah; FM only; zVolTLMaskTbl value set during voice setting (value based on algorithm indexing zGain table)
ch_noisemode:		rs.b 1					; 1Bh; PSG only; noise channel modesetting
ch_voice_ptr_low:	rs.b 1					; 1Ch; FM SFX only; low byte of SFX voice table
ch_voice_ptr_high:	rs.b 1					; 1Dh; FM SFX only; high byte of SFX voice table
ch_tl_ptr_low:		rs.b 1					; 1Eh; FM only; low byte of where TL bytes of current voice begin (set during voice setting)
ch_tl_ptr_high:		rs.b 1					; 1Fh; FM only; high byte of where TL bytes of current voice begin (set during voice setting)
ch_loopcounters:	rs.b 0Ah				; 20h; loop counter index 0

; The bytes between +20h and +29h are "open"; starting at +20h and going up are possible loop counters
; (for coord flag F7) while +2Ah going down (never AT 2Ah though) are stacked return addresses going
; down after calling coord flag F8h.  Of course, this does mean collisions are possible with either
; or other track memory if you're not careful with these!  No range checking is performed!

ch_stack:				equ __rs		; 2Ah; start of next track, the two bytes below this is the coord flag "gosub" (F8h) return stack
sizeof_trackvars:  		equ __rs			; 2Ah;	length of each set of track variables

; ---------------------------------------------------------------------------
; Sound Driver RAM Addresses
; ---------------------------------------------------------------------------
			rsset 1380h
z_music_data: 	rs.b 7C0h					; 1380h ; Z80 decompression buffer (only 7C0h in size, remaining 40h is the Z80 stack)
	ramblocksize	z_music_data
z_stack:		rs.b 40h

z_stack_pointer: 	equ	__rs				; 1B80h ; Z80 initial stack pointer value


z_abs_vars:			rs.b sizeof_soundvars		; 1B80h ; all variables from v_priority to f_adjust_pal

z_tracks_start:		equ __rs
z_song_dac_fm_start:	equ __rs
z_song_dac:			rs.b sizeof_trackvars		; 1B98h
z_song_fm_start:	equ __rs
z_song_fm1:			rs.b sizeof_trackvars		; 1BC2h
z_song_fm2:			rs.b sizeof_trackvars		; 1BECh
z_song_fm3:			rs.b sizeof_trackvars		; 1C16h
z_song_fm4:			rs.b sizeof_trackvars		; 1C40h
z_song_fm5:			rs.b sizeof_trackvars		; 1C6Ah
z_song_fm6:			rs.b sizeof_trackvars		; 1C94h
z_song_fm_end:		equ __rs
z_song_dac_fm_end:	equ __rs

z_song_psg_start:	equ __rs
z_song_psg1:		rs.b sizeof_trackvars			; 1CBEh
z_song_psg2:		rs.b sizeof_trackvars			; 1CE8h
z_song_psg3:		rs.b sizeof_trackvars			; 1D12h
z_song_psg_end:		equ __rs
z_tracks_end:		equ __rs

z_tracks_sfx_start:	equ __rs
z_sfx_fm_start:		equ __rs
z_sfx_fm3:			rs.b sizeof_trackvars		; 1D3Ch
z_sfx_fm4:			rs.b sizeof_trackvars		; 1D66h
z_sfx_fm5:			rs.b sizeof_trackvars		; 1D90h
z_sfx_fm_end:		equ __rs

z_sfx_psg_start:	equ __rs
z_sfx_psg1:			rs.b sizeof_trackvars		; 1DBAh
z_sfx_psg2:			rs.b sizeof_trackvars		; 1DE4h
z_sfx_psg3:			rs.b sizeof_trackvars		; 1E0Eh
z_sfx_psg_end:		equ __rs
z_tracks_sfx_end:	equ __rs

v_backup_ram:	equ __rs					; When extra life plays, it backs up a large amount of memory (all track data plus 36 bytes)
z_savevar:				rs.b sizeof_soundvars	; 1E38h
z_savesong_DAC:			rs.b sizeof_trackvars		; 1E50h
z_savesong_fm1:			rs.b sizeof_trackvars		; 1E7Ah
z_savesong_fm2:			rs.b sizeof_trackvars		; 1EA4h
z_savesong_fm3:			rs.b sizeof_trackvars		; 1ECEh
z_savesong_fm4:			rs.b sizeof_trackvars		; 1EF8h
z_savesong_fm5:			rs.b sizeof_trackvars		; 1F22h
z_savesong_fm6:			rs.b sizeof_trackvars		; 1F4Ch
z_savesong_psg1:		rs.b sizeof_trackvars		; 1F76h
z_savesong_psg2:		rs.b sizeof_trackvars		; 1FA0h
z_savesong_psg3:		rs.b sizeof_trackvars		; 1FCAh
z_tracks_save_end:		equ __rs

; ---------------------------------------------------------------------------
; More global variables
; These variables are, for some reason, baked into the driver binary at its
; very end. This macro is used to allow them to be defined here along
; with the other equates.
; ---------------------------------------------------------------------------

include_global_vars:	macro

v_pal_update_counter:	db 0					; 12FEh ; counts from 0 to 5 to periodically "double update" for PAL systems (basically every 6 frames you need to update twice to keep up)
v_current_dac:			db 0				; 12FFh ; indicates current dac sample
v_current_song:			db 0				; 1300h ; currently playing song index
f_sfx:					db 0			; 1301h ; flag to indicate SFX are being updated (and thus using custom voice table); set to FFh while doing SFX, 0 otherwise.
f_stereo_alt:			db 0				; 1302h ; stereo alternation flag for ring SFX; 0 = next one plays on left, FFh = next one plays on right
f_gloop:				db 0			; 1303h ; flag indicating if gloop sound should play this frame; 0 = yes, FFh = no.
v_spindash_counter:		db 0				; 1304h
v_spindash_freq_index:	db 0					; 1305h
f_spindash:				db 0			; 1306h ; FFh if spindash charge was the last sound that played
f_paused:				db 0			; 1307h ; pause flag used by the driver program; 0 = normal, FFh = pause all sound and music
		endm

; ---------------------------------------------------------------------------
; Size/count constants
; ---------------------------------------------------------------------------

Z80_space:						equ $F64 ; size of compressed sound driver. S2 SounddDriver Compress may ask you to increase this value if you've added code to the driver
countof_music_tracks:			equ	(z_tracks_end-z_tracks_start)/sizeof_trackvars
countof_music_dac_fm_tracks:	equ (z_song_dac_fm_end-z_song_dac_fm_start)/sizeof_trackvars
countof_music_fm_tracks:		equ	(z_song_fm_end-z_song_fm_start)/sizeof_trackvars
countof_music_psg_tracks:		equ	(z_song_psg_end-z_song_psg_start)/sizeof_trackvars
countof_sfx_tracks:				equ	(z_tracks_sfx_end-z_tracks_sfx_start)/sizeof_trackvars
countof_sfx_fm_tracks:			equ	(z_sfx_fm_end-z_sfx_fm_start)/sizeof_trackvars
countof_sfx_psg_tracks:			equ	(z_sfx_psg_end-z_sfx_psg_start)/sizeof_trackvars
