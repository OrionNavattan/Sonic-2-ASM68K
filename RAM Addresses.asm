; ---------------------------------------------------------------------------
; RAM Addresses - Variables (v) and Flags (f)
; ---------------------------------------------------------------------------

		pusho		; save options
		opt	ae+	; enable auto evens

; Major data blocks:
RAM_Start:
v_128x128_tiles:		equ   $FF0000 ; 128x128 tile mappings ($8000 bytes)
				rsset $FFFF0000+sizeof_128x128_all 
v_level_layout:         rs.b sizeof_level ; $FFFF8000 ; level and background layouts ($1000 bytes)
v_16x16_tiles:          rs.b sizeof_16x16_all ; $FFFF9000 ; 16x16 tile mappings ($C00 bytes)
v_bgscroll_buffer:      rs.b $200 ; $FFFFA800 ; used by some layer deformation routines
v_nem_gfx_buffer:       rs.b $200 ; $FFFFAA00 ; ; Nemesis graphics decompression buffer
v_sprite_queue:         rs.b rs.b sizeof_priority*8 ; $FFFFAC00 ; sprite display queue, first section is highest priority ($400 bytes; 8 sections of $80 bytes)

                rsblock ost ; $B000-$D400 
v_ost_all:          rs.b sizeof_ost*countof_ost    ; $FFFFB000 ; object variable space ($40 bytes per object; $90 objects) ($2400 bytes) 
    v_ost_reserved:                          ; Reserved Object RAM
    v_ost_maincharacter:    equ v_ost_all ; first object (usually Sonic except in a Tails Alone game)
    v_ost_sidekick:         equ v_ost_all+sizeof_ost ; $FFFFB040 ; second object (Tails in a Sonic and Tails game or in 2P)
    v_ost_titlecard:
    v_ost_titlecard_zonename:		; level title card: zone name
    v_ost_gameover_gametext:		; "GAME" from GAME OVER
    v_ost_timeover_timetext:		; "TIME" from TIME OVER 
                equ v_ost_all+(sizeof_ost*2) ; $FFFFB080
    v_ost_titlecard_zone:			; level title card: "ZONE"
    v_ost_gameover_overtext:		; "OVER" from GAME OVER
    v_ost_timeover_overtext:		; "OVER" from TIME OVER
			    equ v_ost_all+(sizeof_ost*3) ; $FFFFB0C0
    v_ost_titlecard_actnumber:		; level title card: act number
				equ v_ost_all+(sizeof_ost*4) ; $FFFFB100
    v_ost_titlecard_background:		; level title card: background
				equ v_ost_all+(sizeof_ost*5) ; $FFFFB140
    v_ost_titleCard_bottom:		; level title card: yellow part at the bottom
				equ v_ost_all+(sizeof_ost*6) ; $FFFFB180
    v_ost_titlecard_left:			; level title card: red part on the left
				equ v_ost_all+(sizeof_ost*7) ; $FFFFB1C0

				; Reserved object RAM, free slots
				equ v_ost_all+(sizeof_ost*$C) ; $FFFFB200


    v_ost_cpzpylon:			; Pylon in the foreground in CPZ
				equ v_ost_all+(sizeof_ost*$D) ; $FFFFB340
    v_ost_watersurface1:			; First water surface
    v_ost_oil:				; Oil at the bottom of OOZ
				equ v_ost_all+(sizeof_ost*$E) ; $FFFFB380
    v_ost_watersurface2:			; Second water surface
				equ v_ost_all+(sizeof_ost*$F) ; $FFFFB3C0
    v_ost_reserved_end:
    v_ost_dynamic:         equ v_ost_all+(sizeof_ost*countof_ost_dynamic)  ;  $FFFFFB400
    v_ost_dynamic_end:     equ v_ost_all+(sizeof_ost*countof_ost)
    v_ost_dynamic_2P_end:  equ v_ost_dynamic_end-($C*6)*sizeof_ost ; 2P mode reserves 6 'blocks' of 12 RAM slots at the end.
    v_ost_end:             equ v_ost_dynamic_end
                rsblockend ost


                rsblock ost_level_only
                ;rsblock ss_shared_ram

v_ost_level_only:          equ sizeof_ost*countof_ost_level_only ; $FFFFD000           

    v_ost_lo_tails_tails:      equ v_ost_level_only ; $FFFFD040
    v_ost_lo_supersonicstars:  equ v_ost_level_only+sizeof_ost
    v_ost_lo_sonic_breathingbubbles:	equ v_ost_level_only+(sizeof_ost*2)	; $FFFFD080 ;  Sonic's breathing bubbles 
    v_ost_lo_tails_breathingbubbles:    equ v_ost_level_only+(sizeof_ost*3) ; $FFFFD0C0 ; Tails' breathing bubbles
    v_ost_lo_sonic_dust:    equ v_ost_level_only+(sizeof_ost*4) ; $FFFFD100 ; Sonic's spin dash dust
    v_ost_lo_tails_dust:    equ v_ost_level_only+(sizeof_ost*5) ; $FFFFD140  Tails' spin dash dust
    v_ost_lo_sonic_shield:  equ v_ost_level_only+(sizeof_ost*6) ; $FFFFD180
    v_ost_lo_tails_shield:  equ v_ost_level_only+(sizeof_ost*7) ; $FFFFD1C0
    v_ost_lo_sonic_invincibilitystars: equ v_ost_level_only+(sizeof_ost*$B) ; $FFFFD200
    v_ost_lo_tails_invincibilitystars: equ v_ost_level_only+(sizeof_ost*F) ; $FFFFD300
    v_ost_level_only_end:   equ v_ost_level_only=(sizeof_ost*countof_ost_level_only) ; $FFFFD400
                rsblockend ost_level_only

v_primary_collision:    rs.b    $300 ; $FFFFD600
v_secondary_collision:  rs.b    $300 ; $FFFFD900


				;rsblockend ss_shared_ram
v_ss_shared_ram_end:
v_vdp_dma_buffer:       rs.w    7*$12 ; $FFFFDC00 ; stores 18 ($12) VDP commands to issue the next time ProcessDMAQueue is called
v_vdp_dma_buffer_slot:  rs.l    1 ; stores the address of the next open slot for a queued VDP command

v_sprite_queue_2:       rs.b	$280 ; $FFFFDD00 ; sprite attribute table buffer for the bottom split screen in 2-player mode
                        rs.b    $80 ; unused, but SAT buffer 2 can spill over into this area when there are too many sprites on-screen
v_hscroll_buffer:  		rs.b    sizeof_vram_hscroll ; $FFFFE000 ; horizontal scrolling table data ($380 bytes)
                        rs.l	16 	; A bug/optimisation in 'Swscrl_CPZ' causes 'Horiz_Scroll_Buf' to overflow into this.
unused_E3C0:			rs.b	$40	; unused

v_sonic_stat_tracker:   rs.l    $100 ; $FFFFE400

v_sonic_pos_tracker:    rs.l    $100 ; $FFFFE500
;v_sonic_pos_tracker_end:

v_tails_pos_tracker:    rs.l    $100 ; $FFFFE600
;v_tails_pos_tracker_end:

v_cnz_saucer_data:      rs.b    $40 ; $FFFFE700 the number of CNZ saucer bumpers in a group which have been destroyed; used to determine when to give 500 points instead of 10
;v_cnz_saucer_data_end:
    
unused_E740:            rs.b    $C0 ; $FFFFE740-$FFFFE7FF ; unused

v_ring_positions:       rs.b    $600
;v_ring_positions_end:            


						rsblock camera_ram
; Camera positions
v_camera_positions:
v_camera_x_pos:			rs.l	1 ; $FFFFEE00 ; foreground camera x position
v_camera_y_pos:			rs.l	1 ; $FFFFEE04 ; foreground camera y position
v_bg1_x_pos:			rs.l	1 ; $FFFFEE08 ; background x position, only used sometimes as the layer deformation makes it sort of redundant
v_bg1_y_pos:			rs.l	1 ; $FFFFEE0C ; background y position
v_bg2_x_pos:			rs.l	1 ; $FFFFEE10 ; background 2 x position; only used sometimes as the layer deformation makes it sort of redundant
v_bg2_y_pos:			rs.l	1 ; $FFFFEE14 ; background 2 y position
v_bg3_x_pos:			rs.l	1 ; $FFFFEE18 ; background 3 x position; used in Sonic 1, but unused here (only initialised at beginning of level)?
v_bg3_y_pos:			rs.l	1 ; $FFFFEE1C ; background 3 y position; unused (only initialised at beginning of level)?


; Camera positions for the lower half of the screen in 2P mode:
v_camera_x_pos_p2:		rs.l	1 ; $FFFFEE20
v_camera_y_pos_p2:		rs.l	1 ; $FFFFEE24
v_bg1_x_pos_p2:			rs.l	1 ; $FFFFEE28 ; only used sometimes as the layer deformation makes it sort of redundant
v_bg1_y_pos_p2:			rs.l	1 ; $FFFFEE2C
v_bg2_x_pos_p2:			rs.l	1 ; $FFFFEE30 ; unused (only initialised at beginning of level)?
v_bg2_y_pos_p2:			rs.l	1 ; $FFFFEE34 
v_bg3_x_pos_p2:			rs.l	1 ; $FFFFEE38 ; unused (only initialised at beginning of level)?
v_bg3_y_pos_p2:			rs.l	1 ; $FFFFEE3C

; Foreground and background redraw flags
v_fg_x_redraw_flag:		rs.b	1	; $FFFFEE40 ; $10 when foreground camera x has moved 16 pixels and needs redrawing
v_fg_y_redraw_flag:		rs.b	1	; $FFFFEE41 ; $10 when foreground camera y has moved 16 pixels and needs redrawing
v_bg1_x_redraw_flag:	rs.b	1	; $FFFFEE42 ; $10 when background camera x has moved 16 pixels and needs redrawing
v_bg1_y_redraw_flag:	rs.b	1	; $FFFFEE43 ; $10 when background camera y has moved 16 pixels and needs redrawing
v_bg2_x_redraw_flag:	rs.b	1	; $FFFFEE44 ; used only in CPZ
unused_EE45:			rs.b	1	; $FFFFEE45 ; unused
v_bg3_x_redraw_flag: 	rs.b	1	; $FFFFEE46
unused_EE47:			rs.b	1	; $FFFFEE47 ; unused

; Redraw flags for lower half of screen in 2P mode
v_fg_x_redraw_flag_p2:	rs.b	1   ; $FFFFEE48
v_fg_y_redraw_flag_p2:	rs.b	1	; $FFFFEE49
unused_EE4A:			rs.b	6   ; $FFFFEE4A-$FFFFEE4F ; seems unused

; Scroll redraw flags
v_fg_redraw_direction: 		rs.w	1	; $FFFFEE50 ; bitfield ; bit 0 = redraw top row, bit 1 = redraw bottom row, bit 2 = redraw left-most column, bit 3 = redraw right-most column
v_bg1_redraw_direction:		rs.w	1	; $FFFFEE52 ; bitfield ; bits 0-3 as above, bit 4 = redraw top row (except leftmost block), bit 5 = redraw bottom row (except leftmost block), bits 6-7 = as bits 0-1
v_bg2_redraw_direction:		rs.w	1	; $FFFFEE54 ; bitfield ; essentially unused; bit 0 = redraw left-most column, bit 1 = redraw right-most column
v_bg3_redraw_direction:		rs.w	1	; $FFFFEE56 ; bitfield ; for CPZ; bits 0-3 as Scroll_flags_BG but using Y-dependent BG camera; bits 4-5 = bits 2-3; bits 6-7 = bits 2-3

; Scroll redraw flags for lower half of screen in 2P mode
v_fg_redraw_direction_p2:		rs.w	1	; $FFFFEE58 ; bitfield ; bit 0 = redraw top row, bit 1 = redraw bottom row, bit 2 = redraw left-most column, bit 3 = redraw right-most column
v_bg1_redraw_direction_p2:		rs.w	1	; $FFFFEE5A ; bitfield ; bits 0-3 as above, bit 4 = redraw top row (except leftmost block), bit 5 = redraw bottom row (except leftmost block), bits 6-7 = as bits 0-1
v_bg2_redraw_direction_p2:		rs.w	1	; $FFFFEE5C ; bitfield ; essentially unused; bit 0 = redraw left-most column, bit 1 = redraw right-most column
v_bg3_redraw_direction_p2:		rs.w	1	; $FFFFEE5E ; bitfield ; for CPZ; bits 0-3 as Scroll_flags_BG but using Y-dependent BG camera; bits 4-5 = bits 2-3; bits 6-7 = bits 2-3

; Copies of the camera position RAM and scroll redraw flags that are copied during VBlank and used copied during VBlank and used by DrawTilesWhenMoving:
v_vblank_camera_pos:				rs.l	2	; $FFFFEE60
v_vblank_camera_pos_bg:			rs.l	2	; $FFFFEE68
v_vblank_camera_pos_bg2:			rs.l	2	; $FFFFEE70
v_vblank_camera_pos_bg3:			rs.l	2	; $FFFFEE78

v_vblank_camera_pos_p2:			rs.l	8	; $FFFFEE80

v_vblank_fg_redraw_direction: 		rs.w	1	; $FFFFEEA0 
v_vblank_bg1_redraw_direction:		rs.w	1	; $FFFFEEA2
v_vblank_bg2_redraw_direction:		rs.w	1	; $FFFFEEA4
v_vblank_bg3_redraw_direction:		rs.w	1	; $FFFFEEA6

v_vblank_fg_redraw_direction_p2:		rs.w	1	; $FFFFEEA8
v_vblank_bg1_redraw_direction_p2:		rs.w	1	; $FFFFEEAA
v_vblank_bg2_redraw_direction_p2:		rs.w	1	; $FFFFEEAC
v_vblank_bg3_redraw_direction_p2:		rs.w	1	; $FFFFEEAE

; Camera differences
v_camera_x_pos_diff:		rs.w	1 ; $FFFFEEB0 ; (new X pos - old X pos) * 256
v_camera_y_pos_diff:		rs.w	1 ; $FFFFEEB2 ; (new X pos - old X pos) * 256 

v_bg1_x_pos_diff: 			rs.w	1 ; $FFFFEEB4 ; Effective camera change used in WFZ ending and HTZ screen shake
v_bg1_y_pos_diff:			rs.w	1 ; $FFFFEEB6 ; Effective camera change used in WFZ ending and HTZ screen shake

v_camera_x_pos_diff_p2:		rs.w	1 ; $FFFFEEB8 ; (new X pos - old X pos) * 256
v_camera_y_pos_diff_p2:		rs.w	1 ; $FFFFEEBA ; (new X pos - old X pos) * 256

f_screen_shaking_flag_htz:		rs.b	1 ; $FFFFEEBC ; flag to activate screen shaking code in HTZ's layer deformation routine
f_screen_shaking_flag: 			rs.b	1 ; $FFFFEEBD ; flag to activate screen shaking code (if existent) in layer deformation routine
f_disable_horiz_scroll:			rs.b	1 ; $FFFFEEBE ; flag to disable horizontal scrolling for entire screen in 1P or top half in 2P
f_disable_horiz_scroll_p2:		rs.b	1 ; $FFFFEEBF ; flag to disable horizontal scrolling for bottom half of screen in 2P 

unused_EEC0:		rs.l	1 ; $FFFFEEC0 ; unused other than a single write in LevelSizeLoad
unused_EEC4:		rs.w	1 ; $FFFFEEC4 ; same as above. The write being a long also overwrites the address below

v_boundary_bottom_next: 	rs.w	1 ; $FFFFEEC6 ; bottom level boundary, next

;v_camera_boundaries:
v_boundary_left_next:		rs.w	1 ; $FFFFEEC8 ; left level boundary, next (actual boundary shifts to match this)
v_boundary_right_next:		rs.w	1 ; $FFFFEECA ; right level boundary, next
v_boundary_top_next:		rs.w	1 ; $FFFFEECC ; top level boundary, next
v_boundary_bottom:			rs.w	1 ; $FFFFEECE ; bottom level boundary was "Camera_max_scroll_spd"...
;v_camera_boundaries_end:

;v_camera_eelay:
v_horiz_scroll_delay_val:		rs.w	1	; $FFFFEED0 ; if its value is a, where a != 0, X scrolling will be based on the player's X position a-1 frames ago
v_sonic_pos_tracker_num:		rs.w	1	; $FFFFEED2 ; current location within Sonic's position tracking data
;v_camera_delay_end:

;Camera_Delay_P2:
v_horiz_scroll_delay_val_P2:	rs.w	1	; $FFFFEED4 ; same as above, but for Tails in 2P
v_tails_pos_tracker_num:		rs.w	1	; $FFFFEED6 ; current location within Tails' position tracking data
;Camera_Delay_P2_End:

v_camera_y_shift:				rs.w	1	; $FFFFEED8 ; camera y position shift when Sonic looks up/down - $60 = default; $C8 = look up; 8 = look down
;Camera_Y_pos_bias_End:

v_camera_y_shift_p2:			rs.w	1	; $FFFFEEDA ; same as above, but for Tails in 2P
;Camera_Y_pos_bias_P2_End:

f_disable_scrolling:			rs.b	1	; $FFFFEEDC ; flag to disable all background deformation

unused_EEDD: 					rs.b	1	; $FFFFEEDD ; unused

f_boundary_bottom_change: 		rs.b	1	; $FFFFEEDE ; flag set when bottom level boundary is changing
v_dle_routine:					rs.b	1	; $FFFFEEDF ; dynamic level event routine counter

unused_EEE0:			rs.w	1	; $FFFFEEE0 ; unused

v_camera_x_pos_offset:			rs.w	1	; $FFFFEEE2 ; used to control horizontal background scrolling during WFZ ending and HTZ earthquakes
v_camera_y_pos_offset:			rs.w	1	; $FFFFEEE4 ; used to control vertical background scrolling during WFZ ending and HTZ earthquakes
v_htz_terrain_delay:			rs.w	1	; $FFFFEEE6 ; delay between rising and sinking terrain during which there is no shaking during HTZ earthquakes
v_htz_terrain_direction:		rs.b	1	; $FFFFEEE8 ; direction of terrain movement during HTZ earthquakes: 0 if terrain/lava is rising, 1 if lowering

unused_EEE9:			rs.b	3	; $FFFFEEE9-$FFFFEEEB ; seems unused

v_hblank_fg_y_pos_vsram_p2:		rs.l	1	; $FFFFEEEC 
v_camera_x_pos_copy:			rs.l	1	; $FFFFEEF0
v_camera_y_pos_copy:			rs.l	1	; $FFFFEEF4

;Camera_Boundaries_P2:
v_boundary_left_next_p2:		rs.w	1	; $FFFFEEF8
v_boundary_right_next_p2:		rs.w	1	; $FFFFEEFA
v_boundary_top_next_p2:			rs.w	1 	; $FFFFEEFC ;  seems not actually implemented (only written to)
v_boundary_bottom_next_p2:		rs.w	1	; $FFFFEEFE 
;Camera_Boundaries_P2_End:

;Camera_RAM_End:

v_block_cache:					rs.w	512/16*2 ; $FFFFEF00 ; equ 64 ; width of plane in blocks, with each block getting two words.
v_ring_consumption_table:		rs.b	$80	; $FFFFEF80 ; contains RAM addresses of rings currently being consumed
;Ring_consumption_table_End:

v_pal_water_next:				rs.b sizeof_pal	; $FFFFF000 ; Thse four are addresses are used by the screen-fading subroutines.
v_pal_water_next_2:				rs.b sizeof_pal	; $FFFFF020 ; While Underwater_palette contains the blacked-out palette caused by the fading,
v_pal_water_next_3:				rs.b sizeof_pal	; $FFFFF040 ; Underwater_target_palette will contain the palette the screen will ultimately fade in to.
v_pal_water_next_4:				rs.b sizeof_pal ; $FFFFF060

v_pal_water:					rs.b sizeof_pal	; $FFFFF080 ; main palette for underwater parts of the screen
v_pal_water_2:					rs.b sizeof_pal ; $FFFFF0A0
v_pal_water_3:					rs.b sizeof_pal ; $FFFFF0C0
v_pal_water_4:					rs.b sizeof_pal ; $FFFFF0E0

unused_F100:		rs.b	$500	; $FFFFF100-$FFFFF5FF ; unused, leftover from the Sonic 1 sound driver (and used by it when you port it to Sonic 2)

v_gamemode:						rs.b	1	; $FFFFF600 ; see GameModesArray (master level trigger, Mstr_Lvl_Trigger)
unused_F601:					rs.b	1	; $FFFFF601 ; unused
v_joypad_hold:				rs.w	1	; $FFFFF602	; joypad input - held, can be overridden by demos
v_joypad_press:				equ __rs-1	; $FFFFF603 ; joypad input - pressed, can be overridden by demos
v_joypad_hold_actual:		rs.w	1	; $FFFFF604 ; joypad input - held, actual
v_joypad_press_actual:		equ __rs-1	; $FFFFF605 ; joypad input - pressed, actual
v_joypad2_hold_actual:		rs.w	1	; $FFFFF606 ; joypad 2 input - held, actual
v_joypad2_press_actual:		equ __rs-1	; $FFFFF607 ; joypad 2 input - pressed, actual

unused_F608:		rs.l	1	; $FFFFF608-$FFFFF60B ; seems unused

v_vdp_mode_buffer:			rs.w	1	; $FFFFF60C ; VDP register $81 buffer - contains $8134 which is sent to vdp_control_port
unused_F60E:				rs.b	6	; $FFFFF60E-$FFFFF613 ; seems unused

v_countdown:				rs.w	1	; $FFFFF614 ; decrements every time VBlank runs, used as a general purpose timer

v_fg_y_pos_vsram:			rs.w	1 ; $FFFFF616 ; foreground y position, sent to VSRAM during VBlank
v_bg_y_pos_vsram:			rs.w	1 ; $FFFFF618 ; background y position, sent to VSRAM during VBlank

unused_F61A:		rs.l	1 ; $FFFFF61A ; only ever cleared, never used

v_fg_y_pos_vsram_p2:		rs.w	1 ; $FFFFF61E ; foreground y position for player 2
v_bg_y_pos_vsram_p2:		rs.w	1 ; $FFFFF620 ; background y position for player 2
v_teleport_timer:			rs.b	1 ; $FFFFF622 ; timer for teleport effect
f_teleport_flag:			rs.b	1 ; $FFFFF623 ; flag to indicate a teleport is in progress
v_vdp_hint_counter:			rs.w	1 ; $FFFFF624 ; ; VDP register $8A buffer - horizontal interrupt counter ($8Axx)
v_palfade_start:			rs.b	1 ; $FFFFF626 ; palette fading - start position in bytes
v_palfade_size:				rs.b	1 ; $FFFFF627 ; palette fading - number of colors

MiscLevelVariables:
v_vblank_0e_counter:		rs.b	1 ; $FFFFF628 ; counter that increments when VBlank routine $E is run - unused
	
unused_F629:		rs.b	1 ; $FFFFF629 ; seems unused

v_vblank_routine:			rs.b	1 ; $FFFFF62A ; VBlank routine counter
				
unused_F62B:		rs.b	1 ; $FFFFF62B ; seems unused

v_spritecount:				rs.b	1 ; $FFFFF62C ; number of sprites on-screen
				
unused_F62D:		rs.b	5	; $FFFFF62D-$FFFFF631 ; seems unused

v_palcycle_num:				rs.w	1 ; $FFFFF632 ; palette cycling - current index number
v_palcycle_time:			rs.w	1 ; $FFFFF634 ; palette cycling - time until the next change
v_random:					rs.l	1 ; $FFFFF636 ; pseudo random number generator result
f_pause:					rs.w	1 ; $FFFFF63A ; flag set to pause the game	

unused_F63C:				rs.b	4 ; $FFFFF63C-$FFFFF63F ; seems unused

v_vdp_dma_buffer:			rs.w	1 ; $FFFFF640 ; VDP DMA command buffer. Data will NOT be preserved across V-INTs, so consider this space reserved.

unused_F642:				rs.w	1 ; $FFFFF642-$FFFFF643 ; seems unused

f_hblank:					rs.w	1 ; $FFFFF644 ; flag to run HBlank routine
v_water_height_actual:		rs.w	1 ; $FFFFF646 ; water height, actual
v_water_height_normal:		rs.w	1 ; $FFFFF648 ; water height, ignoring wobble
v_water_height_next:		rs.w	1 ; $FFFFF64A ; water height, next target

v_water_direction:			rs.b	1 ; $FFFFF64C ; water setting - 0 = no water; 1 = water moves down; -1 = water moves up
v_water_routine:			rs.b	1 ; $FFFFF64D ; water event routine counter
f_water_pal_full:			rs.b	1 ; $FFFFF64E ; flag set when water covers the entire screen (00 = partly/all dry; 01 = all underwater)
f_hblank_run_snd:			rs.b	1 ; $FFFFF64F ; flag set when sound driver should be run from HBlank (technically an unnecessary leftover from Sonic 1)

v_palcycle_num_cnz:			rs.w	1 ; $FFFFF650
v_palcycle_num2:			rs.w	1 ; $FFFFF652
v_palcycle_num3:			rs.w	1 ; $FFFFF654
v_palcycle_num2_cnz:		rs.w	1 ; $FFFFF656

unused_F658:				rs.b	4 ; $FFFFF658-$FFFFF65B ; seems unused

v_palette_frame:			rs.w	1 ; $FFFFF65C 
v_palette_timer:			rs.b	1 ; $FFFFF65E ; was "Palette_frame_count"
v_super_sonic_palette:		rs.b	1 ; $FFFFF65F

; Following five variables share a single address ($FFFFF660), and are used at different times.
v_dez_eggman:					; Word
v_dez_shake_timer:				; Word
v_wfz_levevent_subrout:				; Word
f_segascr_paldone_flag:				; Byte (cleared once as a word)
f_credits_trigger:			rs.b	1 ; cleared as a word a couple times

f_ending_palcycle_flag:		rs.b	1 ; $FFFFF661

v_segascr_vblank_subr:
v_ending_vint_subrout:
v_wfz_bg_y_speed:			rs.w	1  ; $FFFFF662
				ds.w	1	; $FFFFF664-$FFFFF665 ; seems unused
v_palcycle_time2:		ds.w	1 ; $FFFFF666
v_palcycle_time3:		ds.w	1 ; $FFFFF668

v_joypad2_hold      		rs.w	1	; $FFFFF66A ; joypad 2 input - held, can be overridden by demos
v_joypad2_press:		    equ __rs-1	; $FFFFF66B ; joypad 2 input - pressed, can be overridden by demos
v_sonic_look_delay_counter:	ds.w	1	; 2 bytes
v_tails_look_delay_counter:	ds.w	1	; 2 bytes
v_super_sonic_frame_count:	ds.w	1
Camera_ARZ_BG_X_pos:		ds.l	1



v_keep_after_reset:         equ v_stack_pointer ; $FFFFFE00 ; everything after this address is kept in RAM after a soft reset

v_console_region:           rs.b    1   ; $FFFFFFF8 ; Mega Drive console type - 0 = JP; $80 = US/EU; +0 = NTSC; +$40 = PAL

v_checksum_pass:            rs.l    1   ; $FFFFFFFC ; set to the text string "init" when checksum is passed


v_ss_shared_ram:           equ v_ost_level_only ; $FFFFD000	
	v_ss_shared_ram_end:   equ v_vdp_dma_buffer
	sizeof_ss_shared_ram   equ v_ss_shared_ram_end-v_ss_shared_ram