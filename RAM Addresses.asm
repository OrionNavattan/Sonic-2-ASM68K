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

v_ss_shared_ram:           equ v_ost_level_only
v_ss_shared_ram_end:   

v_vdp_dma_buffer:       rs.w    7*$12 ; $FFFFDC00 ; stores 18 ($12) VDP commands to issue the next time ProcessDMAQueue is called
v_vdp_dma_buffer_slot:  rs.l    1 ; stores the address of the next open slot for a queued VDP command

v_sprite_queue_2:       rs.b	$280	; Sprite attribute table buffer for the bottom split screen in 2-player mode
                        rs.b    $80     ; unused, but SAT buffer can spill over into this area when there are too many sprites on-screen
v_horiz_scroll_buffer:  rs.l    224
                        rs.l	16 	; A bug/optimisation in 'Swscrl_CPZ' causes 'Horiz_Scroll_Buf' to overflow into this.
				        rs.b	$40	; unused

v_sonic_stat_tracker:   rs.l    $40

v_sonic_pos_tracker:    rs.l    $40
v_sonic_pos_tracker_end:

v_tails_pos_tracker:    rs.l    $40
v_tails_pos_tracker_end:

v_cnz_saucer_data:      rs.b    $40 ; the number of saucer bumpers in a group which have been destroyed. Used to decide when to give 500 points instead of 10
v_cnz_saucer_data_end:
    
unused_e740:            rs.b    $C0 ; $FFFFE740-$FFFFE7FF ; unused

v_ring_positions:       rs.b    $600
v_ring_positions_end:                 