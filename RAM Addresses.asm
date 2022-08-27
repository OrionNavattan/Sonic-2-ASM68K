; ---------------------------------------------------------------------------
; RAM Addresses - Variables (v) and Flags (f)
; ---------------------------------------------------------------------------

		pusho		; save options
		opt	ae+	; enable auto evens

; Major data blocks:
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
                rsblock ss_shared_ram

v_ost_level_only:          equ sizeof_ost*countof_ost_level_only ; $FFFFD000           
v_ss_shared_ram:           equ v_ost_level_only ; $FFFFD000	

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


				rsblockend ss_shared_ram

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

; Copies of the camera position RAM and scroll redraw flags that are copied over during every V-int
v_vint_camera_pos:				rs.l	2	; $FFFFEE60
v_vint_camera_pos_bg:			rs.l	2	; $FFFFEE68
v_vint_camera_pos_bg2:			rs.l	2	; $FFFFEE70
v_vint_camera_pos_bg3:			rs.l	2	; $FFFFEE78

v_vint_camera_pos_p2:			rs.l	8	; $FFFFEE80

v_vint_fg_redraw_direction: 		rs.w	1	; $FFFFEEA0 
v_vint_bg1_redraw_direction:		rs.w	1	; $FFFFEEA2
v_vint_bg2_redraw_direction:		rs.w	1	; $FFFFEEA4
v_vint_bg3_redraw_direction:		rs.w	1	; $FFFFEEA6

v_vint_fg_redraw_direction_p2:		rs.w	1	; $FFFFEEA8
v_vint_bg1_redraw_direction_p2:		rs.w	1	; $FFFFEEAA
v_vint_bg2_redraw_direction_p2:		rs.w	1	; $FFFFEEAC
v_vint_bg3_redraw_direction_p2:		rs.w	1	; $FFFFEEAE

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