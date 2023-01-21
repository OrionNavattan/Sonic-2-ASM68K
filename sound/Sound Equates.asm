; ---------------------------------------------------------------------------
; Standard Z80 Mega Drive hardware addresses
; ---------------------------------------------------------------------------
ym_reg_a0: 				equ	4000h
ym_reg_d0:				equ	4001h
ym_reg_a1:				equ	4002h
ym_reg_d1: 				equ	4003h
z_bank_select:			equ	6000h
z_bank_select_mirror:	equ 6001h
z_psg_input: 			equ	7F11h
z_rom_window: 			equ	8000h

; ---------------------------------------------------------------------------
; YM2612/YM3438 registers:
; ---------------------------------------------------------------------------

; Global Registers
ym_dac_enable:			equ 2Bh

; ---------------------------------------------------------------------------
; Offsets of global sound driver variables (relative to 1B80h by default)
; This setup is used because these are accessed both via immediate addressing
; (e.g., z_abs_vars+f_current_tempo), and via indexed addressing relative to 
; the start of the global variables (e.g., ix+f_current_tempo, where ix = z_abs_vars). 
; Additionally, z_soundqueue and its slots are accessed by the 68K relative 
; to z_abs_vars.
; ---------------------------------------------------------------------------
				rsset 0
v_priority:				rs.b 1			; 0 ; sound priority (priority of new SFX must be higher or equal to this value or it won't play; bit 7 of priority being set prevents this value from changing)
f_tempo_counter:		rs.b 1				; 1 ; counts down to zero; when zero, resets to next value and delays song by 1 frame
f_current_tempo:		rs.b 1				; 2 ; current music tempo
f_pause_sound:			rs.b 1				; 3 ; set to 7Fh by the 68k to pause music, set to 80h to unpause
v_fadeout_counter:		rs.b 1				; 4 ; total volume levels to continue decreasing volume before fade out considered complete (starts at 28h, works downward)
v_fadeout_delay:		rs.b 1				; 5 ; delay ticker before next volume decrease
v_timing:				rs.b 1			; 6 ; unused; byte for synchronizing gameplay events with music (e.g., used in Ristar to sync with a boss' attacks)
f_updating_dac:			rs.b 1				; 7 ; set to FFh while DAC is updating, 0 otherwise
z_soundqueue:			rs.b 1				; 8 ; when NOT set to 80h, the 68K has requested new sound index to play
z_queue_0:				rs.b 1			; 9 ; queue slot 0
z_queue_1:				rs.b 1			; Ah ; queue slot 1
z_queue_2:				rs.b 1			; Bh ; queue slot 2 (unused). This slot was totally broken in Sonic 1's driver. It's mostly fixed here, but it's still a little broken (see 'zInitMusicPlayback').
v_music_voice_table:	rs.b 2					; Ch ; voice data pointer (2 bytes)
f_fadein:				rs.b 1			; Eh ; flag for fade in; Set to 80h while fading in (disabling SFX)
v_fadein_delay:			rs.b 1				; Fh ; similar to v_fadeout_delay, but for fading in
v_fadein_counter:		rs.b 1				; 10h ; similar to v_fadeout_counter, but for fading in 
f_has_backup:			rs.b 1				; 11h ; flag indicating 1-up fanfare is playing
v_tempo_main:			rs.b 1				; 12h ; music main tempo value
v_tempo_speed:			rs.b 1				; 13h ; original tempo for speed shoe restore (or 7Bh is played otherwise)
f_speedup:				rs.b 1			; 14h ; flag indicating whether speed shoes tempo is on (FFh) or off (0)
f_dac_enabled:			rs.b 1				; 15h ; set of 80h if DAC is enabled, 0 if FM6 is enabled
v_bank_number:			rs.b 1				; 16h ; current ROM bank (0 for MusicPoint1, $80 for MusicPoint2)
f_pal:					rs.b 1			; 17h ; flag if the system is a PAL console

sizeof_soundvars:		equ __rs					; 18h bytes

; ---------------------------------------------------------------------------
; Constants for track variables
; This group of variables is duplicated 26 times in the Z80 RAM: once for each 
; channel for music, a duplicate used to back up each channel when the extra life 
; music is played, and additional duplicates of FM3-5 and all PSG tracks 
; for SFX.
; ---------------------------------------------------------------------------
				rsset 0
ch_flags:		rs.b 1					; 0 ; all tracks
	; Channel flag bits; 0, 5, and 6 are unused here
	chf_rest_bit:	equ 1						; 02h; track is at rest
	chf_mask_bit:	equ 2						; 04h; SFX is overriding this track
	chf_vib_bit:	equ 3						; 08h; set if vibrato is enabled
	chf_tie_bit:	equ 4						; 10h; do not attack next note
	chf_enable_bit: equ 7						; 80h; track is playing	
	chf_rest:	equ 1<<chf_rest_bit	
	chf_mask:	equ 1<<chf_mask_bit
	chf_vib:	equ 1<<chf_vib_bit
	chf_tie:	equ 1<<chf_tie_bit
	chf_enable: equ 1<<chf_enable_bit
	
ch_type:		rs.b 1					; 1 ; all tracks
	; Voice control bits
	t_fmii_bit:		equ 2					; if set, FM assignment bits refer to FM channels 4-6, otherwise FM channels 1-3 (also used to select zWriteFMI or zWriteFMII)
	t_psg_bit:		equ 7					; if set, this is a PSG track
	t_fmii:			equ 1<<t_fmii_bit
	
	; Channel assignment constants:
	tFM1:			equ 0					; 0, FM1 channel type
	tFM2:			equ 1					; 1, FM2 channel type
	tFM3:			equ 2					; 2, FM3 channel type
	tFM4:			equ t_fmii|tFM1			; 4, FM4 channel type
	tFM5:			equ t_fmii|tFM2			; 5, FM5 channel type
	tFM6:			equ t_fmii|tFM3			; 6, FM6 channel type
	tDAC:			equ tFM6				; 6, DAC channel type
	tPSG1:			equ 80h					; PSG1 channel type
	tPSG2:			equ 0A0h					; PSG2 channel type
	tPSG3:			equ 0C0h					; PSG3 channel type
	tPSG4:			equ 0E0h					; PSG4 channel type
	t_fm_assignment:	equ 1<<tFM1|1<<tFM2 	; bits 0 and 1 indicate channels 1-3, or 4-6 if t_fmii_bit is set

	
ch_tick:			rs.b 1				; 2; all tracks; tempo divisor; 1 = Normal, 2 = Half, 3 = Third...
ch_dataptr_low:		rs.b 1				; 3; all tracks; track position low byte
ch_dataptr_high:	rs.b 1				; 4; all tracks; track position high byte
ch_transpose:		rs.b 1				; 5; FM/PSG; transpose (from coord flag E9)
ch_volume:			rs.b 1				; 6; FM/PSG; channel volume (only applied at voice changes)
ch_ams_fms_pan:		rs.b 1					; 7; FM/DAC; panning / AMS / FMS settings
	fms_1_bit:			equ 0
	fms_2_bit:			equ 1
	fms_3_bit:			equ 2
	ams_1_bit:			equ 4
	ams_2_bit:			equ 5
	pan_right_bit:		equ 6
	pan_left_bit:		equ 7
	fms_1:				equ 1<<fms_1_bit
	fms_2:				equ 1<<fms_2_bit
	fms_3:				equ 1<<fms_3_bit
	ams_1:				equ 1<<ams_1_bit
	ams_2:				equ 1<<ams_2_bit
	pan_right:			equ 1<<pan_right_bit	
	pan_left:			equ 1<<pan_left_bit
	fms_settings:		equ fms_1|fms_2|fms_3
	ams_fms_settings:	equ fms_1|fms_2|fms_3|ams_1|ams_2
	
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
ch_vib_delta:		rs.b 1					; 15h; FM/PSG; modulation change per mod. Step
ch_vib_steps:		rs.b 1					; 16h; FM/PSG; number of steps in modulation (divided by 2)
ch_vibval_low:		rs.b 1					; 17h; FM/PSG; current modulation value low byte
ch_vibval_high:		rs.b 1					; 18h; FM/PSG; current modulation value high byte
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
	
ch_stack:				equ __rs				; 2Ah; start of next track, the two bytes below this is the coord flag "gosub" (F8h) return stack
sizeof_trackvars:  		equ __rs				; 2Ah;	length of each set of track variables

; ---------------------------------------------------------------------------
; Sound Driver RAM Addresses
; ---------------------------------------------------------------------------
			rsset 1380h				; WARNING: if you change this, you MUST change the start location of the Music section in Compressed Music Header.asm to match
z_music_data: 	rs.b 800h					; 1380h ; Z80 decompression buffer (only 7C0h in size, remaining 40h is the Z80 stack)
z_music_data_end:	equ __rs-40h				; 1B40h ; boundary between decompression buffer and Z80 stack
z_stack_pointer: 		equ	__rs			; 1B80h ; Z80 initial stack pointer value


z_abs_vars:			rs.b sizeof_soundvars			; 1B80h ; all variables from v_priority to f_pal

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

z_tracks_save_start:	equ __rs				; When extra life plays, it backs up a large amount of memory (all track data plus 36 bytes)
z_savevar:				rs.b sizeof_soundvars		; 1E38h
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
; Additional global variables
; These variables are, for some reason, reserved and included at the end of 
; the driver binary. They are defined here and included via macro.
; ---------------------------------------------------------------------------

include_global_vars:	macro

v_pal_update_counter:	db 0					; 12FEh ; counts from 0 to 5 to periodically "double update" for PAL systems (basically every 6 frames you need to update twice to keep up)
v_current_dac:			db 0				; 12FFh ; indicates current dac sample
v_current_song:			db 0				; 1300h ; currently playing song index
f_dosfx:				db 0			; 1301h ; flag to indicate SFX are being updated (and thus using custom voice table); set to FFh while doing SFX, 0 otherwise.
f_stereo_alt:			db 0				; 1302h ; stereo alternation flag for ring SFX. 0 = next one plays on left, FFh = next one plays on right
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

;sizeof_trackvars_all:			equ	sizeof_trackvars*(countof_music_tracks+countof_sfx_tracks)
