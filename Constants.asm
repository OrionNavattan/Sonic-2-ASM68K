; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

sizeof_128x128:     equ $80
countof_128x128:    equ $100
sizeof_128x128_all: equ sizeof_128x128*countof_128x128 ; ($8000 bytes)
sizeof_16x16:		equ 8					; size of one 16x16 tile
countof_16x16:		equ $180				; max number of 16x16 tiles
sizeof_16x16_all:   equ sizeof_16x16*countof_16x16 ; size of all 16x16 tiles ($C00)
sizeof_ost:		    equ $40					; size of one OST in bytes
countof_ost:		equ $80					; total OSTs in RAM
countof_ost_reserved:   equ $10             ; reserved OSTs
countof_ost_dynamic:    equ $70             ; dynamic OSTs, used for level objects 
countof_ost_level_only:  equ $10            ; additional reserved object ram for objects attached to players, and for the special stages                  
sizeof_plc:			equ 6						; size of one pattern load cue
sizeof_priority:	equ $80					; size of one priority section in sprite queue

;level_max_width:	equ $40
;level_max_height:	equ 8
;sizeof_levelrow:	equ level_max_width*2			; level row, followed by background row
;sizeof_level:       equ sizeof_levelrow*level_max_height
sizeof_level:       equ $1000

screen_width:		equ 320
screen_height:		equ 224

; ---------------------------------------------------------------------------
; VRAM globals
; ---------------------------------------------------------------------------
sizeof_cell:		equ $20					; single 8x8 tile
sizeof_vram_fg:		equ sizeof_vram_row*32			; fg nametable, assuming 64x32 ($1000 bytes)
sizeof_vram_bg:		equ sizeof_vram_row*32			; bg nametable, assuming 64x32 ($1000 bytes)
;sizeof_vram_sonic:	equ $17*sizeof_cell			; Sonic's graphics ($2E0 bytes)
sizeof_sprite:		equ 8						; one sprite in sprite attribute table
countof_max_sprites:	equ $50					; max number of sprites that can be displayed at once (80)
sizeof_vram_sprites:	equ sizeof_sprite*countof_max_sprites	; sprite table ($280 bytes)
sizeof_vram_hscroll:	equ $380
sizeof_vram_hscroll_padded:	equ $400
sizeof_vram_row:	equ 64*2				; single row of fg/bg nametable, assuming 64 wide
;draw_base:		equ vram_fg				; base address for nametables, used by Calc_VRAM_Pos (must be multiple of $4000)
;draw_fg:		equ $4000+(vram_fg-draw_base)		; VRAM write command + fg nametable address relative to base
;draw_bg:		equ $4000+(vram_bg-draw_base)		; VRAM write command + bg nametable address relative to base

vram_sprites:			equ $F800				; sprite attribute table ($280 bytes)
sizeof_vram_sprites:	equ $280				
vram_hscroll:			equ $FC00				; horizontal scroll table ($380 bytes); extends until $FF7F
sizeof_vram_hscroll:	equ $380				; 224 lines * 2 bytes per entry * 2 plane nametables

; ---------------------------------------------------------------------------
; VRAM regions for main game
; ---------------------------------------------------------------------------
;vram_window:		equ $A000		; window nametable - unused
vram_fg:			equ $C000		; foreground nametable ($1000 bytes); extends until $CFFF
vram_bg:			equ $E000		; background nametable ($1000 bytes); extends until $EFFF
vram_fg_2p:			equ $A000		; extends until $AFFF
vram_bg_2p:			equ	$8000		; extends until $8FFF
sizeof_vram_planetable:	equ $1000			; 64 cells x 32 cells x 2 bytes per cell
;vram_sonic:			equ $F000				; Sonic graphics ($2E0 bytes)
;tile_sonic:			equ vram_sonic/sizeof_cell


; ---------------------------------------------------------------------------
; VRAM regions for Sega Screen
; ---------------------------------------------------------------------------
vram_sega_fg:			equ $C000 ; extends until $DFFF
vram_sega_bg:			equ $A000 ; extends until $BFFF
sizeof_vram_sega_pt:	equ $2000 ; 128 cells x 32 cells x 2 bytes per cell

; ---------------------------------------------------------------------------
; VRAM regions for Special Stage
; ---------------------------------------------------------------------------
vram_ss_fg1:       			equ $C000	; extends until $DFFF
vram_ss_fg2:			    equ $8000	; extends until $9FFF
vram_ss_bg:					equ $A000	; extends until $BFFF
sizeof_vram_ss_pt:			equ $2000	; 128 cells x 32 cells x 2 bytes per cell
vram_ss_sprites:			equ $F800	; extends until $FA7F
sizeof_vram_ss_sprites:		equ $0280	; 640 bytes
vram_ss_hscroll:			equ $FC00	; extends until $FF7F
sizeof_vram_ss_hscroll:		equ $0380	; 224 lines * 2 bytes per entry * 2 plane nametables

; ---------------------------------------------------------------------------
; VRAM regions for title screen
; ---------------------------------------------------------------------------
vram_title_fg:          	equ $C000	; extends until $CFFF
vram_title_bg:          	equ $E000	; extends until $EFFF
sizeof_vram_title_pt:   	equ $1000	; 64 cells x 32 cells x 2 bytes per cell

; ---------------------------------------------------------------------------
; VRAM regions for ending and credits
; ---------------------------------------------------------------------------
vram_ending_fg:     	      equ $C000	; extends until $DFFF
vram_ending_bg1:    	      equ $E000	; extends until $EFFF (plane size is 64x32)
vram_ending_bg2:	          equ $4000	; extends until $5FFF
sizeof_vram_ending_pt:        equ $2000	; 64 cells x 64 cells x 2 bytes per cell

; ---------------------------------------------------------------------------
; VRAM regions for menu screens
; ---------------------------------------------------------------------------
vram_menu_fg:				equ $C000	; Extends until $CFFF
vram_menu_bg:             	equ $E000	; Extends until $EFFF
sizeof_vram_menu_pt:        equ $1000	; 64 cells x 32 cells x 2 bytes per cell

; ---------------------------------------------------------------------------
; Color and CRAM things
; ---------------------------------------------------------------------------

countof_color:		equ 16					; colors per palette line
countof_colour:	equ countof_color		; silly Brits. :P
countof_pal:		equ 4					; total palette lines
sizeof_pal:		equ countof_color*2			; total bytes in 1 palette line (32 bytes)
sizeof_pal_all:		equ sizeof_pal*countof_pal		; bytes in all palette lines (128 bytes)
palfade_line2:		equ sizeof_pal<<8
palfade_line3:		equ (sizeof_pal*2)<<8
palfade_line4:		equ (sizeof_pal*3)<<8
palfade_1:		equ countof_color-1
palfade_2:		equ (countof_color*2)-1
palfade_3:		equ (countof_color*3)-1
palfade_all:		equ (countof_color*4)


; Colors
cBlack:		equ $000					; colour black
cWhite:		equ $EEE					; colour white
cBlue:		equ $E00					; colour blue
cGreen:		equ $0E0					; colour green
cRed:		equ $00E					; colour red
cYellow:	equ cGreen+cRed					; colour yellow
cAqua:		equ cGreen+cBlue				; colour aqua
cMagenta:	equ cBlue+cRed					; colour magenta

; Joypad input
bitStart:	equ 7
bitA:		equ 6
bitC:		equ 5
bitB:		equ 4
bitR:		equ 3
bitL:		equ 2
bitDn:		equ 1
bitUp:		equ 0
btnStart:	equ 1<<bitStart					; Start button	($80)
btnA:		equ 1<<bitA					; A		($40)
btnC:		equ 1<<bitC					; C		($20)
btnB:		equ 1<<bitB					; B		($10)
btnR:		equ 1<<bitR					; Right		($08)
btnL:		equ 1<<bitL					; Left		($04)
btnDn:		equ 1<<bitDn					; Down		($02)
btnUp:		equ 1<<bitUp					; Up		($01)
btnDir:		equ btnL+btnR+btnDn+btnUp			; Any direction	($0F)
btnABC:		equ btnA+btnB+btnC				; A, B or C	($70)


; Sonic physics
sonic_max_speed:		equ $600
sonic_max_speed_roll:		equ $1000			; rolling
sonic_acceleration:		equ $C
sonic_deceleration:		equ $80
sonic_max_speed_water:		equ sonic_max_speed/2		; underwater
sonic_acceleration_water:	equ sonic_acceleration/2
sonic_deceleration_water:	equ sonic_deceleration/2
sonic_max_speed_shoes:		equ sonic_max_speed*2		; with speed shoes
sonic_acceleration_shoes:	equ sonic_acceleration*2
sonic_deceleration_shoes:	equ sonic_deceleration
sonic_min_speed_roll:		equ $80				; speed required to trigger roll
sonic_min_speed_slope:		equ $280			; speed required to overcome gravity on steep slopes
sonic_jump_power:		equ $680			; initial jump power
sonic_jump_power_water:		equ $380			; initial jump power underwater
sonic_jump_release:		equ $400			; jump speed after releasing A/B/C
sonic_jump_release_water:	equ sonic_jump_release/2
sonic_max_speed_surface:	equ $1000			; y speed coming out of water
sonic_buoyancy:			equ $28
sonic_ss_max_speed:		equ $800			; special stage

sonic_width:			equ 18/2			; half width while standing
sonic_height:			equ 38/2			; half height while standing
sonic_width_roll:		equ 14/2			; half width while rolling
sonic_height_roll:		equ 28/2			; half height while rolling
sonic_average_radius:		equ 20/2			; half width/height used for quick collision checks
sonic_width_hitbox:		equ 16/2			; half width of hitbox for object collision
sonic_height_hitbox:		equ 32/2			; half height of hitbox for object collision
sonic_height_hitbox_duck:	equ 20/2			; half height of hitbox for object collision while ducking

camera_y_shift_up:		equ $C8				; v_camera_y_shift when looking up
camera_y_shift_default:		equ $60				; v_camera_y_shift normally
camera_y_shift_down:		equ 8				; v_camera_y_shift when ducking

; Times
sonic_shoe_time:		equ 20*60			; time in frames that speed shoes last (20 seconds)
sonic_invincible_time:		equ 20*60			; time in frames that invincibility lasts (20 seconds)
sonic_flash_time:		equ 2*60			; time in frames that Sonic flashes after being hit (2 seconds)
ring_delay:			equ 30				; time in frames before Sonic is able to collect rings after being hit (0.5 seconds)
sonic_lock_time_slope:		equ 30				; time in frames that controls are locked when stuck on a slope (0.5 seconds)
sonic_lock_time_bubble:		equ 35				; time in frames that controls are locked after collecting a bubble (0.58 seconds)
sonic_lock_time_spring:		equ 15				; time in frames that controls are locked after jumping on a spring (0.25 seconds)
sonic_lock_time_slide:		equ 5				; time in frames that controls are locked after leaving a LZ slide (0.08 seconds)
air_full:			equ 30				; time in seconds that Sonic can hold his breath
air_ding1:			equ 25
air_ding2:			equ 20
air_ding3:			equ 15
air_alert:			equ 12				; time in seconds remaining when music changes to drowning alert
debug_move_delay:		equ 12				; time in frames between holding the d-pad in debug mode and the object moving

; Object physics
bumper_power:			equ $700
spring_power_red:		equ $1000
spring_power_yellow:		equ $A00
debug_move_speed:		equ 15 				; initial speed object moves in debug mode when d-pad is held (1px per frame)

lives_start:			equ 3				; lives at start of game
rings_for_life:			equ 100				; rings needed for first extra life
rings_for_life2:		equ 200				; rings needed for second extra life
rings_from_monitor:		equ 10				; rings given by ring monitor
combo_max:			equ 16*2			; value at which v_enemy_combo gives the max points
combo_max_points:		equ 10000/10			; points given after 16 enemies are broken in a row
bonus_points_per_ring:		equ 100/10			; points given per ring at the end of a level
points_for_life:		equ 50000/10			; points needed for extra life (awarded every 50000 points without cap)
countof_emeralds:		equ 7				; number of chaos emeralds

; ---------------------------------------------------------------------------
; Object status table offsets
; ---------------------------------------------------------------------------
		pusho						; save options
		opt	ae+					; enable auto evens
			rsset 0

; Main OST					
ost_id:			rs.b 1					; 0 ; universal; object id
ost_render:		rs.b 1					; 1 ; universal; bitfield for x/y flip, display mode; bits defined below
	render_xflip_bit:	equ 0
	render_yflip_bit:	equ 1
	render_rel_bit:		equ 2
	render_bg_bit:		equ 3
	render_useheight_bit:	equ 4
	render_rawmap_bit:		equ 5
	render_behind_bit:		equ 6
	render_onscreen_bit:	equ 7
	render_xflip:		equ 1<<render_xflip_bit		; xflip
	render_yflip:		equ 1<<render_yflip_bit		; yflip
	render_rel:			equ 1<<render_rel_bit		; relative screen position - coordinates are based on the level
	render_abs:			equ 0<<render_rel_bit		; absolute screen position - coordinates are based on the screen (e.g. the HUD)
	render_bg:			equ 1<<render_bg_bit		; align to background
	render_useheight:	equ 1<<render_useheight_bit	; use ost_height to decide if object is on screen, otherwise height is assumed to be $20 (used for large objects)
	render_rawmap:		equ 1<<render_rawmap_bit	; sprites use raw mappings - i.e. object consists of a single sprite instead of multipart sprite mappings (e.g. broken block fragments)
	render_behind:		equ 1<<render_behind_bit	; object is behind a loop (Sonic only)
	render_onscreen:	equ 1<<render_onscreen_bit	; object is on screen

ost_tile:		rs.w 1					; 2 ; universal; palette line & VRAM setting (2 bytes)
	tile_xflip:	equ $800
	tile_yflip:	equ $1000
	tile_pal1:	equ 0
	tile_pal2:	equ $2000
	tile_pal3:	equ $4000
	tile_pal4:	equ $6000
	tile_hi:	equ $8000
	tile_xflip_bit:	equ 3
	tile_yflip_bit:	equ 4
	tile_pal12_bit:	equ 5
	tile_pal34_bit:	equ 6
	tile_hi_bit:	equ 7
	
ost_mappings:		rs.l 1					; 4 ; universal; mappings address (4 bytes)
ost_x_screen:								; 8 ; x-axis position for screen-fixed items (2 bytes)
ost_x_pos:			rs.l 1					; 8 ; universal; x-axis position (2 bytes)
ost_x_sub:			equ __rs-2				; $A ; universal; x-axis subpixel position (2 bytes)
ost_y_screen:		equ __rs-2				; $A ; y-axis position for screen-fixed items (2 bytes)
ost_y_pos:			rs.l 1					; $C ; universal; y-axis position (2 bytes)
ost_y_sub:			equ __rs-2				; $E ; universal; y-axis subpixel position (2 bytes)

ost_x_vel:			rs.l 1					; $10 ; most objects; x-axis velocity (2 bytes)
ost_y_vel:			equ __rs-2				; $12 ; most objects; y-axis velocity (2 bytes)
ost_inertia:		rs.w 1					; $14 ; Sonic/Tails potential speed (2 bytes)
ost_height:			rs.b 1					; $16 ; most objects; height/2
ost_width:			rs.b 1					; $17 ; most objects; width/2
ost_priority:		rs.w 1					; $18 ; universal; sprite stack priority - 0 is highest, 7 is lowest
ost_displaywidth:	equ __rs-1				; $19 ; universal; display width/2
ost_frame:			rs.b 1					; $1A ; universal; current frame displayed
ost_anim_frame:		rs.b 1					; $1B ; most objects; current frame in animation script
ost_anim:			rs.w 1					; $1C ; most objects; current animation
ost_anim_restart:	equ __rs-1				; $1D ; most objects; restart animation flag / next animation number (Sonic)
ost_anim_time:		rs.w 1					; $1E ; most objects; time to next frame (1 byte) / general timer (2 bytes)
ost_anim_time_low:	equ __rs-1				; $1F ; used by some objects as master copy of timer
ost_col_type:		rs.b 1					; $20 ; non-player objects; collision response type - 0 equ none; 1-$3F = enemy; $41-$7F = items; $81-BF = hurts; $C1-$FF = custom
ost_col_property:	rs.b 1					; $21 ; non-player objects;  collision extra property
ost_status:			rs.b 1					; $22 ; most objects; bitfield indicating orientation or mode
	status_xflip_bit:	equ 0
	status_yflip_bit:	equ 1	; only non-player objects
	status_air_bit:		equ 1	; only Sonic and Tails
	status_jump_bit:	equ 2
	status_platform_bit:	equ 3
	status_rolljump_bit:	equ 4
	status_pushing_bit:		equ 5
	status_underwater_bit:	equ 6
	status_broken_bit:	equ 7
	status_xflip:		equ 1<<status_xflip_bit		; xflip
	status_yflip:		equ 1<<status_yflip_bit		; yflip (objects only)
	status_air:			equ 1<<status_air_bit		; Sonic/Tails is in the air (Sonic/Tails only)
	status_jump:		equ 1<<status_jump_bit		; jumping or rolling (Sonic/Tails only)
	status_platform:	equ 1<<status_platform_bit	; Sonic/Tails is standing on this (objects) / Sonic/Tails is standing on object (Sonic)
	status_rolljump:	equ 1<<status_rolljump_bit	; Sonic/Tails is jumping after rolling (Sonic only)
	status_pushing:		equ 1<<status_pushing_bit	; Sonic/Tails is pushing this (objects) / Sonic/Tails is pushing an object (Sonic)
	status_underwater:	equ 1<<status_underwater_bit	; Sonic/Tails is underwater (Sonic only)
	status_broken:		equ 1<<status_broken_bit	; object has been broken (enemies/bosses)
ost_respawn:				rs.b 1					; $23 ; non-player objects; respawn list index number
ost_primary_routine:		rs.b 1					; $24 ; most objects; primary routine number
ost_secondary_routine:		rs.b 1					; $25 ; most objects; secondary routine number
;ost_solid:		equ ost_secondary_routine			; $25 ; solid status flag
ost_angle:					rs.w 1					; $26 ; most objects; angle of floor or rotation - 0 = flat; $40 = vertical left; $80 = ceiling; $C0 = vertical right
ost_subtype:				rs.w 1					; $28 ; non-player objects;  object subtype - must go last because some objects use this as a start address for a list (1 byte, but sometimes read as a word)
ost_used:		equ __rs-1				; bytes used by regular OST, everything after this is scratch RAM
		popo						; restore options
		inform	0,"0-$%h bytes of OST per object used, leaving $%h bytes of scratch RAM.",__rs-1,sizeof_ost-__rs



; ---------------------------------------------------------------------------
; Multi-sprite object data OST offsets
; Note that multisprite objects cannot use a number of ordinary OST slots
; ---------------------------------------------------------------------------
ost_next_subsprite:	equ ost_mappings+2 ; 6
			
			rsset ost_y_pos-1 ; $B
ost_mainspr_frame:			rs.b 1		; $B ; current frame of parent sprite
							rs.b 2 		; $C-D; unused in this context
ost_mainspr_width:			rs.b 1		; $E ; parent sprite width
ost_mainspr_childsprites:	rs.b 1		; $F ; number of childsprites
ost_subspr2_x_pos:			rs.b 2		; $10 ; in place of ost_x_vel
ost_subspr2_y_pos:			rs.b 2		; $12 ; in place of ost_y_vel
ost_mainspr_height:			rs.b 1		; $14 ; parent sprite width
ost_subspr2_mapframe:		rs.b 1		; $15
ost_subspr3_x_pos:			rs.b 2		; $16 ; in place of ost_height
ost_subspr3_y_pos:			rs.b 2		; $18 ; in place of priority
							rs.b 1		; $1A ; unused in this context
ost_subspr3_frame:			rs.b 1		; $1B ; in place of ost_anim_frame
ost_subspr4_x_pos:			rs.b 2		; $1C ; in place of ost_anim
ost_subspr4_y_pos:			rs.b 2		; $1E ; in place of ost_anim_time

			rsset ost_col_property 		; $21
ost_subspr4_frame:			rs.b 1		; $21 ; in place of ost_col_property
ost_subspr5_x_pos:			rs.b 2		; $22 ; in place of status
ost_subspr5_y_pos:			rs.b 2		; $24 ; in place of routine
							rs.b 1		; $26 ; unused in this context
ost_subspr5_frame:			rs.b 1		; $27
ost_subspr6_x_pos:			rs.b 2		; $28 ; in place of ost_subtype
ost_subspr6_y_pos:			rs.b 2		; $2A
							rs.b 1		; $2C ; unused in this context
ost_subspr6_frame:			rs.b 1		; $2D
ost_subspr7_x_pos:			rs.b 2		; $2E
ost_subspr7_y_pos:			rs.b 2		; $30
							rs.b 1		; $32 ; unused in this context
ost_subspr7_frame:			rs.b 1		; $33
ost_subspr8_x_pos:			rs.b 2		; $34
ost_subspr8_y_pos:			rs.b 2		; $36
							rs.b 1		; $38 ; unused in this context
ost_subspr8_frame:			rs.b 1		; $39
ost_subspr9_x_pos:			rs.b 2		; $3A
ost_subspr9_y_pos:			rs.b 2		; $3C
							rs.b 1		; $3E ; unused in this context
ost_subspr9_frame:			rs.b 1		; $3F


; ---------------------------------------------------------------------------
; Object variables specific to Sonic & Tails
; ---------------------------------------------------------------------------
			rsset $27
ost_flip_angle:				rs.b 1		; $27 ; angle about the x axis (360 degrees = 256) (twist/tumble)
ost_air_left:				rs.b 1		; $28 ; air left while underwater
ost_flip_turned:			rs.b 1		; $29 ; 0 for normal, 1 to invert flipping (it's a 180 degree rotation about the axis of Sonic's spine, so he stays in the same position but looks turned around)
ost_obj_control:			rs.b 1 		; $2A ; 0 for normal, 1 for hanging or for resting on a flipper, $81 for going through CNZ/OOZ/MTZ tubes or stopped in CNZ cages or stoppers or flying if Tails
ost_status_secondary		rs.b 1		; $2B
ost_flips_remaining			rs.b 1		; $2C ; number of flip revolutions remaining
ost_flip_speed:				rs.b 1		; $2D ; number of flip revolutions per frame / 256
ost_lock_time:				rs.w 1		; $2E ; time left for locked d-pad controls (jumping is allowed), e.g. after hitting a spring
ost_flash_time:				rs.w 1		; $30 ; time Sonic/Tails flashes for after getting hit
ost_invincible_time: 		rs.w 1		; $32 ; time left for invincibility
ost_speedshoe_time:			rs.w 1		; $34 ; time left for speed shoes
ost_angle_right:			rs.b 1		; $36 ; angle of floor on Sonic/Tails' right side
ost_angle_left:				rs.b 1		; $37 ; angle of floor on Sonic/Tails' left side
ost_sticktoconvex:			rs.b 1		; $38 ; 1 if Sonic/Tails is stuck to a convex surface. used in Sonic 1 and 3 for rotating discs, unused here
ost_pinball_mode:
ost_spindash_flag:			rs.b 1		; $39 ; 0 for normal, 1 for charging a spindash or forced rolling
ost_spindash_counter:					; $3A ; 
ost_restart_time:			rs.w 1		; $3A ; time until level restarts
ost_jump:					rs.b 1		; $3C ; 1 if Sonic/Tails is jumping
ost_interact:				rs.b 1		; $3D ; OST index of object Sonic stands on
ost_top_solid_bit:			rs.b 1		; $3E ; the bit to check for top solidity (either $C or $E)
ost_lrb_solid_bit:			rs.w 1		; $3F ; ; the bit to check for left/right/bottom solidity (either $D or $F)


; ---------------------------------------------------------------------------
; Boss object variables
; ---------------------------------------------------------------------------
ost_boss_subtype: 		equ $A
ost_boss_flash_time: 	equ $14
ost_boss_sine_count:	equ $1A
ost_boss_routine		equ $26	; angle
ost_boss_defeated		equ $2C
ost_boss_hitcount2		equ $32
ost_boss_hurt_sonic		equ $38	; flag set by collision response routine when Sonic has just been hurt (by boss?)


; ---------------------------------------------------------------------------
; Special Stage object properties
; ---------------------------------------------------------------------------
ost_ss_dplc_timer: 		equ $23
ost_ss_x_pos: 			equ $2A
ost_ss_x_sub: 			equ $2C
ost_ss_y_pos: 			equ $2E
ost_ss_y_sub:			equ $30
ost_ss_init_flip_timer: equ $32
ost_ss_flip_timer: 		equ $33
ost_ss_z_pos: 			equ $34
ost_ss_hurt_timer: 		equ $36
ost_ss_slide_timer: 	equ $37
ost_ss_parent: 			equ $38
ost_ss_rings_base:		equ $3C	; read as a word
ost_ss_rings_hundreds: 	equ $3C ; read as a byte if we only want hundreds
ost_ss_rings_tens: 		equ $3D
ost_ss_rings_units: 	equ $3E
ost_ss_last_angle_index: equ $3F

; ---------------------------------------------------------------------------
; Additional object variables
; ---------------------------------------------------------------------------
ost_parent1: 	equ $3E ; address of object that spawned this one
ost_parent2:	equ $2C ; same as above
