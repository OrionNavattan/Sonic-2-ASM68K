; ---------------------------------------------------------------------------
; RAM Addresses - Variables (v) and Flags (f)
; ---------------------------------------------------------------------------
		pusho						; save options
		opt	ae+					; enable auto evens


						rsset $FFFF0000
						
RAM_Start:				equ __rs
v_128x128_tiles:		rs.b $8000			;   $FFFF0000 ; 128x128 tile mappings ($8000 bytes); also used as decompression buffer for level tiles; referenced by both a full 32 bit address and by 24 bit addresses.
v_level_layout:         rs.b sizeof_level			; $FFFF8000 ; level and background layouts ($1000 bytes)
v_16x16_tiles:          rs.w sizeof_16x16_all			; $FFFF9000 ; 16x16 tile mappings ($C00 bytes)
v_bgscroll_buffer:      rs.b $200				; $FFFFA800 ; used by some layer deformation routines
v_nem_gfx_buffer:       rs.b $200				; $FFFFAA00 ; ; Nemesis graphics decompression buffer
v_sprite_queue:         rs.b sizeof_priority*8			; $FFFFAC00 ; sprite display queue, first section is highest priority ($400 bytes; 8 sections of $80 bytes)
v_sprite_queue_end:		equ __rs

                rsblock ost					; $B000-$D400 
v_ost_all:          rs.b sizeof_ost_all				; $FFFFB000 ; object variable space ($40 bytes per object; $90 objects) ($2400 bytes) 
	; Reserved object RAM: players, titlecards, and game over/time over
    v_ost_reserved:			equ	v_ost_all
    v_ost_player1:   	 	equ v_ost_all			; $FFFFB040 first object (Tails in a Tails Alone game; Sonic otherwise)
    v_ost_player2:         	equ v_ost_all+sizeof_ost	; $FFFFB040 ; second object (Tails in a Sonic and Tails game or in 2P mode)
    v_ost_titlecard:				equ	v_ost_all+(sizeof_ost*2) ; $FFFFB080 
    v_ost_titlecard_zonename:		equ	v_ost_titlecard	; level title card: zone name
    v_ost_gameover_gametext:		equ	v_ost_titlecard	; "GAME" from GAME OVER
    v_ost_timeover_timetext:		equ v_ost_titlecard	; "TIME" from TIME OVER 
    v_ost_titlecard_zone:			equ	v_ost_all+(sizeof_ost*3) ; $FFFFB0C0 level title card: "ZONE"
    v_ost_gameover_overtext:		equ	v_ost_titlecard_zone ; "OVER" from GAME OVER
    v_ost_timeover_overtext:		equ v_ost_titlecard_zone ; "OVER" from TIME OVER
    v_ost_titlecard_actnumber:		equ v_ost_all+(sizeof_ost*4) ; $FFFFB100 ; level title card: act number
    v_ost_titlecard_background:		equ v_ost_all+(sizeof_ost*5) ; $FFFFB140 ; level title card: background
    v_ost_titlecard_bottom:			equ v_ost_all+(sizeof_ost*6) ; $FFFFB180 ; level title card: yellow part at the bottom
    v_ost_titlecard_left:			equ v_ost_all+(sizeof_ost*7) ; $FFFFB1C0 ; level title card: red part on the left

	v_ost_reserved_unused:	equ v_ost_all+(sizeof_ost*$C)	; $FFFFB200

	; Reseved object RAM: global level objects that are never unloaded
    v_ost_cpzpylon:			equ v_ost_all+(sizeof_ost*$D) ; $FFFFB340 ; Pylon in the foreground in CPZ
    v_ost_watersurface1:	equ v_ost_all+(sizeof_ost*$E)	; $FFFFB380 ; First water surface
    v_ost_oil:				equ v_ost_watersurface1	; $FFFFB380 ; Oil at the bottom of OOZ
    v_ost_watersurface2:	equ v_ost_all+(sizeof_ost*$F)	; $FFFFB3C0 ; Second water surface
    v_ost_reserved_end:		equ v_ost_all+(sizeof_ost*$10)	
			
v_ost_dynamic:         equ v_ost_all+(sizeof_ost*$10)		;  $FFFFFB400
    v_ost_dynamic_end:     equ v_ost_all+(sizeof_ost*countof_ost)
    v_ost_dynamic_2P_end:  equ v_ost_dynamic_end-($C*6)*sizeof_ost ; 2P mode reserves 6 'blocks' of 12 RAM slots at the end.
                rsblockend ost

                rsblock ost_level_only
                rsblock ss_shared_ram

v_ost_level_only:          rs.b sizeof_ost_level_only		; $FFFFD000       

    v_ost_lo_tails_tails:      equ v_ost_level_only		; $FFFFD000
    v_ost_lo_supersonicstars:  equ v_ost_level_only+sizeof_ost	; $FFFFD040
    v_ost_lo_sonic_breathingbubbles:	equ v_ost_level_only+(sizeof_ost*2) ; $FFFFD080 ;  Sonic's breathing bubbles 
    v_ost_lo_tails_breathingbubbles:    equ v_ost_level_only+(sizeof_ost*3) ; $FFFFD0C0 ; Tails' breathing bubbles
    v_ost_lo_sonic_dust:    equ v_ost_level_only+(sizeof_ost*4)	; $FFFFD100 ; Sonic's spin dash dust
    v_ost_lo_tails_dust:    equ v_ost_level_only+(sizeof_ost*5)	; $FFFFD140  Tails' spin dash dust
    v_ost_lo_sonic_shield:  equ v_ost_level_only+(sizeof_ost*6)	; $FFFFD180
    v_ost_lo_tails_shield:  equ v_ost_level_only+(sizeof_ost*7)	; $FFFFD1C0
    v_ost_lo_sonic_invincibilitystars: equ v_ost_level_only+(sizeof_ost*8) ; $FFFFD200 ; four slots total
    v_ost_lo_tails_invincibilitystars: equ v_ost_level_only+(sizeof_ost*$C) ; $FFFFD300 ; four slots total
;    v_ost_level_only_end:   equ v_ost_level_only+(sizeof_ost*countof_ost_level_only) ; $FFFFD400
                rsblockend ost_level_only

						rs.b $200	; $FFFFD400-$FFFFD5FF; unused
v_primary_collision:    rs.b $300				; $FFFFD600
v_secondary_collision:  rs.b $300				; $FFFFD900

				rsblockend ss_shared_ram

v_dma_queue:       		rs.b sizeof_dma_queue		; $FFFFDC00 ; queued DMA commands to be executed the next time ProcessDMA is called, $12 commands by default, $E bytes each, $FC bytes total
v_dma_queue_slot:  		rs.l 1				; $FFFFDCFC ; stores the address of the next open slot for a queued VDP command
v_sprite_queue_2:       rs.b $280				; $FFFFDD00 ; sprite attribute table buffer for player 2's half of screen in two-player mode
                        rs.b $80				; unused, but SAT buffer 2 can spill over into this area when there are too many sprites on-screen

				rsblock hscroll
v_hscroll_buffer:  		rs.b sizeof_vram_hscroll	; $FFFFE000 ; horizontal scroll table buffer ($380 bytes)
                        rs.l 16					; A bug/optimisation in 'Deform_CPZ' causes 'v_hscroll_buffer' to overflow into this.
						rs.b $40	; $FFFFE3C0-$FFFFE3FF ; unused
				rsblockend hscroll

v_sonic_stat_tracker:   	rs.b $100			; $FFFFE400


v_sonic_pos_tracker:    	rs.b $100			; $FFFFE500
		ramblocksize	v_sonic_pos_tracker

v_tails_pos_tracker:   		rs.b $100			; $FFFFE600
		ramblocksize	v_tails_pos_tracker

v_cnz_saucer_data:      	rs.b $40			; $FFFFE700 the number of CNZ saucer bumpers in a group which have been destroyed; used to determine when to give 500 points instead of 10
		ramblockend v_cnz_saucer_data			; required for clear_ram
    
			            rs.b $C0			; $FFFFE740-$FFFFE7FF ; unused, but cleared during level init

v_ring_positions:       rs.l $180				; $FFFFE800 ; $600 bytes
		ramblockend	v_ring_positions   

				rsblock camera_ram

				ramblock camera_positions	; required for teleport swap table
v_camera_x_pos:		rs.l 1					; $FFFFEE00 ; foreground camera x position
v_camera_y_pos:		rs.l 1					; $FFFFEE04 ; foreground camera y position
v_bg1_x_pos:		rs.l 1					; $FFFFEE08 ; background x position, only used sometimes as the layer deformation makes it sort of redundant
v_bg1_y_pos:		rs.l 1					; $FFFFEE0C ; background y position
v_bg2_x_pos:		rs.l 1					; $FFFFEE10 ; background 2 x position; only used sometimes as the layer deformation makes it sort of redundant
v_bg2_y_pos:		rs.l 1					; $FFFFEE14 ; background 2 y position
v_bg3_x_pos:		rs.l 1					; $FFFFEE18 ; background 3 x position; used in Sonic 1, but unused here (only initialised at beginning of level)?
v_bg3_y_pos:		rs.l 1					; $FFFFEE1C ; background 3 y position; unused (only initialised at beginning of level)?
				ramblocksize	camera_positions


				ramblock camera_positions_p2	; required for teleport swap table
; Camera positions for the second player in 2P mode				
v_camera_x_pos_p2:		rs.l 1				; $FFFFEE20
v_camera_y_pos_p2:		rs.l 1				; $FFFFEE24
v_bg1_x_pos_p2:			rs.l 1				; $FFFFEE28 ; only used sometimes as the layer deformation makes it sort of redundant
v_bg1_y_pos_p2:			rs.l 1				; $FFFFEE2C
v_bg2_x_pos_p2:			rs.l 1				; $FFFFEE30 ; unused (only initialised at beginning of level)?
v_bg2_y_pos_p2:			rs.l 1				; $FFFFEE34 
v_bg3_x_pos_p2:			rs.l 1				; $FFFFEE38 ; unused (only initialised at beginning of level)?
v_bg3_y_pos_p2:			rs.l 1				; $FFFFEE3C
				ramblocksize	camera_positions_p2

				ramblock block_redraw_flags	; required for teleport swap table
; Foreground and background redraw flags
v_fg_x_redraw_flag:		rs.b 1				; $FFFFEE40 ; $10 when foreground camera x has moved 16 pixels and needs redrawing
v_fg_y_redraw_flag:		rs.b 1				; $FFFFEE41 ; $10 when foreground camera y has moved 16 pixels and needs redrawing
v_bg1_x_redraw_flag:	rs.b 1					; $FFFFEE42 ; $10 when background camera x has moved 16 pixels and needs redrawing
v_bg1_y_redraw_flag:	rs.b 1					; $FFFFEE43 ; $10 when background camera y has moved 16 pixels and needs redrawing
v_bg2_x_redraw_flag:	rs.b 1					; $FFFFEE44 ; used only in CPZ
						rs.b 1		; $FFFFEE45 ; unused
v_bg3_x_redraw_flag: 	rs.b 1					; $FFFFEE46
						rs.b 1		; $FFFFEE47 ; unused
				ramblocksize block_redraw_flags

				ramblock block_redraw_flags_p2	; required for teleport swap table
; Redraw flags for lower half of screen in 2P mode				
v_fg_x_redraw_flag_p2:	rs.b 1					; $FFFFEE48
v_fg_y_redraw_flag_p2:	rs.b 1					; $FFFFEE49
						rs.b 6		; $FFFFEE4A-$FFFFEE4F ; unused
				ramblocksize block_redraw_flags_p2

				ramblock scroll_redraw_flags	; required for teleport swap table
; Scroll redraw flags; accessed as longwords when copied to their duplicates during VBlank
v_fg_redraw_direction: 		rs.w 1				; $FFFFEE50 ; bitfield ; bit 0 = redraw top row, bit 1 = redraw bottom row, bit 2 = redraw left-most column, bit 3 = redraw right-most column
v_bg1_redraw_direction:		rs.w 1				; $FFFFEE52 ; bitfield ; bits 0-3 as above, bit 4 = redraw top row (except leftmost block), bit 5 = redraw bottom row (except leftmost block), bits 6-7 = as bits 0-1
v_bg2_redraw_direction:		rs.w 1				; $FFFFEE54 ; bitfield ; essentially unused; bit 0 = redraw left-most column, bit 1 = redraw right-most column
v_bg3_redraw_direction:		rs.w 1				; $FFFFEE56 ; bitfield ; for CPZ; bits 0-3 as Scroll_flags_BG but using Y-dependent BG camera; bits 4-5 = bits 2-3; bits 6-7 = bits 2-3
				ramblocksize scroll_redraw_flags

				ramblock scroll_redraw_flags_p2	; required for teleport swap table
; Scroll redraw flags for second player in 2P mode
v_fg_redraw_direction_p2:		rs.w 1			; $FFFFEE58 ; bitfield ; bit 0 = redraw top row, bit 1 = redraw bottom row, bit 2 = redraw left-most column, bit 3 = redraw right-most column
v_bg1_redraw_direction_p2:		rs.w 1			; $FFFFEE5A ; bitfield ; bits 0-3 as above, bit 4 = redraw top row (except leftmost block), bit 5 = redraw bottom row (except leftmost block), bits 6-7 = as bits 0-1
v_bg2_redraw_direction_p2:		rs.w 1			; $FFFFEE5C ; bitfield ; essentially unused; bit 0 = redraw left-most column, bit 1 = redraw right-most column
v_bg3_redraw_direction_p2:		rs.w 1			; $FFFFEE5E ; bitfield ; for CPZ; bits 0-3 as Scroll_flags_BG but using Y-dependent BG camera; bits 4-5 = bits 2-3; bits 6-7 = bits 2-3
				ramblocksize scroll_redraw_flags_p2

				ramblock vblank_camera_copies	; required for teleport swap table
; Copies of the camera position RAM and scroll redraw flags that are copied during VBlank and used by DrawTilesWhenMoving:
v_camera_pos_copy:			rs.l 2			; $FFFFEE60
v_camera_pos_bg_copy:		rs.l 2				; $FFFFEE68
v_camera_pos_bg2_copy:		rs.l 2				; $FFFFEE70
v_camera_pos_bg3_copy:		rs.l 2				; $FFFFEE78
				ramblocksize vblank_camera_copies

v_camera_pos_p2_copy:			rs.l 8			; $FFFFEE80
				ramblocksize v_camera_pos_p2_copy

				ramblock	vblank_scroll_redraw_flags ; required for teleport swap table
v_fg_redraw_direction_copy: 		rs.w 1			; $FFFFEEA0 
v_bg1_redraw_direction_copy:		rs.w 1			; $FFFFEEA2
v_bg2_redraw_direction_copy:		rs.w 1			; $FFFFEEA4
v_bg3_redraw_direction_copy:		rs.w 1			; $FFFFEEA6
				ramblocksize	vblank_scroll_redraw_flags

				ramblock	vblank_scroll_redraw_flags_p2 ; required for teleport swap table
v_fg_redraw_direction_p2_copy:		rs.w 1			; $FFFFEEA8
v_bg1_redraw_direction_p2_copy:		rs.w 1			; $FFFFEEAA
v_bg2_redraw_direction_p2_copy:		rs.w 1			; $FFFFEEAC
v_bg3_redraw_direction_p2_copy:		rs.w 1			; $FFFFEEAE
				ramblocksize	vblank_scroll_redraw_flags_p2

				ramblock camera_diffs		; required for teleport swap table
; Camera differences
v_camera_x_diff:		rs.w 1				; $FFFFEEB0 ; (new X pos - old X pos) * 256
v_camera_y_diff:		rs.w 1				; $FFFFEEB2 ; (new X pos - old X pos) * 256 
				ramblocksize camera_diffs

v_bg_x_pos_diff: 			rs.w 1			; $FFFFEEB4 ; Effective camera change used in WFZ ending and HTZ screen shake
v_bg_y_pos_diff:			rs.w 1			; $FFFFEEB6 ; Effective camera change used in WFZ ending and HTZ screen shake

				ramblock camera_diffs_p2	; required for teleport swap table
v_camera_x_diff_p2:		rs.w 1				; $FFFFEEB8 ; (new X pos - old X pos) * 256
v_camera_y_diff_p2:		rs.w 1				; $FFFFEEBA ; (new X pos - old X pos) * 256
				ramblocksize camera_diffs_p2

f_screen_shake_htz:		rs.b 1				; $FFFFEEBC ; flag to activate screen shaking code in HTZ's layer deformation routine
f_screen_shake: 			rs.b 1			; $FFFFEEBD ; flag to activate screen shaking code (if existent) in layer deformation routine
f_disable_horiz_scroll:			rs.b 1			; $FFFFEEBE ; flag to disable horizontal scrolling for entire screen in 1P or top half in 2P
f_disable_horiz_scroll_p2:		rs.b 1			; $FFFFEEBF ; flag to disable horizontal scrolling for bottom half of screen in 2P 

v_boundary_unused1:				rs.l 1		; $FFFFEEC0 ; unused Sonic 1 leftover: these were that game's 'v_boundary_left' and 'v_boundary right'
v_boundary_unused2:				rs.w 1		; $FFFFEEC4 ; unused Sonic 1 leftover: was 'v_boundary_top.' Written to as a longword to populate the still-used variable below

v_boundary_bottom_next: 	rs.w 1				; $FFFFEEC6 ; bottom level boundary, next

				ramblock camera_boundaries	; required for teleport swap table
v_boundary_left_next:		rs.w 1				; $FFFFEEC8 ; left level boundary, next (actual boundary shifts to match this)
v_boundary_right_next:		rs.w 1				; $FFFFEECA ; right level boundary, next
v_boundary_top_next:		rs.w 1				; $FFFFEECC ; top level boundary, next
v_boundary_bottom:			rs.w 1			; $FFFFEECE ; bottom level boundary, was "Camera_max_scroll_spd"...
				ramblocksize camera_boundaries

				ramblock horiz_scroll_delay	; required for teleport swap table 
v_hscroll_delay_val:		rs.w 1				; $FFFFEED0 ; if its value is a, where a != 0, horizontal scrolling will be based on the player's X position a-1 frames ago
v_sonic_pos_tracker_num:		rs.w 1			; $FFFFEED2 ; current location within Sonic's position tracking data
				ramblocksize horiz_scroll_delay

				ramblock horiz_scroll_delay_p2	; required for teleport swap table 
v_hscroll_delay_val_p2:	rs.w 1					; $FFFFEED4 ; same as above, but for Tails in 2P
v_tails_pos_tracker_num:		rs.w 1			; $FFFFEED6 ; current location within Tails' position tracking data
				ramblocksize horiz_scroll_delay_p2

v_camera_y_shift:				rs.w 1		; $FFFFEED8 ; camera y position shift when Sonic looks up/down - $60 = default; $C8 = look up; 8 = look down
		ramblocksize	v_camera_y_shift
		
v_camera_y_shift_p2:			rs.w 1			; $FFFFEEDA ; same as above, but for Tails in 2P
		ramblocksize	v_camera_y_shift_p2

f_disable_scrolling:			rs.b 1			; $FFFFEEDC ; flag to disable all background deformation
			 					rs.b 1 ; $FFFFEEDD ; unused
f_boundary_bottom_change: 		rs.b 1			; $FFFFEEDE ; flag set when bottom level boundary is changing
v_dle_routine:					rs.b 1		; $FFFFEEDF ; dynamic level event routine counter
								rs.w 1 ; $FFFFEEE0 ; unused
v_camera_x_pos_offset:			rs.w 1			; $FFFFEEE2 ; used to control horizontal background scrolling during WFZ ending and HTZ earthquakes
v_camera_y_pos_offset:			rs.w 1			; $FFFFEEE4 ; used to control vertical background scrolling during WFZ ending and HTZ earthquakes
v_htz_terrain_delay:			rs.w 1			; $FFFFEEE6 ; delay between rising and sinking terrain during which there is no shaking during HTZ earthquakes
v_htz_terrain_direction:		rs.b 1			; $FFFFEEE8 ; direction of terrain movement during HTZ earthquakes: 0 if terrain/lava is rising, 1 if lowering
								rs.b 3 ; $FFFFEEE9-$FFFFEEEB ; unused
v_hblank_fg_y_pos_vsram_p2:		rs.l 1			; $FFFFEEEC 
v_camera_x_pos_copy:			rs.l 1			; $FFFFEEF0
v_camera_y_pos_copy:			rs.l 1			; $FFFFEEF4

				ramblock camera_boundaries_p2	; required for teleport swap table
v_boundary_left_next_p2:		rs.w 1			; $FFFFEEF8
v_boundary_right_next_p2:		rs.w 1			; $FFFFEEFA
v_boundary_top_next_p2:			rs.w 1			; $FFFFEEFC ; seems not actually implemented (only written to)
v_boundary_bottom_next_p2:		rs.w 1			; $FFFFEEFE 
				ramblocksize camera_boundaries_p2
				rsblockend camera_ram

v_block_cache:					rs.l 512/16	; $FFFFEF00 ; equ 32 ; width of plane in 16x16 blocks, one longword per block.
v_ring_consumption_table:		rs.w $40		; $FFFFEF80 ; contains RAM addresses of rings currently being consumed
v_ring_consumption_table_end:	equ __rs
v_pal_water_next:				rs.w sizeof_pal_all/2 ; $FFFFF000 ; These four are addresses are used by the screen-fading subroutines.
v_pal_water_next_line1:			equ v_pal_water_next
v_pal_water_next_line2:			equ v_pal_water_next+sizeof_pal ; $FFFFF020 ; While v_pal_water contains the blacked-out palette caused by the fading,
v_pal_water_next_line3:			equ v_pal_water_next+(sizeof_pal*2) ; $FFFFF040 ; v_pal_water_next will contain the palette the screen will ultimately fade in to.
v_pal_water_next_line4:			equ v_pal_water_next+(sizeof_pal*3) ; $FFFFF060
v_pal_water:					rs.w sizeof_pal_all/2 ; $FFFFF080 ; main palette for underwater parts of the screen
v_pal_water_line1:				equ v_pal_water
v_pal_water_line2:				equ v_pal_water+sizeof_pal ; $FFFFF0A0
v_pal_water_line3:				equ v_pal_water+(sizeof_pal*2) ; $FFFFF0C0
v_pal_water_line4:				equ v_pal_water+(sizeof_pal*3) ; $FFFFF0E0

							rs.b $500 ; $FFFFF100-$FFFFF5FF ; unused, was used by the sound driver in Sonic 1

v_gamemode:					rs.b 1		; $FFFFF600 ; see GameModesArray (master level trigger, Mstr_Lvl_Trigger)
							rs.b 1	; $FFFFF601 ; unused
v_joypad_hold:				rs.w 1			; $FFFFF602	; joypad input - held, can be overridden by demos
v_joypad_press:				equ __rs-1		; $FFFFF603 ; joypad input - pressed, can be overridden by demos
v_joypad_hold_actual:		rs.w 1				; $FFFFF604 ; joypad input - held, actual
v_joypad_press_actual:		equ __rs-1			; $FFFFF605 ; joypad input - pressed, actual
v_joypad2_hold_actual:		rs.w 1				; $FFFFF606 ; joypad 2 input - held, actual
v_joypad2_press_actual:		equ __rs-1			; $FFFFF607 ; joypad 2 input - pressed, actual
							rs.l 1	; $FFFFF608-$FFFFF60B ; unused
v_vdp_mode_buffer:			rs.w 1			; $FFFFF60C ; VDP register $81 buffer - contains $8134 which is ori'ed with vdp_enable_display&$FF and andi'ed with ~vdp_enable_display&$FF to enable and disable the display
							rs.b 6	; $FFFFF60E-$FFFFF613 ; unused
v_countdown:				rs.w 1			; $FFFFF614 ; decrements every time VBlank runs, used as a general purpose timer

v_y_pos_vsram:				rs.l 1			; $FFFFF616	; VScroll buffer
v_fg_y_pos_vsram:			equ v_y_pos_vsram	; $FFFFF616 ; foreground y position, sent to VSRAM during VBlank
v_bg_y_pos_vsram:			equ __rs-2		; $FFFFF618 ; background y position, sent to VSRAM during VBlank

v_unused_ss:				rs.l 1			; $FFFFF61A ; cleared by VDPSetupGame, ClearScreen, special stage init, and ending sequence init, but never used
v_fg_y_pos_vsram_p2:		rs.w 1				; $FFFFF61E ; foreground y position for player 2
v_bg_y_pos_vsram_p2:		rs.w 1				; $FFFFF620 ; background y position for player 2
v_teleport_timer:			rs.b 1			; $FFFFF622 ; timer for teleport effect
f_teleport_flag:			rs.b 1			; $FFFFF623 ; flag indicating a teleport is in progress
v_vdp_hint_counter:			rs.w 1			; $FFFFF624 ; VDP register $8A buffer 
v_vdp_hint_line:			equ __rs-1		; $FFFFF625 ; scanline where HBlank will trigger
v_palfade_start:			rs.b 1			; $FFFFF626 ; palette fading - start position in bytes
v_palfade_size:				rs.b 1			; $FFFFF627 ; palette fading - number of colors

					rsblock misc_level_variables
v_vblank_0e_counter:		rs.b 1				; $FFFFF628 ; counter that increments when VBlank routine $E is run - unused
							rs.b 1	; $FFFFF629 ; unused
v_vblank_routine:			rs.b 1			; $FFFFF62A ; VBlank routine counter			
							rs.b 1	; $FFFFF62B ; unused
v_spritecount:				rs.b 1			; $FFFFF62C ; number of sprites on-screen			
							rs.b 5	; $FFFFF62D-$FFFFF631 ; seems unused
v_palcycle_num:				rs.w 1			; $FFFFF632 ; palette cycling - current index number
v_palcycle_time:			rs.w 1			; $FFFFF634 ; palette cycling - time until the next change
v_random:					rs.l 1		; $FFFFF636 ; pseudo random number generator result
f_pause:					rs.w 1		; $FFFFF63A ; flag set to pause the game	
							rs.b 4	; $FFFFF63C-$FFFFF63F ; unused
v_vdp_dma_buffer:			rs.w 1			; $FFFFF640 ; buffer for final word of a DMA command. Data will NOT be preserved across V-INTs, so consider this space reserved.

							rs.w 1	; $FFFFF642-$FFFFF643 ; unused
f_hblank:					rs.w 1		; $FFFFF644 ; flag to run HBlank routine
v_water_height_actual:		rs.w 1				; $FFFFF646 ; water height, actual
v_water_height_normal:		rs.w 1				; $FFFFF648 ; water height, ignoring wobble
v_water_height_next:		rs.w 1				; $FFFFF64A ; water height, next target
v_water_direction:			rs.b 1			; $FFFFF64C ; water setting - 0 = no water; 1 = water moves down; -1 = water moves up
v_water_routine:			rs.b 1			; $FFFFF64D ; water event routine counter
f_water_pal_full:			rs.b 1			; $FFFFF64E ; flag set when water covers the entire screen (00 = partly/all dry; 01 = all underwater)
f_hblank_run_snd:			rs.b 1			; $FFFFF64F ; flag set when sound driver should be run from HBlank (technically an unnecessary leftover from Sonic 1)
v_palcycle_num_cnz:			rs.w 1			; $FFFFF650
v_palcycle_num2:			rs.w 1			; $FFFFF652
v_palcycle_num3:			rs.w 1			; $FFFFF654
v_palcycle_num2_cnz:		rs.w 1				; $FFFFF656
							rs.b 4	; $FFFFF658-$FFFFF65B ; seems unused
v_palette_frame:			rs.w 1			; $FFFFF65C 
v_palette_timer:			rs.b 1			; $FFFFF65E ; was "Palette_frame_count"
v_super_sonic_palette:		rs.b 1				; $FFFFF65F ; status of Super Sonic's palette cycle: 0 = inactive, 1 = transforming, 2 = detransforming, -1 = cycling

; Following five variables share a single address ($FFFFF660), and are used at different times.
v_dez_eggman:				equ __rs		; Word
v_dez_shake_timer:			equ __rs		; Word
v_wfz_dle_subrout:			equ __rs		; Word
f_segascr_paldone:			equ __rs		; Byte (cleared once as a word)
f_credits_trigger:			rs.w 1			; cleared as a word a couple times
f_ending_palcycle:			equ __rs-1		; $FFFFF661

; Following three variables share an address:
v_segascr_vblank_sub:		equ __rs
v_ending_vblank_sub:		equ __rs
v_wfz_bg_y_speed:			rs.w 1			; $FFFFF662

							rs.w 1	; $FFFFF664-$FFFFF665 ; unused
v_palcycle_time2:			rs.w 1			; $FFFFF666
v_palcycle_time3:			rs.w 1			; $FFFFF668

v_joypad2_hold:      		rs.w 1				; $FFFFF66A ; joypad 2 input - held, can be overridden by demos
v_joypad2_press:		    equ __rs-1			; $FFFFF66B ; joypad 2 input - pressed, can be overridden by demos
v_sonic_look_delay_counter:	rs.w 1				; $FFFFF66C ; timer for delay until Sonic looks up while up is pressed
v_tails_look_delay_counter:	rs.w 1				; $FFFFF66E ; timer for delay until Tails looks up while up is pressed
v_super_sonic_frame_count:	rs.w 1				; $FFFFF670 
v_camera_arz_bg_x_pos:		rs.l 1				; $FFFFF672
							rs.b $A	; $FFFFF676-$FFFFF67F ; unused
					rsblockend misc_level_variables

					rsblock plc_buffer_and_regs
v_plc_buffer:				rs.b sizeof_plc_buffer	; $FFFFF680 ; pattern load cues buffer, $10 PLCs by default, 6 bytes each, $60 bytes total
v_plc_buffer_dest:			equ v_plc_buffer+4	; $FFFFF684 ; VRAM destination for 1st item in PLC buffer (2 bytes)
v_plc_buffer_end:			equ __rs		; required for clearing				

; variables used to store nemesis decompression state, allowing decompression to occur over multiple frames
v_nem_mode_ptr:				rs.l 1			; $FFFFF6E0 ; pointer for nemesis decompression code ($1502 or $150C)
v_nem_repeat:				rs.l 1			; $FFFFF6E4 ; Nemesis register buffer - d0: repeat counter	
v_nem_pixel:				rs.l 1			; $FFFFF6E8 ; Nemesis register buffer - d1: pixel value	
v_nem_d2:					rs.l 1		; $FFFFF6EC ; Nemesis register buffer - d2	
v_nem_header:				rs.l 1			; $FFFFF6F0 ; Nemesis register buffer - d5: 3rd & 4th bytes of Nemesis archive header	
v_nem_shift:				rs.l 1			; $FFFFF6F4 ; Nemesis register buffer - d6: shift value
v_nem_tile_count:			rs.w 1			; $FFFFF6F8 ; number of 8x8 tiles in a Nemesis archive; also used as a flag to indicate there are PLCs to process 	
v_nem_tile_count_frame:		rs.w 1				; $FFFFF6FA ; number of 8x8 tiles to process in 1 frame	
							rs.b 4	; $FFFFF6FC-FFFFF6FF ; unused
				rsblockend plc_buffer_and_regs

				rsblock misc_variables
							rs.w 1	; $FFFFF700-$FFFFF701 ; unused

; Variables for Tails' AI in 1-player mode
v_tails_control_counter:	rs.w 1				; $FFFFF702 ; time until CPU takes control; also used as a flag to indicate that Tails is human-controlled
v_tails_respawn_counter:	rs.w 1				; $FFFFF704 ; time until Tails respawns

							rs.w 1	; $FFFFF706-$FFFFF707 ; unused

v_tails_cpu_routine:		rs.w 1				; $FFFFF708 ; routine counter for Tails' AI
v_tails_cpu_x_target:		rs.w 1				; $FFFFF70A ; target x-pos when Tails is flying
v_tails_cpu_y_target:		rs.w 1				; $FFFFF70C ; target y-pos when Tails is flying
v_tails_interact_id:		rs.b 1				; $FFFFF70E ; ID of last object Tails stood on
f_tails_cpu_jumping:		rs.b 1				; $FFFFF70F ; flag indicating Tails is jumping
; end AI variables

v_ring_manager_routine:		rs.b 1				; $FFFFF710 ; routine counter for rings manager
f_level_started:		rs.b 1				; $FFFFF711

				rsblock ring_manager_pointers
v_ring_start:			rs.w 1				; $FFFFF712
v_ring_end:				rs.w 1			; $FFFFF714
				ramblocksize	ring_manager_pointers
				rsblockend 	ring_manager_pointers

				rsblock ring_manager_pointers_p2
v_ring_start_p2:		rs.w 1				; $FFFFF716
v_ring_end_p2:			rs.w 1				; $FFFFF718
				ramblocksize	ring_manager_pointers_p2
				rsblockend ring_manager_pointers_p2

v_cnz_bumper_routine:		rs.b 1				; $FFFFF71A ; routine counter for the CNZ bumper manager psuedo-object
f_unused_cnz_bumper:		rs.b 1				; $FFFFF71B ; set by the CNZ bumper psuedo-object, never used again

				rsblock bumper_manager_pointers
v_cnz_visible_bumpers_start:		rs.l 1			; $FFFFF71C
v_cnz_visible_bumpers_end:			rs.l 1		; $FFFFF720
				ramblocksize	bumper_manager_pointers
				rsblockend	bumper_manager_pointers

				rsblock bumper_manager_pointers_p2
v_cnz_visible_bumpers_start_p2:		rs.l 1			; $FFFFF724
v_cnz_visible_bumpers_end_p2:		rs.l 1			; $FFFFF728
				ramblocksize	bumper_manager_pointers_p2
				rsblockend	bumper_manager_pointers_p2

f_screen_redraw:		rs.b 1				; $FFFFF72C ; flag indicating whole screen needs to redraw, such as when you destroy the rivet before the boss in WFZ
v_unused_cpz_scroll_timer:	rs.b 1				; $FFFFF72D ; used only in dead CPZ scrolling function
f_wfz_scz_fire_toggle:		rs.b 1				; $FFFFF72E ; flag used by the WFZ palette cycle switcher	
							rs.b 1	; $FFFFF72F ; unused
f_water:					rs.b 1		; $FFFFF730 ; flag indicating the level has water or oil		
							rs.b 1	; $FFFFF731 ; unused
v_demo_input_counter_p2:	rs.w 1				; $FFFFF732 ; tracks progress in the demo input data for player 2, increases by 2 when input changes
v_demo_input_time_p2:		rs.w 1				; $FFFFF734 ; time remaining for current demo "button press" for player 2
v_tornado_x_vel:			rs.w 1			; $FFFFF736 ; x_vel of the Tornado in SCZ
v_tornado_y_vel:			rs.w 1			; $FFFFF738 ; y_vel of the Tornado in SCZ


				rsblock boss_variables
v_boss_spawn_delay:			rs.b 1			; $FFFFF73A ; timer for delay until boss spawns	
							rs.b 4	; $FFFFF73B-$FFFFF73E; unused
v_boss_collision_routine:	rs.b 1				; $FFFFF73F
v_boss_anim_array:			rs.b $10		; $FFFFF740 ; up to $10 bytes; 2 bytes per entry
v_ending_routine:			rs.l 1			; $FFFFF750 ; which version of the ending cutscene to play (only used as a word)
v_boss_x_pos:				equ v_ending_routine	; $FFFFF750 ; x_pos of current boss							
								; $FFFFF752 ; Boss_MoveObject reads a long, but all other places in the game use only the high word
v_boss_y_pos:				rs.l 1			; $FFFFF754 ; y_pos of current boss
								; $FFFFF756 ; Boss_MoveObject reads a long, but all other places in the game use only the high word
v_boss_x_vel:				rs.w 1			; $FFFFF758 ; x_vel of current boss
v_boss_y_vel:				rs.w 1			; $FFFFF75A ; y_vel of current boss
v_boss_timer:				rs.w 1			; $FFFFF75C ; general timer used by boss objects
							rs.w 1	; $FFFFF75E-$FFFFF75F ; unused
				rsblockend boss_variables

				rsblock sonic_speeds
v_sonic_max_speed:			rs.w 1			; $FFFFF760 ; Sonic's maximum speed
v_sonic_acceleration:		rs.w 1				; $FFFFF762 ; Sonic's acceleration
v_sonic_deceleration:		rs.w 1				; $FFFFF764 ; Sonic's deceleration
				ramblocksize	sonic_speeds
				rsblockend	sonic_speeds

v_sonic_last_frame_id:		rs.b 1				; $FFFFF766 ; Sonic's previous frame id; compared with current frame to determine if graphics need updating. can be set to a dummy value like -1 to force a refresh DMA.
							rs.b 1	; $FFFFF767 ; unused
v_angle_right:				rs.b 1			; $FFFFF768 ; angle of floor on Sonic's right side
							rs.b 1	; $FFFFF769 ; unused
v_angle_left:				rs.b 1			; $FFFFF76A ; angle of floor on Sonic's left side
							rs.b 1	; $FFFFF76B ; unused
v_opl_routine:				rs.b 1			; $FFFFF76C ; ObjPosLoad routine counter
							rs.b 1	; $FFFFF76D ; unused
v_opl_screen_x_pos:			rs.w 1			; $FFFFF76E ; ObjPosLoad - screen x position, rounded down to nearest $80
		ramblocksize	v_opl_screen_x_pos

				rsblock object_manager_addresses ; required for teleport swap table
v_opl_ptr_right:			rs.l 1			; $FFFFF770 ; contains the address of the next object to load when moving right
v_opl_ptr_left:				rs.l 1			; $FFFFF774 ; contains the address of the last object loaded when moving left
				ramblocksize	object_manager_addresses
				rsblockend 		object_manager_addresses 

				rsblock object_manager_addresses_p2 ; required for teleport swap table
v_opl_ptr_right_p2:			rs.l 1			; $FFFFF778
v_opl_ptr_left_p2:			rs.l 1			; $FFFFF77C
				ramblocksize	object_manager_addresses_p2
				rsblockend 		object_manager_addresses_p2

				rsblock object_manager_2p	; The next 16 bytes belong to this.
v_opl_ram_block_indices:		rs.b 6			; $FFFFF780 ; seems to be an array of horizontal chunk positions, used for object position range checks
v_opl_loaded_object_blocks_p1:	rs.b 3				; $FFFFF786
v_opl_loaded_object_blocks_p2:	rs.b 3				; $FFFFF789

v_opl_screen_x_pos_p2:		rs.w 1				; $FFFFF78C
		ramblocksize	v_opl_screen_x_pos_p2

v_respawn_list_p2:			rs.b 2			; $FFFFF78E ; respawn table indices of the next objects when moving left or right for the second player
		ramblocksize	v_respawn_list_p2

				rsblockend object_manager_2p

v_demo_input_counter:		rs.w 1				; $FFFFF790 ; tracks progress in the demo input data for player 1, increases by 2 when input changes
v_demo_input_time:			rs.b 1			; $FFFFF792 ; time remaining for current demo "button press"
							rs.b 1	; $FFFFF793 ; unused
v_palfade_time:				rs.w 1			; $FFFFF794 ; palette fading - time until next change
v_collision_index_ptr:		rs.l 1				; $FFFFF796 ; ROM address for collision index of current level
							rs.b $D	; $FFFFF79A-$FFFFF7A6 ; unused
v_boss_status:				rs.b 1			; $FFFFF7A7 ; flag indicating the level boss has been defeated
							rs.b 2	; $FFFFF7A8-$FFFFF7A9 ; unused
v_current_boss:				rs.b 1			; $FFFFF7AA ; ID of current boss, used by boss collision and palette cycling routines. Also used as a flag to indicate a boss fight is in progress
							rs.b 5	; $FFFFF7AB-$FFFFF7AF ; unused
v_mtz_platform_cog_x_pos:	rs.w 1				; $FFFFF7B0 ; x_pos of moving MTZ platform for cog animation
v_mtz_cylinder_angle_sonic:		rs.b 1			; $FFFFF7B2 ; angle of Sonic while in MTZ rotating mesh cylinders
v_mtz_cylinder_angle_tails:		rs.b 1			; $FFFFF7B3 ; angle of Tails while in MTZ rotating mesh cylinders
							rs.b $A	; $FFFFF7B4-$FFFFF7BD ; unused
v_giantring_gfx_offset:		rs.w 1				; $FFFFF7BE ; unused leftover from Sonic 1 ; pointer to next frame of giant ring animation
							rs.b 7	; $FFFFF7C0-$FFFFF7C6 ; unused

f_wind_tunnel_now:			rs.b 1			; $FFFFF7C7 ; flag to indicate Sonic is in a wind tunnel
							rs.b 1	; $FFFFF7C8 ; unused
f_wind_tunnel_disable:		rs.b 1				; $FFFFF7C9 ; flag indicating Sonic is holding onto something in a wind tunnel
							rs.b 2	; $FFFFF7CA-$FFFFF7CB ; unused
f_lock_controls:			rs.b 1			; $FFFFF7CC ; flag set to lock player 1 controls
f_unused_ss_flag:			rs.b 1			; $FFFFF7CD ; set by 2P results screen and star post, but never read
							rs.b 1	; $FFFFF7CE ; unused
f_lock_controls_p2:			rs.b 1			; $FFFFF7CF ; flag set to lock player 2 controls
v_enemy_combo:				rs.w 1			; $FFFFF7D0 ; number of enemies/blocks broken in a row, times 2
v_bonus_count_1:			rs.w 1			; $FFFFF7D2 ; level results time bonus or special stage Sonic ring bonus
v_bonus_count_2:			rs.w 1			; $FFFFF7D4 ; level results ring bonus or special stage Tails ring bonus
f_pass_bonus_update:		rs.b 1				; $FFFFF7D6 ; flag set to update bonuses at the end of an act
							rs.b 3	; $FFFFF7D7-$FFFFF7D9 ; unused
v_camera_x_pos_coarse:		rs.w 1				; $FFFFF7DA ; (v_camera_x_pos - 128) / 256 ; used by MarkObjGone
	ramblocksize	v_camera_x_pos_coarse

v_camera_x_pos_coarse_p2:		rs.w 1			; $FFFFF7DC
	ramblocksize	v_camera_x_pos_coarse_p2

v_tails_last_frame_id:			rs.b 1			; $FFFFF7DE ; Tails' previous frame id; compared with current frame to determine if graphics need updating. can be set to a dummy value like -1 to force a refresh DMA.
v_tailstails_last_frame_id:		rs.b 1			; $FFFFF7DF ; Previous frame id of Tails' tails; compared with current frame to determine if graphics need updating. can be set to a dummy value like -1 to force a refresh DMA.
v_button_state:					rs.b $10	; $FFFFF7E0 ; 16 byte flag array, #subtype byte set when button/vine of respective subtype activated
v_anim_counters:				rs.b $10	; $FFFFF7F0-$FFFFF7FF
				rsblockend misc_variables
				
v_sprite_buffer:			rs.b sizeof_vram_sprites ; $FFFFF800 ; Sprite attribute table buffer
v_sprite_buffer_end:		equ __rs			; $FFFFFA80 ; required by clear_ram
							rs.b $80 ; unused, but v_sprite_buffer buffer can spill over into this area when there are too many sprites on-screen (see the bugfix in BuildSpr_DrawLoop)

				rsblock		palette_buffer
v_pal_dry:					rs.w sizeof_pal_all/2 ; $FFFFFB00 ; main palette for non-underwater parts of the screen
v_pal_dry_line1:			equ v_pal_dry
v_pal_dry_line2:			equ v_pal_dry+sizeof_pal ; $FFFFFB20		
v_pal_dry_line3:			equ v_pal_dry+(sizeof_pal*2) ; $FFFFFB40
v_pal_dry_line4:			equ v_pal_dry+(sizeof_pal*3) ; $FFFFFB60 
				rsblockend	palette_buffer

				rsblock		palette_fade_buffer
v_pal_dry_next:				rs.w sizeof_pal_all/2	; $FFFFFB80 ; This is used by the screen-fading subroutines.
v_pal_dry_next_line1:		equ v_pal_dry_next
v_pal_dry_next_line2:		equ v_pal_dry_next+sizeof_pal	; $FFFFFBA0 ; While v_pal_dry contains the blacked-out palette caused by the fading,
v_pal_dry_next_line3:		equ v_pal_dry_next+(sizeof_pal*2) ; $FFFFFBC0 ; v_pal_dry_next will contain the palette the screen will ultimately fade in to.
v_pal_dry_next_line4:		equ v_pal_dry_next+(sizeof_pal*3) ; $FFFFFBE0 
				rsblockend		palette_fade_buffer

;Object_Respawn_Table:
v_respawn_list:				rs.b 2			; $FFFFFC00 ; respawn table indices of the next objects when moving left or right for the first player
	ramblocksize	v_respawn_list
;v_respawn_list_end:			equ	__rs		; required by clear_ram

v_respawn_data:				rs.b $BE		; $FFFFFC02	; For stock S2, $80 is enough
	ramblocksize	v_respawn_data

				rsalign 4
v_stack:					rs.l $50	; $FFFFFCC0 ; system stack; $140 bytes, the first $BE bytes are cleared by ObjectsManager_Init due to a bug, with possibly disastrous consequences. At least $A0 bytes are needed.
v_stack_pointer:			equ	__rs		; $FFFFFE00 ; initial stack pointer - items are added to the stack backwards from this address
v_keep_after_reset:         equ __rs				; $FFFFFE00 ; everything after this address is kept in RAM after a soft reset

f_ss_2p:					rs.w 1		; $FFFFFE00-$FFFFFE01 ; flag indicating Special Stage 2P mode
f_restart:					rs.w 1		; $FFFFFE02 ; flag set to end/restart level(2 bytes)
v_frame_counter:			rs.w 1			; $FFFFFE04 ; frame counter, increments every frame
v_frame_counter_low:		equ __rs-1			; v_frame_counter_low ; low byte for frame counter
v_debug_item_index:			rs.b 1			; $FFFFFE06 ; debug item currently selected (NOT the object id of the item)
							rs.b 1	; $FFFFFE07 ; unused
v_debug_active:				rs.w 1			; $FFFFFE08 ; high byte is the debug mode routine counter ; low byte is placement mode flag: xx01 when Sonic is an item; 0 otherwise
v_debug_move_delay:			rs.b 1			; $FFFFFE0A ; debug mode - time delay in frames between holding the d-pad and the object moving
v_debug_move_speed:			rs.b 1			; $FFFFFE0B ; debug mode - speed the object moves, increases the longer d-pad is held
v_vblank_counter:			rs.l 1			; $FFFFFE0C ; vertical interrupt counter, increments every VBlank
v_vblank_counter_word:		equ __rs-2			; $FFFFFE0E ; low word for v_vblank_counter
v_vblank_counter_byte:		equ __rs-1			; $FFFFFE0F ; low byte for v_vblank_counter
v_zone:						rs.w 1		; $FFFFFE10 ; high byte is current zone number, low byte is current act number ; read as a byte if we only want the zone
v_act:						equ __rs-1	; $FFFFFE11 ; read if we only want the act number
v_lives:					rs.b 1		; $FFFFFE12 ; number of lives
							rs.b 3	; $FFFFFE13-$FFFFFE15 ; unused ($FE14 was used by the air counter in Sonic 1, which is now implemented in the player's object RAM)
v_special_stage:			rs.w 1			; $FFFFFE16 ; high byte is ID of current special stage, low byte is current act of current special stage (increments at each checkpoint)
v_special_act:				equ __rs-1		; $FFFFFE17 ; read if we only want the act number
v_continues:				rs.b 1			; $FFFFFE18 ; number of continues
f_super:					rs.b 1		; $FFFFFE19 ; flag set when Sonic is super
f_time_over:				rs.b 1			; $FFFFFE1A ; time over flag
v_ring_reward:				rs.b 1			; $FFFFFE1B ; tracks which rewards have been given for rings 

; HUD update flags
f_hud_lives_update:			rs.b 1			; $FFFFFE1C ; lives counter update flag
v_hud_rings_update:			rs.b 1			; $FFFFFE1D ; ring counter update flag - 1 = general update; $80 = reset to 0; $81 = decrement 1
f_hud_time_update:			rs.b 1			; $FFFFFE1E ; time counter update flag
f_hud_score_update:			rs.b 1			; $FFFFFE1F ; score counter update flag
v_rings:					rs.w 1		; $FFFFFE20 ; rings
v_time:						rs.l 1		; $FFFFFE22 ; time
v_time_min:					equ __rs-3	; $FFFFFE23 ; time - minutes
v_time_sec:					equ __rs-2	; $FFFFFE24 ; time - seconds
v_time_frames:				equ __rs-1		; $FFFFFE25 ; time - frames
v_score:					rs.l 1		; $FFFFFE26 ; score
							rs.b 6	; $FFFFFE2A-$FFFFFE2F ; unused
							
v_last_lamppost:				rs.b 1		; $FFFFFE30 ; max activated starpole ID in this act
v_last_lamppost_lampcopy:		rs.b 1			; $FFFFFE31 ; lamppost copy of v_last_lamppost
v_x_pos_lampcopy:				rs.w 1		; $FFFFFE32 ; lamppost copy of Sonic's x position
v_y_pos_lampcopy:				rs.w 1		; $FFFFFE34 ; lamppost copy of Sonic's y position
v_rings_lampcopy:				rs.w 1		; $FFFFFE36 ; lamppost copy of v_rings
v_time_lampcopy:				rs.l 1		; $FFFFFE38 ; lamppost copy of v_time
v_ost_tile_lampcopy:			rs.w 1			; $FFFFFE3C ; lamppost copy of main character's ost_tile RAM
v_ost_top_solid_bit_lampcopy:	rs.w 1				; $FFFFFE3E ; lamppost copy of main character's top_solid_bit
v_camera_x_pos_lampcopy:		rs.w 1			; $FFFFFE40 ; lamppost copy of v_camera_x_pos
v_camera_y_pos_lampcopy:		rs.w 1			; $FFFFFE42 ; lamppost copy of v_camera_y_pos
v_bg1_x_pos_lampcopy:			rs.w 1			; $FFFFFE44 ; lamppost copy of v_bg1_x_pos
v_bg1_y_pos_lampcopy:			rs.w 1			; $FFFFFE46 ; lamppost copy of v_bg1_y_pos
v_bg2_x_pos_lampcopy:			rs.w 1			; $FFFFFE48 ; lamppost copy of v_bg2_x_pos
v_bg2_y_pos_lampcopy:			rs.w 1			; $FFFFFE4A ; lamppost copy of v_bg2_y_pos
v_bg3_x_pos_lampcopy:			rs.w 1			; $FFFFFE4C ; lamppost copy of v_bg3_x_pos
v_bg3_y_pos_lampcopy:			rs.w 1			; $FFFFFE4E ; lamppost copy of v_bg3_y_pos
v_water_height_normal_lampcopy:	rs.w 1				; $FFFFFE50 ; lamppost copy of v_water_height_normal
v_water_routine_lampcopy:		rs.b 1			; $FFFFFE52 ; lamppost copy of v_water_routine
f_water_pal_full_lampcopy:		rs.b 1			; $FFFFFE53 ; lamppost copy of f_water_pal_full
v_ring_reward_lampcopy:			rs.b 1			; $FFFFFE54 ; lamppost copy of v_ring_reward
v_ring_reward_lampcopy_2p:		rs.b 1			; $FFFFFE55 ; stored, but never restored
v_boundary_bottom_next_lampcopy:	rs.w 1			; $FFFFFE56 ; lampppost copy of v_boundary_bottom_next
v_dle_routine_lampcopy:			rs.b 1			;  $FFFFFE58  ; lamppost copy of v_dle_routine
								rs.b 5 ; $FFFFFE59-$FFFFFE5D ; unused

v_oscillating_direction:		rs.w 1			; $FFFFFE5E ; bitfield for the direction values in the table below are moving - 0 = up; 1 = down
				rsblock	synctables
v_oscillating_table:			rs.l $10		; $FFFFFE60 ; table of 16 oscillating values, for platform movement - 1 word for current value, 1 word for rate
; TODO: This has been expanded compared to Sonic 1, and I am unsure of what the new values are.
v_oscillating_0_to_20:		equ v_oscillating_table
;v_oscillating_0_to_30:		equ v_oscillating_table+4
;v_oscillating_0_to_40:		equ v_oscillating_table+8
;v_oscillating_0_to_60:		equ v_oscillating_table+$C
;v_oscillating_0_to_40_fast:	equ v_oscillating_table+$10
;v_oscillating_0_to_10:		equ v_oscillating_table+$14
;v_oscillating_0_to_80_fast:	equ v_oscillating_table+$18
;v_oscillating_0_to_80:		equ v_oscillating_table+$1C
;v_oscillating_0_to_A0:		equ v_oscillating_table+$20
;v_oscillating_0_to_A0_alt:	equ v_oscillating_table+$24
;v_oscillating_0_to_40_alt:	equ v_oscillating_table+$28
;v_oscillating_0_to_60_alt:	equ v_oscillating_table+$2C
;v_oscillating_0_to_A0_fast:	equ v_oscillating_table+$30
;v_oscillating_0_to_E0:		equ v_oscillating_table+$34
;v_oscillating_table_end:	equ __rs
; Synchronized animation counters: 0 = logspikes (unused), 1 = rings, 2 = unused, 3 = scattered rings

v_syncani_0_time:		rs.b 1				; $FFFFFEA0 ; synchronised sprite animation 0 - time until next frame
v_syncani_0_frame:		rs.b 1				; $FFFFFEA1 ; synchronised sprite animation 0 - current frame
v_syncani_1_time:		rs.b 1				; $FFFFFEA2 ; synchronised sprite animation 1 - time until next frame
v_syncani_1_frame:		rs.b 1				; $FFFFFEA3 ; synchronised sprite animation 1 - current frame
v_syncani_2_time:		rs.b 1				; $FFFFFEA4 ; synchronised sprite animation 2 - time until next frame
v_syncani_2_frame:		rs.b 1				; $FFFFFEA5 ; synchronised sprite animation 2 - current frame
v_syncani_3_time:		rs.b 1				; $FFFFFEA6 ; synchronised sprite animation 3 - time until next frame
v_syncani_3_frame:		rs.b 1				; $FFFFFEA7 ; synchronised sprite animation 3 - current frame
v_syncani_3_accumulator:	rs.w 1				; $FFFFFEA8 ; synchronised sprite animation 3 - v_syncani_3_time added to this value every frame
				rs.b 6				; $FFFFFEA9-$FFFFFEAF ; unused, but cleared once
				rsblockend	synctables
				
				rs.b $10			; $FFFFFEB0-$FFFFFEBF ; unused				

				rsblock tails_speeds		; required for teleport swap table
v_tails_max_speed:			rs.w 1			; $FFFFFEC0 ; Tails' maximum speed
v_tails_acceleration:		rs.w 1				; $FFFFFEC2 ; Tails' acceleration
v_tails_deceleration:		rs.w 1				; $FFFFFEC4 ; Tails' deceleration	
				ramblocksize	tails_speeds	
				rsblockend		tails_speeds

; Variables for the second player in 2P mode				
v_lives_p2:					rs.b 1		; $FFFFFEC6
v_ring_reward_p2:			rs.b 1			; $FFFFFEC7
f_hud_lives_update_p2:		rs.b 1				; $FFFFFEC8
v_hud_rings_update_p2:		rs.b 1				; $FFFFFEC9
f_hud_time_update_p2:		rs.b 1				; $FFFFFECA
f_hud_score_update_p2:		rs.b 1				; $FFFFFECB ; written to once, but never read
f_time_over_p2:				rs.b 1			; $FFFFFECC
							rs.b 3	; $FFFFFECD-$FFFFFECF ; unused
v_rings_p2:					rs.w 1		; $FFFFFED0
v_time_p2:					rs.l 1		; $FFFFFED2 ; time
v_time_min_p2:				equ __rs-3		; $FFFFFED3 ; time - minutes
v_time_sec_p2:				equ __rs-2		; $FFFFFED4 ; time - seconds
v_time_frames_p2:			equ __rs-1		; $FFFFFED5 ; time - frames
v_score_p2:					rs.l 1		; $FFFFFED6		
							rs.b 6	; $FFFFFEDA-$FFFFFEDF ; seems unused	

; Lamppost store for player 2 in 2P mode				
v_last_lamppost_p2:				rs.b 1		; $FFFFFEE0
v_last_lamppost_p2_lampcopy:	rs.b 1				; $FFFFFEE1
v_x_pos_p2_lampcopy:			rs.w 1			; $FFFFFEE2
v_y_pos_p2_lampcopy:			rs.w 1			; $FFFFFEE4
v_rings_p2_lampcopy:			rs.w 1			; $FFFFFEE6
v_time_p2_lampcopy:				rs.l 1		; $FFFFFEE8
v_ost_tile_p2_lampcopy:			rs.w 1			; $FFFFFEEC
v_ost_top_solid_bit_p2_lampcopy:	rs.w 1			; $FFFFFEEE

; Additional 2P mode variables
v_rings_collected_p1:		rs.w 1				; $FFFFFEF0 ; number of rings collected by player 1 during an act in two player mode
v_rings_collected_p2:		rs.w 1				; $FFFFFEF2 ; same as above, but for player 2
v_monitors_broken_p1:		rs.w 1				; $FFFFFEF4 ; number of monitors broken by player 1 during an act in two player mode
v_monitors_broken_p2:		rs.w 1				; $FFFFFEF6 ; same as above, but for player 2
v_loser_time_left:			rs.w 1			; $FFFFFEF8 ; high byte is seconds, low byte is frames						
							rs.b $16 ; $FFFFFEFA-$FFFFFF0F ; unused
v_results_screen_2p:		rs.w 1				; $FFFFFF10 ; 0 = act, 1 = zone, 2 = game, 3 = SS, 4 = SS all			
							rs.b $E	; $FFFFFF12-$FFFFFF1F ; unused	

				rsblock two_player_results_data	; $18 (24) bytes, 6 bytes for each zone
v_ehz_results_2p:			rs.b 6			; $FFFFFF20
v_mcz_results_2p:			rs.b 6			; $FFFFFF26
v_cnz_results_2p:			rs.b 6			; $FFFFFF2C
v_ss_results_2p:			rs.b 6			; $FFFFFF32
				rsblockend two_player_results_data	
				
v_ss_total_won:				rs.w 1			; $FFFFFF38 ; high byte is player 1, low byte is player 2					
							rs.b 6	; $FFFFFF3A-$FFFFFF3F ; unused
v_perfect_rings_left:		rs.w 1				; $FFFFFF40 ; remaining number of rings in a level
f_ss_perfect:				rs.w 1			; $FFFFFF42 ; flag set if all rings in a special stage are collected
							rs.b 8	; $FFFFFF44-$FFFFFF4B ; unused
v_credits_num:			rs.w 1				; $FFFFFF4C ; current frame of the credits sequence
f_slot_use:					equ v_credits_num ; $FFFFFF4C ; flag indicating a CNZ slot machine is in use

; CNZ slot machine variables; $12 values
; The CNZ cage object writes v_slot_routine and reads v_slot_reward via 
; absolute addressing, but the rest of the variables are only ever accessed via indirect 
; displacement relative to slot_machine_vars. The below macro generates both the
; absolute equates and the displacement constants.

slotvar:	macro	absolute,offset,num
	\offset:		equ	__rs-slot_machine_vars	; make constant for address register indirect
	\absolute:		rs.\0 \num			; generate a global variable name and advance RS counter
	endm
		
	ramblock	slot_machine_vars
	v_slot_machine_vars:		equ __rs
	slotvar.b	v_slot_routine,slot_primary_routine,1	; $FFFFFF4E, 0 ; current routine of the slot machine psuedoobject
	slotvar.b	v_slot_timer,slot_timer,1		; $FFFFFF4F, 1

				rs.b 1				; $FFFFFF50 ; only ever cleared, never used

	slotvar.b	v_slot_index,slot_index,1		; $FFFFFF51, 3	
	slotvar.w  	v_slot_reward,slot_targs,1		; $FFFFFF52, 4	; used to store the target faces, and to pass the reward back to the cage object
	slot_targ1:		equ	slot_targs		; $FFFFFF52, 4
	slot_targ23:	equ	slot_targs+1			; $FFFFFF53, 5
	
	slot_data:	equ __rs-slot_machine_vars		; $FFFFFF54, 6
	
	slotvar.w	v_slot1_pos,slot1_index,1		; $FFFFFF54, 6
	slot1_offset:	equ slot1_index+1			; $FFFFFF55, 7
	slotvar.b	v_slot1_speed,slot1_speed,1		; $FFFFFF56, 8
	slotvar.b	v_slot1_rout,slot1_rout,1		; $FFFFFF57, 9
	
	slotvar.w	v_slot2_pos,slot2_index,1		; $FFFFFF58, $A
	slot2_offset:	equ slot2_index+1			; $FFFFFF59, $B	
	slotvar.b	v_slot2_speed,slot2_speed,1		; $FFFFFF5A, $C
	slotvar.b	v_slot2_rout,slot2_rout,1		; $FFFFFF5B, $D
	
	slotvar.w	v_slot3_pos,slot3_index,1		; $FFFFFF5C, $E
	slot3_offset:	equ slot3_index+1			; $FFFFFF5D, $F	
	slotvar.b	v_slot3_speed,slot3_speed,1		; $FFFFFF5E, $10	
	slotvar.b	v_slot3_rout,slot3_rout,1		; $FFFFFF5F, $11
	
	slot_offset:	equ slot1_offset-slot1_index		; $1
	slot_speed:		equ	slot1_speed-slot1_index	; $2
	slot_subroutine:	equ slot1_rout-slot1_index	; $3
	ramblocksize	slot_machine_vars

								rs.b $10 ; $FFFFFF60-$FFFFFF6F ; seems unused		
v_player_mode:					rs.w 1		; $FFFFFF70 ; current player mode; 0 = Sonic and Tails, 1 = Sonic, 2 = Tails
v_player_option:				rs.w 1		; $FFFFFF72 ; player mode option selected in options menu;  0 = Sonic and Tails, 1 = Sonic, 2 = Tails
f_two_player_monitors:			rs.w 1			; $FFFFFF74 ; flag for monitor contents in 2P mode; 0 = all items, 1 = teleport only 
								rs.b $A ; $FFFFFF76-$FFFFFF7F ; seems unused	
v_levelselect_hold_delay:		rs.w 1			; $FFFFFF80
v_level_select_zone:			rs.w 1			; $FFFFFF82 ;  currently selected zone in level select
v_sound_test_sound:				rs.w 1		; $FFFFFF84 ; current sound test selection
v_title_screen_option:			rs.b 1			; $FFFFFF86 ; selected option on the title screen (0 = 1P, 1 = 2P, 2 = Options Menu)
								rs.b 1 ; $FFFFFF87 ; unused
v_zone_2p:						rs.w 1	; $FFFFFF88 ; high byte is current zone number, low byte is current act number ; read as a byte if we only want the zone
v_act_2p:						equ __rs-1 ; $FFFFFF89 ; read if we only want the act number
f_two_player_mode_copy:			rs.w 1			; $FFFFFF8A ; second flag set to indicate two player mode; read twice in Special Stage
v_options_menu_box:				rs.b 1		; $FFFFFF8C ; currently selected box in options menu
								rs.b 1 ; $FFFFFF8D ; unused
v_total_bonus_countdown:		rs.w 1			; $FFFFFF8E
v_level_music:					rs.w 1		; $FFFFFF90
v_bonus_count_3:				rs.w 1		; $FFFFFF92
v_casinobmb_snd_delay:				equ v_bonus_count_3 ; $FFFFFF92 ; delay until 
								rs.b 4 ; $FFFFFF94-$FFFFFF97 ; unused
v_game_over_2p:					rs.w 1		; $FFFFFF98
								rs.b 6 ; $FFFFFF9A-$FFFFFF9F ; unused					
v_ss_2p_ring_buffer:			rs.w 6			; $FFFFFFA0
								rs.b 4 ; $FFFFFFAC-$FFFFFFAF ; unused
f_got_emerald:					rs.b 1		; $FFFFFFB0 ; flag set on Chaos Emerald get
v_emeralds:						rs.b 1	; $FFFFFFB1 ; number of Chaos Emeralds held by player
v_emerald_list:					rs.l 2		; $FFFFFFB2 ; which individual Emeralds the player has, 1 byte per emerald. Technically only 7 bytes long, but an 8th is also cleared		
								rs.b 6 ; $FFFFFFBA-$FFFFFFBF ; unused			
v_score_next_life:				rs.l 1		; $FFFFFFC0 ; points required for next extra life
v_score_next_life_p2:			rs.l 1			; $FFFFFFC4 ; same as above, but for second player in 2P mode
f_has_signpost:					rs.w 1		; $FFFFFFC8 ; flag set if level has a signpost, 0 otherwise (boss, SCZ, WFZ, DEZ)	
v_signpost_prev_frame:			rs.b 1			; $FFFFFFCA
								rs.b 1 ; $FFFFFFCB ; unused
v_boundary_top_next_debug:			rs.w 1		; $FFFFFFCC
v_boundary_bottom_next_debug:		rs.w 1			; $FFFFFFCE
f_levelselect_cheat:			rs.l 1			; $FFFFFFD0 ; flag set when level select cheat has been entered
f_slowmotion_cheat:				equ __rs-3	; $FFFFFFD1 ; flag set when slow motion & frame advance cheat has been entered
f_debug_cheat:					equ __rs-2	; $FFFFFFD2 ; flag set when debug and night mode cheat has been entered
f_s1_credits_cheat:				equ __rs-1	; $FFFFFFD3 ; unused Sonic 1 leftover; used by the hidden Japanese credits in that game
	
v_correct_cheat_entries:		rs.w 1			; $FFFFFFD4
v_correct_cheat_entries_2:		rs.w 1			; $FFFFFFD6 ; for 14 continues or 7 emeralds codes	

f_two_player:			rs.w 1				; $FFFFFFD8 ; flag for two-player mode (0 for main game)
v_unknown_titlescrn:		rs.w 1				; $FFFFFFDA ; cleared once on title screen, never used again

; These four variables seem to have been used for debugging the CNZ bumper physics.
v_cnz_bumper_debug1:			rs.b 1			; $FFFFFFDC ; written to near loc_175EA, never read from
v_cnz_bumper_debug2:			rs.b 1			; $FFFFFFDD ; written to near loc_175EA, never read from
v_cnz_bumper_debug3:			rs.b 1			; $FFFFFFDE ; written to near loc_175EA, never read from
v_cnz_bumper_debug4:			rs.b 1			; $FFFFFFDF ; written to near loc_175EA, never read from

v_soundqueue:		rs.b 5					; $FFFFFFE0 ; 68k side sound queue; passed to Z80 during VBlank
	music_0:		equ 0				; $FFFFFFE0
	sfx_0:			equ 1				; $FFFFFFE1
	sfx_1:			equ 2				; $FFFFFFE2
	sfx_2:			equ 3				; $FFFFFFE3 ; unused, since nothing ever gets written to it
	music_1:		equ 4				; $FFFFFFE4

					rs.b $B			; $FFFFFFE5-$FFFFFFEF ; unused

f_demo_mode:			rs.w 1				; $FFFFFFF0 ; 1 if a demo is playing
v_demo_num:				rs.w 1			; $FFFFFFF2 ;  which demo will play next
v_s1_ending_demo_num:		rs.w 1				; $FFFFFFF4 ; unused Sonic 1 leftover; zone for the ending demos
							rs.w 1	; $FFFFFFF6 ; unused
v_console_region:           rs.w 1				; $FFFFFFF8 ; Mega Drive console type - 0 = JP; $80 = US/EU; +0 = NTSC; +$40 = PAL
f_debug_enable:				rs.w 1			; $FFFFFFFA ; flag set if debug mode is enabled for current level
v_checksum_pass:            rs.l 1				; $FFFFFFFC ; set to the text string "init" when checksum is passed

; End of main RAM
; Show RAM usage and stop assembly if it overflows.

ram_used:			equ __rs
ram_final:			equ (ram_used-1)&$FFFF

		if ram_used>0
			inform	3,"RAM usage exceeds maximum by $%h bytes.",ram_used
		else
			inform	0,"0-$%h bytes of RAM used with $%h bytes to spare.",ram_final,$FFFF-ram_final
		endc
		
; ---------------------------------------------------------------------------
		
; SEGA screen object variables:

				rsset ost
						rs.b sizeof_ost	; $FFFFB000 ; unused 
v_ost_sega_screen:		rs.b sizeof_ost			; $FFFFB040 ; SEGA logo
v_ost_sega_hide_tm:		rs.b sizeof_ost			; $FFFFB080 ; object that hides TM symbol on JP consoles

		if __rs > offset(ost_end)
			inform 3, "SEGA screen objects exceed size of OST by $%h bytes.",(__rs-offset(ost_end))
		endc

; ---------------------------------------------------------------------------		

; Title screen variables:
				rsset ost			
				rs.b sizeof_ost			; $FFFFB000 ; unused			
v_title_sonic:	rs.b sizeof_ost					; $FFFFB040
v_title_tails:	rs.b sizeof_ost					; $FFFFB080

v_title_flashing_star:		rs.b sizeof_ost	
v_title_palette_changer_1: 	equ v_title_flashing_star	; $FFFFB0C0

v_title_palette_changer_3: 	rs.b sizeof_ost			; $FFFFB100
v_title_logo_top:			rs.b sizeof_ost		; $FFFFB140
v_title_masking_sprite: 	rs.b sizeof_ost			; $FFFFB180
v_title_sonic_hand:			rs.b sizeof_ost		; $FFFFB1C0
v_title_tails_hand:			rs.b sizeof_ost		; $FFFFB200
v_title_palette_changer_2:		rs.b sizeof_ost		; $FFFFB240

				rs.b sizeof_ost*6		; $FFFFB280-$FFFFB3FF ; unused

v_title_menu:			rs.b sizeof_ost			; $FFFFB400
v_title_falling_star:	rs.b sizeof_ost				; $FFFFB440

		if __rs > offset(ost_end)
			inform 3,"Title screen objects exceed size of OST by $%h bytes.",(__rs-offset(ost_end))
		endc

; ---------------------------------------------------------------------------

; Special Stage variables:	
				rsset RAM_Start			; character art, stage layout, and object location data
v_ss_character_art:		rs.b sizeof_nem_specialsonicandtails ; $FFFF0000 ; $353 art blocks ;  SSRAM_Nem_SpecialSonicAndTails

v_ss_perspective_data:	rs.b $1AFC				; $FFFF6A60 ; SSRAM_Kos_SpecialPerspective
v_ss_level_layout:		rs.b $180			; $FFFF855C ; SSRAM_Nem_SpecialLevelLayout:
						rs.b $9C	; $FFFF86DC-$FFFF8777 ; unused
v_ss_object_locations:	rs.b $1AE0				; $FFFF8778 ; SSRAM_Koz_SpecialObjectLocations:


				rsset	v_ost_all		; Move back to the object RAM
				rs.b sizeof_ost			; $FFFFB000 ; Special Stage Sonic
				rs.b sizeof_ost			; $FFFFB040 ; Special Stage Tails

v_ss_hud:				rs.b sizeof_ost		; $FFFFB080 ; HUD in the special stage
v_ss_start_banner: 		rs.b sizeof_ost			; $FFFFB0C0
v_ss_number_of_rings: 	rs.b sizeof_ost				; $FFFFB100
v_ss_shadow_sonic:	rs.b sizeof_ost				; $FFFFB140
v_ss_shadow_tails:	rs.b sizeof_ost				; $FFFFB180
v_ss_tails_tails:	rs.b sizeof_ost				; $FFFFB1C0

v_ss_dynamic_object_ram:	rs.b sizeof_ost*$18		; $FFFFB200-$FFFFB7FF

	
v_ss_results_1:		rs.b sizeof_ost				; $FFFFB800

				rs.b sizeof_ost*$C		; $FFFFB840-$FFFFBB3F ; unused

v_ss_results_2:	rs.b sizeof_ost					; $FFFFBB40
				
				rs.b sizeof_ost*$51		; $FFFFBB80-$FFFFCFBF ; unused
				
v_ss_dynamic_object_ram_end: equ __rs				; $FFFFCFC0
	ramblocksize	v_ss_dynamic_object_ram
	
		if __rs>offset(ost_end)
			inform 3,"Special stage objects exceed size of OST by $%h bytes.",(__rs-offset(ost_end))
		endc

				rsset ss_shared_ram		; $FFFFD000 ; most SS-specific variables are in this block
v_ss_fg_buffer:				rs.b $700		; $FFFFD000
v_ss_fg_buffer_end:			equ __rs		; $FFFFD700
	sizeof_v_ss_fg_buffer:		equ v_ss_fg_buffer_end-v_ss_fg_buffer ; this constant has to be defined here to allow it to be used in macros
v_ss_hscroll_buffer_2:			rs.b $400		; $FFFFD700

v_ss_track_mappings_bitflags:		rs.l 1			; $FFFFDB00 
v_ss_track_mappings_uncompressed:	rs.l 1			; $FFFFDB04 
v_ss_track_anim:					rs.b 1	; $FFFFDB08
v_ss_track_last_anim_frame:			rs.b 1		; $FFFFDB09
v_ss_current_segment:			rs.b 1			; $FFFFDB0A
v_ss_track_anim_frame:			rs.b 1			; $FFFFDB0B
f_ss_alternate_fg_table:		rs.b 1			; $FFFFDB0C
v_ss_track_drawing_index:		rs.b 1			; $FFFFDB0D
v_ss_track_orientation:			rs.b 1			; $FFFFDB0E
v_ss_alt_hscroll_buffer:		rs.b 1			; $FFFFDB0F
v_ss_track_mapping_frame:		rs.b 1			; $FFFFDB10
v_ss_last_alt_hscroll_buffer:	rs.b 1				; $FFFFDB11
v_ss_new_speed_factor:			rs.l 1			; $FFFFDB12
v_ss_cur_speed_factor:			rs.l 1			; $FFFFDB16

								rs.b 5 ; $FFFFDB1A-$FFFFDB1E ; unused

v_ss_track_duration_timer:		rs.b 1			; $FFFFDB1F

								rs.b 1 ; $FFFFDB20 ; unused

v_ss_player_anim_frame_timer:	rs.b 1				; $FFFFDB21
v_ss_last_segment:				rs.b 1		; $FFFFDB22 
f_ss_started:					rs.b 1		; $FFFFDB23 
	
								rs.b 4 ; $FFFFDB24-$FFFFDB27  ; unused

v_ss_track_last_mappings_copy:	rs.l 1				; $FFFFDB28
v_ss_track_last_mappings:		rs.l 1			; $FFFFDB2C

								rs.b 4 ; $FFFFDB30-$FFFFDB33 ; unused

v_ss_track_last_vscroll:		rs.w 1			; $FFFFDB34

								rs.b 3 ; $FFFFDB36-$FFFFDB38 ; unused

v_ss_track_last_mapping_frame:		rs.b 1			; $FFFFDB39
v_ss_track_mappings_rle:			rs.l 1		; $FFFFDB3A
v_ss_draw_reg_buffer:				rs.w 6		; $FFFFDB3E
v_ss_draw_reg_buffer_end:			equ __rs	; $FFFFDB4A

							rs.b 2	; unused ; $FFFFDB4A-$FFFFDB4B, unused

v_ss_last_segment_2:		rs.b 1				; $FFFFDB4C
f_unused_ss_bomb:			rs.b 1			; $FFFFDB4D ; set by the SS bomb object, never used again

							rs.b $14 ; $FFFFDB4E-$FFFFDB61 ; unused

v_ss_ctrl_record_buffer: 		rs.w $F			; $FFFFDB62
v_ss_last_ctrl_record:			rs.w 1			; $FFFFDB80
v_ss_ctrl_record_buffer_end:	equ __rs			; $FFFFDB82

v_ss_current_perspective:		rs.l 1			; $FFFFDB82
f_ss_chk_rings:					rs.b 1		; $FFFFDB86
f_ss_pause_only:				rs.b 1		; $FFFFDB87
v_ss_current_obj_locations:		rs.l 1			; $FFFFDB88
v_ss_ring_requirement:			rs.w 1			; $FFFFDB8C
v_ss_current_layout:			rs.l 1			; $FFFFDB8E

							rs.b 1	; $FFFFDB92 ; unused

v_ss_2p_bcd_score:			rs.b 1			; $FFFFDB93
					
							rs.b 1	; $FFFFDB94 ; unused

f_ss_no_checkpoint:			rs.b 1			; $FFFFDB95

							rs.b 2	; $FFFFDB96-$FFFFDB97 ; unused

f_ss_checkpoint_rainbow:		rs.b 1			; $FFFFDB98
v_ss_rainbow_palette:			rs.b 1			; $FFFFDB99
v_ss_perfect_rings_left:		rs.w 1			; $FFFFDB9A

							rs.b 2	; $FFFFDB9C-$FFFFDB9D ; unused

v_ss_star_color_1:			rs.b 1			; $FFFFDB9E
v_ss_star_color_2:			rs.b 1			; $FFFFDB9F
f_ss_no_checkpoint_msg:		rs.b 1				; $FFFFDBA0

							rs.b 1	; $FFFFDBA1 ; unused

v_ss_no_ringstogo_lifetime:		rs.w 1			; $FFFFDBA2
v_ss_ringstogo_bcd:				rs.w 1		; $FFFFDBA4
f_ss_hide_ringstogo:			rs.b 1			; $FFFFDBA6
f_ss_trigger_ringstogo:			rs.b 1			; $FFFFDBA7
								rs.b $58 ; $FFFFDBA8-$FFFFDC00 ; unused

		if __rs>offset(ss_shared_ram_end)
			inform 3,"Special Stage variables exceed size of Special Stage shared RAM by $%h bytes.",(__rs-offset(ss_shared_ram_end))
		endc


				rsset	v_hscroll_buffer	; $FFFFE000 ; jump ahead a little
v_ss_hscroll_buffer_1:		rs.b $400			; $FFFFE000
v_ss_hscroll_buffer_1_end:	equ __rs			; $FFFFE400


				rsset	boss_variables		; $FFFFF73A ; a few more variables here for some reason
						rs.b 4		; $FFFFF73A-$FFFFF73D ; unused
v_ss_x_offset:			rs.w 1				; $FFFFF73E
v_ss_y_offset:			rs.w 1				; $FFFFF740
f_ss_swap_positions:	rs.b 1					; $FFFFF742

		if __rs>offset(boss_variables_end)
			inform 3,"Additional Special Stage variables exceed size of boss variables by $%h bytes.",(__rs-offset(boss_variables_end))
		endc


; Continue Screen variables:
				rsset ost
; These two object slots are used by Sonic and Tails
			rs.b sizeof_ost				; $FFFFB000
			rs.b sizeof_ost				; $FFFFB040
v_continue_text:	rs.b sizeof_ost				; $FFFFB080 ; "CONTINUE" on the Continue screen
v_continue_icons:	rs.b sizeof_ost*$D			; $FFFFB0C0-$FFFFB3C0 ; the icons on the Continue screen
		if __rs>offset(ost_end)
			inform 3,"Continue screen objects exceed size of OST by $%h bytes.",(__rs-offset(ost_end))
		endc

    
; 2P VS results screen variables
				rsset	ost
v_vs_results_hud: rs.b	sizeof_ost				; $FFFFB000 ; Blinking text at the bottom of the screeN
		if __rs>offset(ost_end)
			inform 3,"2P VS results screen objects exceed size of OST by $%h bytes.",(__rs-offset(ost_end))
		endc

; Menu screen variables
;				rsset ost
; No objects are loaded in the menu screens
;		if __rs>Object_RAM_End
;		inform 3,"Menu screen objects exceed size of object RAM buffer by $%h bytes.",(__rs-offset(ost_end))
;		endc


; Ending sequence variables
				rsset	ost			; Move back to the object RAM
; These two object slots are presumably used by Sonic and Tails
				rs.b sizeof_ost			; $FFFFB000
				rs.b sizeof_ost			; $FFFFB040

v_ending_tails_tails: 	rs.b sizeof_ost				; $FFFFB080	; Tails' tails on the cut scene
v_ending_palchanger:	rs.b sizeof_ost				; $FFFFB0C0
v_ending_cutscene:		rs.b sizeof_ost			; $FFFFB100 ; the object that manages the cutscene

		if __rs>offset(ost_end)
			inform 3,"Ending sequence objects exceed size of OST by $%h bytes.",(__rs-offset(ost_end))
	    endc
	    
		popo   
