; ---------------------------------------------------------------------------
; Global size and count constants
; ---------------------------------------------------------------------------

sizeof_128x128:     equ $80					; size of one 128x128 tile
countof_128x128:    equ $100					; max number of 128x128 tiles
sizeof_128x128_all: equ sizeof_128x128*countof_128x128		; ($8000 bytes)
sizeof_16x16:		equ 16					; size of one 16x16 tile
countof_16x16:		equ $180				; max number of 16x16 tiles
sizeof_16x16_all:   equ sizeof_16x16*countof_16x16		; size of all 16x16 tiles ($C00)
sizeof_ost:		    equ $40				; size of one OST in bytes
countof_ost_reserved:   equ $10					; reserved OSTs
countof_ost_dynamic:    equ $70					; dynamic OSTs, used for level objects
countof_ost:			equ countof_ost_reserved+countof_ost_dynamic ; $80; total OSTs in RAM, excluding level only objects
sizeof_ost_all:		equ sizeof_ost*countof_ost		; size of regular OSTs

countof_ost_dynamic_2P:		equ $28
countof_ost_per_2pblock:	equ $C				; number of OSTs in 2P mode blocks
countof_ost_2p_blocks:		equ 6				; number of 2P mode OST blocks; 3 per player
sizeof_ost_2p_block:	equ	sizeof_ost*countof_ost_per_2pblock ; size of each 2p mode block

countof_ost_level_only: equ $10					; additional reserved object ram for objects attached to players, run only when in level
sizeof_ost_level_only:	equ sizeof_ost*countof_ost_level_only

sizeof_plc:			equ 6				; size of one pattern load cue
countof_plc:		equ $10					; number of slots in the pattern load cue buffer
sizeof_plc_buffer:	equ sizeof_plc*countof_plc		; total size of the PLC buffer, $60 by default

priority_size_bits:	equ 7
sizeof_priority:	equ 1<<priority_size_bits		; $80; size of one priority section in sprite queue
priority_count_bits:	equ 3
countof_priority:		equ 1<<priority_count_bits	; 8; the number of priority sections in sprite queue

sizeof_dma:			equ $E				; size of one DMA command
countof_dma:		equ $12					; number of slots in DMA queue
sizeof_dma_queue:	equ sizeof_dma*countof_dma		; total size of the DMA queue, $FC by default

level_max_width:	equ $80					; doubled from Sonic 1 due to the switch to 128x128 level chunks
level_max_height:	equ $10
sizeof_levelrow:	equ level_max_width*2			; level row, followed by background row
sizeof_level:       equ sizeof_levelrow*level_max_height

screen_width:		equ 320
screen_height:		equ 224
screen_top:			equ 128				; y coordinate of top edge of screen for sprites
screen_left:		equ 128					; x coordinate of left edge of screen for sprites
screen_bottom:		equ screen_top+screen_height
screen_right:		equ screen_left+screen_width

countof_ntsc_fps:	equ 60					; 60 frames per second in NTSC
countof_pal_fps:	equ 50					; 50 frames per second in PAL

; ---------------------------------------------------------------------------
; VRAM constants and regions
; VRAM addresses for individual items are defined in VRAM Addresses.asm
; ---------------------------------------------------------------------------

sizeof_cell:			equ $20				; single 8x8 tile, two pixels per byte
widthof_cell:			equ	8			; width of single tile in pixels

sizeof_vram_row_64:			equ (512/widthof_cell)*2 ; $80,  single row of fg/bg nametable when 64 cells (512 pixels) wide
sizeof_vram_row_128:		equ (1024/widthof_cell)*2	; $100, single row of fg/bg nametable when 128 cells (1024 pixels) wide

sizeof_vram_planetable_64x32:	equ sizeof_vram_row_64*32	; $1000
sizeof_vram_planetable_128x32:	equ sizeof_vram_row_128*32	; $2000
sizeof_vram_planetable_64x64:	equ sizeof_vram_row_64*64	; $2000

; Sprite structure
		rsreset
sprite_y_pos:		rs.w 1					; bits 0-9 = y pos of sprite, 10-15 unused
sprite_size:		rs.b 1					; bits 0-1 = vertical size, 2-3 = horizontal size, 4-7 unused
	sprite_height_1: 	equ 0
	sprite_height_2:	equ 1
	sprite_height_3:	equ 2
	sprite_height_4:	equ 3
	sprite_width_1: 	equ 0
	sprite_width_2:		equ 1
	sprite_width_3:		equ 2
	sprite_width_4:		equ 3
sprite_link:		rs.b 1					; bits 0-6 = id of sprite to draw next, 7 unused
sprite_tile:		rs.w 1					; tile base, palette, flip, and priority
	sprite_priority_bit:	equ $F				; 0 = low priority, 1 = high
	; bits $D-$E = palette ID
	sprite_xflip_bit:	equ $B
	sprite_yflip_bit:	equ $C
	sprite_xflip:	equ 1<<sprite_xflip_bit
	sprite_yflip:	equ 1<<sprite_yflip_bit
sprite_x_pos:		rs.w 1					; bits 0-8 = x pos of sprite
sizeof_sprite:		equ __rs				; 8 bytes; size of one sprite in sprite attribute table

; Sprite priorities
priority_0:		equ 0
priority_1:		equ 1
priority_2:		equ 2
priority_3:		equ 3
priority_4:		equ 4
priority_5:		equ 5
priority_6:		equ 6
priority_7:		equ 7

countof_max_sprites:	equ $50					; max number of sprites that can be displayed at once (80)

vram_start:				equ $0000

vram_sprites:			equ $F800			; sprite attribute table ($280 bytes)
vram_hscroll:			equ $FC00			; horizontal scroll table ($380 bytes); extends until $FF7F
sizeof_vram_sprites:	equ sizeof_sprite*countof_max_sprites	; sprite attribute table ($280 bytes)
sizeof_vram_hscroll:	equ 224*2*2				; $380; 224 lines * 2 bytes per entry * 2 plane nametables
sizeof_vram_hscroll_padded:	equ sizeof_vram_hscroll+$80	; $400

; VRAM regions for main game
; Plane dimensions 64x32
vram_window:		equ $A000				; window nametable - unused
vram_fg:			equ $C000			; foreground nametable ($1000 bytes); extends until $CFFF
vram_bg:			equ $E000			; background nametable ($1000 bytes); extends until $EFFF
vram_fg_2p:			equ $A000			; extends until $AFFF
vram_bg_2p:			equ	$8000			; extends until $8FFF

; VRAM regions for Sega Screen
; Plane dimensions 128x32
vram_sega_fg:			equ $C000			; extends until $DFFF
vram_sega_bg:			equ $A000			; extends until $BFFF

; VRAM regions for Special Stage
; Plane dimensions 128x32
vram_ss_fg1:       			equ $C000		; extends until $DFFF
vram_ss_fg2:			    equ $8000			; extends until $9FFF
vram_ss_bg:					equ $A000	; extends until $BFFF
vram_ss_sprites:			equ $F800		; extends until $FA7F

; VRAM regions for title screen
; Plane dimensions 64x32
vram_title_fg:          	equ $C000			; extends until $CFFF
vram_title_bg:          	equ $E000			; extends until $EFFF

; VRAM regions for ending and credits
; Plane dimensions 64x64
vram_ending_fg:     	      equ $C000				; extends until $DFFF
vram_ending_bg1:    	      equ $E000				; extends until $EFFF (plane size is 64x32)
vram_ending_bg2:	          equ $4000			; extends until $5FFF
;sizeof_vram_ending_pt:        equ sizeof_vram_planetable_64x64			; 64 cells x 64 cells x 2 bytes per cell

; VRAM regions for menu screens
; Plane dimensions 64x32
vram_menu_fg:				equ $C000		; extends until $CFFF
vram_menu_bg:             	equ $E000			; extends until $EFFF

draw_base:		equ vram_fg				; base address for nametables, used by Calc_VRAM_Pos (must be multiple of $4000)
draw_base_2p:	equ vram_fg_2p
draw_fg:		equ $4000+(vram_fg-draw_base)		; VRAM write command + fg nametable address relative to base
draw_bg:		equ $4000+(vram_bg-draw_base)		; VRAM write command + bg nametable address relative to base

; ---------------------------------------------------------------------------
; Color and CRAM constants
; ---------------------------------------------------------------------------

countof_color:		equ 16					; colors per palette line
countof_colour:	equ countof_color				; silly Brits. :P
countof_pal:		equ 4					; total palette lines
sizeof_pal:		equ countof_color*2			; total bytes in 1 palette line (32 bytes)
sizeof_pal_all:		equ sizeof_pal*countof_pal		; bytes in all palette lines (128 bytes)
palfade_line2:		equ sizeof_pal<<8
palfade_line3:		equ (sizeof_pal*2)<<8
palfade_line4:		equ (sizeof_pal*3)<<8
palfade_1:		equ countof_color-1
palfade_2:		equ (countof_color*2)-1
palfade_3:		equ (countof_color*3)-1
palfade_all:		equ (countof_color*4)-1

; Colors
; Also usable as bitmasks to isolate the bits for red, green, and blue.
cBlack:		equ $000					; color black
cWhite:		equ $EEE					; color white
cBlue:		equ $E00					; color blue
cGreen:		equ $0E0					; color green
cRed:		equ $00E					; color red
cYellow:	equ cGreen+cRed					; color yellow
cAqua:		equ cGreen+cBlue				; color aqua
cMagenta:	equ cBlue+cRed					; color magenta

; ---------------------------------------------------------------------------
; Joypad input
; ---------------------------------------------------------------------------

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


; ---------------------------------------------------------------------------
; Game constants
; ---------------------------------------------------------------------------

; Player Modes
sonic_tails:		equ 0
sonic_alone:		equ 1
tails_alone:		equ 2

; Level and zone IDs. Do NOT alter the order here, or zone tables will screw up.
	rsreset
id_EHZ:		rs.b 1						; 0
id_Level1:	rs.b 1						; 1
id_WZ:		rs.b 1						; 2
id_Level3:	rs.b 1						; 3
id_MTZ:		rs.b 1						; 4 - Metropolis Zone Acts 1 & 2
id_MTZ_2:	rs.b 1						; 5 - Metropolis Zone Act 3
id_WFZ:		rs.b 1						; 6
id_HTZ:		rs.b 1						; 7
id_HPZ:		rs.b 1						; 8
id_Level9:	rs.b 1						; 9
id_OOZ:		rs.b 1						; $A
id_MCZ:		rs.b 1						; $B
id_CNZ:		rs.b 1						; $C
id_CPZ:		rs.b 1						; $D
id_DEZ:		rs.b 1						; $E
id_ARZ:		rs.b 1						; $F
id_SCZ:		rs.b 1						; $10

ZoneCount:	equ __rs					; Total number of zone slots, not necessarily playable zones

titlecard_flag_bit: 	equ	7				; flag bit set in v_gamemode to indicate the level hasn't yet started
titlecard_flag:			equ	1<<titlecard_flag_bit


; Act IDs
id_EHZ_act1:	equ (id_EHZ<<8)
id_EHZ_act2:	equ (id_EHZ<<8)+1
id_CPZ_act1:	equ (id_CPZ<<8)
id_CPZ_act2:	equ (id_CPZ<<8)+1
id_ARZ_act1:	equ (id_ARZ<<8)
id_ARZ_act2:	equ (id_ARZ<<8)+1
id_CNZ_act1:	equ (id_CNZ<<8)
id_CNZ_act2:	equ (id_CNZ<<8)+1
id_HTZ_act1:	equ (id_HTZ<<8)
id_HTZ_act2:	equ (id_HTZ<<8)+1
id_MCZ_act1:	equ (id_MCZ<<8)
id_MCZ_act2:	equ (id_MCZ<<8)+1
id_OOZ_act1:	equ (id_OOZ<<8)
id_OOZ_act2:	equ (id_OOZ<<8)+1
id_MTZ_act1:	equ (id_MTZ<<8)
id_MTZ_act2:	equ (id_MTZ<<8)+1
id_MTZ_act3:	equ (id_MTZ_2<<8)
id_SCZ_act1:	equ (id_SCZ<<8)
id_WFZ_act1:	equ (id_WFZ<<8)
id_DEZ_act1:	equ (id_DEZ<<8)

id_WZ_act1:		equ (id_WZ<<8)
id_WZ_act2:		equ (id_WZ<<8)+1
id_HPZ_act1:	equ	(id_HPZ<<8)
id_HPZ_act2:	equ	(id_HPZ<<8)+1

; Player physics
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

sonic_max_speed_super:		equ sonic_max_speed+$400	; super
sonic_acceleration_super:	equ sonic_acceleration*4
sonic_deceleration_super:	equ sonic_deceleration*2

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
shoe_time:		equ 20*60				; time in frames that speed shoes last (20 seconds)
invincible_time:		equ 20*60			; time in frames that invincibility lasts (20 seconds)
flash_time:		equ 2*60				; time in frames that Sonic flashes after being hit (2 seconds)
ring_delay:			equ 30				; time in frames before Sonic is able to collect rings after being hit (0.5 seconds)
lock_time_slope:		equ 30				; time in frames that controls are locked when stuck on a slope (0.5 seconds)
lock_time_bubble:		equ 35				; time in frames that controls are locked after collecting a bubble (0.58 seconds)
lock_time_spring:		equ 15				; time in frames that controls are locked after jumping on a spring (0.25 seconds)
lock_time_slide:		equ 5				; time in frames that controls are locked after leaving an oil slide (0.08 seconds)
air_full:			equ 30				; time in seconds that Sonic can hold his breath
air_ding1:			equ 25
air_ding2:			equ 20
air_ding3:			equ 15
air_alert:			equ 12				; time in seconds remaining when music changes to drowning alert
debug_move_delay:		equ 12				; time in frames between holding the d-pad in debug mode and the object moving
time_warning_2P:	equ 12					; time in second remaining when music changes to countdown alert in 2P mode

; Object physics
bumper_power:			equ $700
spring_power_red:		equ $1000
spring_power_yellow:		equ $A00
debug_move_speed:		equ 15				; initial speed object moves in debug mode when d-pad is held (1px per frame)

; Gameplay values
lives_start:			equ 3				; lives at start of game
rings_for_life:			equ 100				; rings needed for first extra life
rings_for_life2:		equ 200				; rings needed for second extra life
rings_from_monitor:		equ 10				; rings given by ring monitor
combo_max:			equ 16*2			; value at which v_enemy_combo gives the max points
combo_max_points:		equ 10000/10			; points given after 16 enemies are broken in a row
bonus_points_per_ring:		equ 100/10			; points given per ring at the end of a level
points_for_life:		equ 50000/10			; points needed for extra life (awarded every 50000 points without cap)
countof_emeralds:		equ 7				; number of chaos emeralds

; Object position data structure
		rsreset
objpos_x_pos:					rs.b 2		; 0 ; object x-pos
objpos_respawn_flip_y_pos_hi:	rs.b 1				; 2 ; object remember state, x and y flip flags, 2P load dynamic flag, and bits 8-11 of y-pos
	load_dyn_bit: 		equ 4				; if set, this object is always loaded into a regular OST slot, even in 2P mode
objpos_y_pos_lo:				rs.b 1		; 3 ; bits 0-7 of y-pos
objpos_id:						rs.b 1	; 4 ; object id
objpos_subtype:					rs.b 1		; 5 ; object subtype or subobject data index
sizeof_objpos:					equ __rs	; size of one objpos entry

respawn_bit:					equ 7		; bit set in respawn table to indicate this object should remember its state

; Special CNZ bumper data structure
		rsreset
specbump_type:		rs.w 1					; 0 ; type of bumper
specbump_xpos:		rs.w 1					; 2 ; x pos of bumper
specbump_ypos:		rs.w 1					; 4 ; y pos of bumper
sizeof_specbump:	equ __rs				; size of each bumper entry

; After a call to SolidObject, high word of d6 is a bitfield with following definitions
; (low word is identical to definitions for ost_primary_status)
p1_touch_side_bit: 		equ 0
p2_touch_side_bit: 		equ 1
p1_touch_bottom_bit:  	equ 2
p2_touch_bottom_bit:	equ 3
p1_touch_top_bit:   	equ 4
p2_touch_top_bit:   	equ 5

p1_touch_side:      equ 1<<p1_touch_side_bit
p2_touch_side:      equ 1<<p2_touch_side_bit
p1_touch_bottom:    equ 1<<p1_touch_bottom_bit
p2_touch_bottom:    equ 1<<p2_touch_bottom_bit
p1_touch_top:       equ 1<<p1_touch_top_bit
p2_touch_top:       equ 1<<p2_touch_top_bit

; ----------------------------------------------------------------------------
; This macro is used to keep Sonic and Tails' primary routine IDs synchronized,
; as much of the code depends on them being the same.
; ----------------------------------------------------------------------------

CharacterRoutines:	macro	func
		\func	Main					; 0
		\func	Control					; 2
		\func	Hurt					; 4
		\func	Death					; 6
		\func	ResetLevel				; 8
		\func	Respawn					; $A
	if FixBugs
		\func	Drown					; $C
	endc
		endm


CommonRoutineIDs:	macro	routinename
		id_\routinename:	equ	ptr_id
		ptr_id: = ptr_id+ptr_id_inc
		endm

		ptr_id:		= 0
		ptr_id_inc: = 2

		CharacterRoutines	CommonRoutineIDs	; generate routine IDs without character names (used wherever code applies to both characters)


; ----------------------------------------------------------------------------
; This macro is used to keep Sonic and Tails' animation IDs synchronized,
; as much of the code depends on them being the same.

;
; flag1: s = different animation script for Super Sonic; n = Super Sonic
; does not have a pointer for this animation
; flag2: c = common animation to both Sonic and Tails; n = Tails does not
; have a pointer for this animation
; ----------------------------------------------------------------------------

CharacterAnimations:		macro	func
		\func	s,c, 	Walk				; 0
		\func	s,c,	Run				; 1
		\func	 ,c,	Roll1				; 2
		\func	 ,c,	Roll2				; 3
		\func	s,c,	Pushing				; 4
		\func	s,c,	Wait				; 5
		\func	s, ,	BalanceOut1,Balance		; 6
		\func	 ,c,	LookUp				; 7
		\func	s,c,	Duck				; 8
		\func	 ,c,	Spindash			; 9
		\func	 , ,	Blink,Dummy1			; $A
		\func	 , ,	GetUp,Dummy2			; $B
		\func	 , ,	BalanceOut2,Dummy3		; $C
		\func	 ,c,	Stop				; $D
		\func	 ,c,	Grabbed				; $E
		\func	 ,c,	Float				; $F
		\func	 ,c,	Spring				; $10
		\func	 ,c,	Hang1				; $11
		\func	 , ,	Spindash2,Blink			; $12
		\func	 , ,	Spindash3,Blink2		; $13
		\func	 ,c,	Hang2				; $14
		\func	 ,c,	Bubble				; $15
		\func	 ,c,	Burnt				; $16
		\func	 ,c,	Drown				; $17
		\func	 ,c,	Death				; $18
		\func	 ,c,	Hurt				; $19
		\func	 , ,	Hurt,Hurt2			; $1A
		\func	 ,c,	OilSlide			; $1B
		\func	 ,c,	Blank				; $1C
		\func	 , ,	BalanceIn1,Dummy4		; $1D
		\func	 , ,	BalanceIn2,Dummy5		; $1E
		\func	 , ,	Transform,HaulAss		; $1F
		\func	n, ,	Lying,Fly			; $20
		\func	n,n,	LieDown,			; $21
		endm

CommonAnimationIDs:	macro	flag1,flag2,sonic,tails
		if stricmp ("\flag2","c")
		id_Ani_\sonic:	equ	ptr_id			; make ID constant if animation is shared
		endc
		ptr_id: = ptr_id+ptr_id_inc			; increment pointer ID
		endm

		ptr_id:		= 0
		ptr_id_inc: = 1

		CharacterAnimations		CommonAnimationIDs ; generate common ID for animations shared by Sonic and Tails

; ---------------------------------------------------------------------------
; Object variable offsets
; ---------------------------------------------------------------------------
		pusho						; save options
		opt	ae+					; enable auto evens
			rsreset

; Main OST
ost_id:			rs.b 1					;  0 ; universal; object id
ost_render:		rs.b 1					;  1 ; universal; bitfield for x/y flip, display mode; bits defined below
	render_xflip_bit:	equ 0
	render_yflip_bit:	equ 1
	render_rel_bit:		equ 2
	render_bg_bit:		equ 3
	render_useheight_bit:	equ 4
	render_rawmap_bit:		equ 5
	render_subsprites_bit:		equ 6
	render_onscreen_bit:	equ 7
	render_xflip:		equ 1<<render_xflip_bit		; xflip
	render_yflip:		equ 1<<render_yflip_bit		; yflip
	render_rel:			equ 1<<render_rel_bit	; relative screen position - coordinates are based on the level
	render_abs:			equ 0<<render_rel_bit	; absolute screen position - coordinates are based on the screen (e.g. the HUD)
	render_bg:			equ 1<<render_bg_bit	; align to background
	render_useheight:	equ 1<<render_useheight_bit	; use ost_height to decide if object is on screen, otherwise height is assumed to be $20 (used for large objects)
	render_rawmap:		equ 1<<render_rawmap_bit	; sprites use raw mappings - i.e. object consists of a single sprite instead of multipart sprite mappings (e.g. broken block fragments)
	render_subsprites:		equ 1<<render_subsprites_bit ; has child sprites to be rendered
	render_onscreen:	equ 1<<render_onscreen_bit	; object is on screen

ost_tile:		rs.w 1					;  2 ; universal; tile VRAM, palette, priority, and x-flip/y-flip (2 bytes)
	; Low byte and bits 0-2 of high byte are the VRAM address divided by sizeof_cell ($20).
	; Bits 3-7 of upper byte are bitfield as follows. (Palette constants are also used for 16x16 maps).
	tile_xflip_bit:	equ 3
	tile_yflip_bit:	equ 4
	tile_pal12_bit:	equ 5
	tile_pal34_bit:	equ 6
	tile_hi_bit:	equ 7

	; These constants are also used by tilemaps
	tile_xflip:	equ (1<<tile_xflip_bit)<<8		; $800
	tile_yflip:	equ (1<<tile_yflip_bit)<<8		; $1000
	tile_pal1:	equ (0<<tile_xflip_bit)<<8		; 0
	tile_pal2:	equ (1<<tile_pal12_bit)<<8		; $2000
	tile_pal3:	equ (1<<tile_pal34_bit)<<8		; $4000
	tile_pal4:	equ ((1<<tile_pal34_bit)|(1<<tile_pal12_bit))<<8 ; $6000
	tile_hi:	equ (1<<tile_hi_bit)<<8			; $8000

	tile_palette:	equ tile_pal4				; $6000
	tile_settings:	equ	tile_xflip|tile_yflip|tile_palette|tile_hi ; $F800
	tile_vram:		equ (~tile_settings)&$FFFF	; $7FF
	tile_draw:		equ	(~tile_hi)&$FFFF	; $7FFF


ost_mappings:		rs.l 1					;  4 ; universal; mappings address (4 bytes)
ost_x_pos:			rs.l 1				;  8 ; universal; x-axis position (2 bytes)
ost_x_screen:		equ ost_x_pos				;  8 ; x-axis position for screen-fixed items (2 bytes)
ost_x_sub:			equ __rs-2			; $A ; universal; x-axis subpixel position (2 bytes)
ost_y_screen:		equ __rs-2				; $A ; y-axis position for screen-fixed items (2 bytes)
ost_y_pos:			rs.l 1				; $C ; universal; y-axis position (2 bytes)
ost_y_sub:			equ __rs-2			; $E ; universal; y-axis subpixel position (2 bytes)

ost_x_vel:			rs.l 1				;   $10 ; most objects; x-axis velocity (2 bytes)
ost_y_vel:			equ __rs-2			; $12 ; most objects; y-axis velocity (2 bytes)
ost_inertia:		rs.w 1					; $14 ; Sonic/Tails potential speed (2 bytes)
ost_height:			rs.b 1				; $16 ; most objects; height/2
ost_width:			rs.b 1				; $17 ; most objects; width/2
ost_priority:		rs.w 1					; $18 ; universal except multi-sprite objects; sprite stack priority - 0 is highest, 7 is lowest
ost_displaywidth:	equ __rs-1				; $19 ; universal; display width/2
ost_frame:			rs.b 1				; $1A ; universal; current frame displayed
ost_anim_frame:		rs.b 1					; $1B ; most objects; current frame in animation script
ost_anim:			rs.w 1				; $1C ; most objects; current animation
ost_anim_restart:	equ __rs-1				; $1D ; most objects; restart animation flag / next animation number (Sonic)
ost_anim_time:		rs.w 1					; $1E ; most objects; time to next frame (1 byte) / general timer (2 bytes)
ost_anim_time_low:	equ __rs-1				; $1F ; used by some objects as master copy of timer
ost_col_type:		rs.b 1					; $20 ; non-player objects; collision response type - 0 equ none; 1-$3F = enemy; $41-$7F = items; $81-BF = hurts; $C1-$FF = custom
ost_col_property:	rs.b 1					; $21 ; non-player objects;  collision extra property
ost_primary_status:			rs.b 1			; $22 ; most objects; bitfield indicating orientation or mode
	status_xflip_bit:	equ 0
	status_yflip_bit:	equ 1				; only non-player objects
	status_air_bit:		equ 1				; only Sonic and Tails
	status_jump_bit:	equ 2
	status_platform_bit:	equ 3
	status_p1_platform_bit:	equ 3
	status_p2_platform_bit:	equ 4
	status_rolljump_bit:	equ 4
	status_pushing_bit:		equ 5
	status_p1_pushing_bit:		equ 5
	status_p2_pushing_bit:		equ 6
	status_underwater_bit:	equ 6
	status_broken_bit:	equ 7
	status_xflip:		equ 1<<status_xflip_bit		; xflip
	status_yflip:		equ 1<<status_yflip_bit		; yflip (objects only)
	status_air:			equ 1<<status_air_bit	; Sonic/Tails is in the air (Sonic/Tails only)
	status_jump:		equ 1<<status_jump_bit		; jumping or rolling (Sonic/Tails only)
	status_platform:	equ 1<<status_platform_bit	; Sonic/Tails is standing on an object (Sonic/Tails only)
	status_p1_platform:		equ 1<<status_p1_platform_bit ; main character is standing on this object (objects only)
	status_p2_platform:		equ 1<<status_p2_platform_bit ; sidekick is standing on this object (objects only)
	status_platform_both:   equ status_p1_platform|status_p2_platform ; both players are standing on this object (objects only)
	status_rolljump:	equ 1<<status_rolljump_bit	; Sonic/Tails is jumping after rolling (Sonic/Tails only)
	status_pushing:		equ 1<<status_pushing_bit	; Sonic/Tails is pushing an object (Sonic/Tails only)
	status_p1_pushing:		equ 1<<status_p1_pushing_bit ; player 1 is pushing this (objects only)
	status_p2_pushing:      equ 1<<status_p2_pushing_bit	; player 2 is pushing this (objects only)
	status_pushing_both:    equ status_p1_pushing|status_p2_pushing ; both players are pushing this (objects only)
	status_underwater:	equ 1<<status_underwater_bit	; Sonic/Tails is underwater (Sonic/Tails only)
	status_broken:		equ 1<<status_broken_bit	; object has been broken (enemies/bosses)

ost_respawn:				rs.b 1			; $23 ; non-player objects; respawn list index number
ost_primary_routine:		rs.b 1				; $24 ; most objects; primary routine number
ost_secondary_routine:		rs.b 1				; $25 ; most objects; secondary routine number
;ost_solid:		equ ost_secondary_routine			; $25 ; solid status flag
ost_angle:					rs.w 1		; $26 ; most objects; angle of floor or rotation - 0 = flat; $40 = vertical left; $80 = ceiling; $C0 = vertical right
ost_subtype:				rs.w 1			; $28 ; non-player objects;  object subtype - must go last because some objects use this as a start address for a list (1 byte, but sometimes read as a word)
ost_subdata_ptr:			equ ost_subtype		; $28 ; index to OST data for objects that use the subobject data system
ost_used:		equ __rs-1				; bytes used by regular OST, everything after this is scratch RAM
		popo						; restore options
		inform	0,"0-$%h bytes of OST per object used, leaving $%h bytes of scratch RAM.",__rs-1,sizeof_ost-__rs


; Multi-sprite object data OST offsets
; Note that multisprite objects cannot use a number of ordinary OST slots
next_subspr:	equ 6

			rsset ost_y_pos-1			; $B
ost_mainspr_frame:			rs.b 1			; $B ; current frame of parent sprite
							rs.b 2	; $C-D; unused in this context
ost_mainspr_width:			rs.b 1			; $E ; parent sprite width
ost_mainspr_childsprites:	rs.b 1				; $F ; number of childsprites
ost_subspr2_x_pos:			rs.b 2			; $10 ; in place of ost_x_vel
ost_subspr2_y_pos:			rs.b 2			; $12 ; in place of ost_y_vel
ost_mainspr_height:			rs.b 1			; $14 ; parent sprite width
ost_subspr2_frame:			rs.b 1			; $15
ost_subspr3_x_pos:			rs.b 2			; $16 ; in place of ost_height
ost_subspr3_y_pos:			rs.b 2			; $18 ; in place of ost_priority
							rs.b 1	; $1A ; unused in this context
ost_subspr3_frame:			rs.b 1			; $1B ; in place of ost_anim_frame
ost_subspr4_x_pos:			rs.b 2			; $1C ; in place of ost_anim
ost_subspr4_y_pos:			rs.b 2			; $1E ; in place of ost_anim_time
							rs.b 1	; $20 ; unused in this context
ost_subspr4_frame:			rs.b 1			; $21 ; in place of ost_col_property
ost_subspr5_x_pos:			rs.b 2			; $22 ; in place of ost_status
ost_subspr5_y_pos:			rs.b 2			; $24 ; in place of ost_routine
							rs.b 1	; $26 ; unused in this context
ost_subspr5_frame:			rs.b 1			; $27
ost_subspr6_x_pos:			rs.b 2			; $28 ; in place of ost_subtype
ost_subspr6_y_pos:			rs.b 2			; $2A
							rs.b 1	; $2C ; unused in this context
ost_subspr6_frame:			rs.b 1			; $2D
ost_subspr7_x_pos:			rs.b 2			; $2E
ost_subspr7_y_pos:			rs.b 2			; $30
							rs.b 1	; $32 ; unused in this context
ost_subspr7_frame:			rs.b 1			; $33
ost_subspr8_x_pos:			rs.b 2			; $34
ost_subspr8_y_pos:			rs.b 2			; $36
							rs.b 1	; $38 ; unused in this context
ost_subspr8_frame:			rs.b 1			; $39
ost_subspr9_x_pos:			rs.b 2			; $3A
ost_subspr9_y_pos:			rs.b 2			; $3C
							rs.b 1	; $3E ; unused in this context
ost_subspr9_frame:			rs.b 1			; $3F


; Object variables specific to Sonic & Tails
			rsset $27
ost_flip_angle:				rs.b 1			; $27 ; angle about the x axis (360 degrees = 256) (twist/tumble)
ost_air_left:				rs.b 1			; $28 ; air left while underwater
ost_flip_turned:			rs.b 1			; $29 ; 0 for normal, 1 to invert flipping (it's a 180 degree rotation about the axis of Sonic's spine, so he stays in the same position but looks turned around)
ost_obj_control:			rs.b 1			; $2A ; flags for locking controls and disabling collision
	ctrl_pos_lock_bit:			equ 0
	disable_col_bit:			equ 7
	ctrl_pos_lock:				equ 1<<ctrl_pos_lock_bit ; 1; lock controls, lock player's position & animation
	disable_col:				equ 1<<disable_col_bit ; $80; no collision with objects
ost_secondary_status:		rs.b 1				; $2B ; status flags for powerups and oil slides
	status_shield_bit:		equ	0		; set if character is equipped with a shield
	status_invincible_bit:	equ	1			; set if character is invincible
	status_speedshoes_bit:	equ	2			; set if character has speed shoes
	status_sliding_bit:		equ	7		; set if character is on an oil slide
	status_shield:			equ	1<<status_shield_bit ; 1
	status_invincible:		equ	1<<status_invincible_bit ; 2
	status_speedshoes:		equ	1<<status_speedshoes_bit ; 4
	status_sliding:			equ	1<<status_sliding_bit ; $80
ost_flips_remaining:		rs.b 1				; $2C ; number of flip revolutions remaining
ost_flip_speed:				rs.b 1			; $2D ; number of flip revolutions per frame / 256
ost_lock_time:				rs.w 1			; $2E ; time left for locked d-pad controls (jumping is allowed), e.g. after hitting a spring
ost_flash_time:				rs.w 1			; $30 ; time Sonic/Tails flashes for after getting hit
ost_invincible_time: 		rs.w 1				; $32 ; time left for invincibility
ost_speedshoe_time:			rs.w 1			; $34 ; time left for speed shoes
ost_angle_right:			rs.b 1			; $36 ; angle of floor on Sonic/Tails' right side
ost_angle_left:				rs.b 1			; $37 ; angle of floor on Sonic/Tails' left side
ost_sticktoconvex:			rs.b 1			; $38 ; 1 if Sonic/Tails is stuck to a convex surface. used in Sonic 1 and 3 for rotating discs, unused here
ost_pinball_mode:
ost_spindash_flag:			rs.b 1			; $39 ; 0 for normal, 1 for charging a spindash or forced rolling
ost_pinball_flag:			equ ost_spindash_flag
ost_spindash_counter:						; $3A ;
ost_restart_time:			rs.w 1			; $3A ; time until level restarts
ost_jump:					rs.b 1		; $3C ; 1 if Sonic/Tails is jumping
ost_interact:				rs.b 1			; $3D ; OST index of object player stands on
ost_top_solid_bit:			rs.b 1			; $3E ; the bit to check for top solidity (either $C or $E); i.e., which collison plane to check against
	primary_solid_top_bit:		equ $C
	secondary_solid_top_bit:	equ $E
ost_lrb_solid_bit:			rs.w 1			; $3F ; the bit to check for left/right/bottom solidity (either $D or $F) i.e., which collison plane to check against
	primary_solid_lrb_bit:		equ $D
	secondary_solid_lrb_bit:	equ $F

; Boss object variables
ost_boss_subtype: 		equ $A				;  subtype counter for all bosses except EHZ and CPZ; also determines primary routine
ost_boss_flash_time: 	equ $14					;
ost_boss_wobble:		equ $1A				;
ost_boss_routine:		equ $26				;  in place of ost_angle
ost_boss_defeated:		equ $2C				;
ost_boss_hitcount2:		equ $32				;
ost_boss_hurtplayer:		equ $38				;  flag set by collision response routine when player 1 has just been hurt by a boss


; Special Stage object properties
ost_ss_dplc_timer: 		equ $23				;
ost_ss_x_pos: 			equ $2A				;
ost_ss_x_sub: 			equ $2C				;
ost_ss_y_pos: 			equ $2E				;
ost_ss_y_sub:			equ $30				;
ost_ss_init_flip_timer: equ $32					;
ost_ss_flip_timer: 		equ $33				;
ost_ss_z_pos: 			equ $34				;
ost_ss_hurt_timer: 		equ $36				;
ost_ss_slide_timer: 	equ $37					;
ost_ss_rings_base:		equ $3C				;  ; read as a word
ost_ss_rings_hundreds: 	equ $3C					;  : read as a byte if we only want hundreds
ost_ss_rings_tens: 		equ $3D				;
ost_ss_rings_units: 	equ $3E					;
ost_ss_last_angle_index: equ $3F

; Additional object variables
ost_parent1: 	equ $3E						; address of object that spawned this one
ost_parent2:	equ $2C						; same as above

; ---------------------------------------------------------------------------

; Animation script flags - universal
afEnd:		equ $FF						; return to beginning of animation
afBackFlag:	equ $FE						; go back (specified number) bytes
afChange:	equ $FD						; run specified animation id in next byte
afRoutine:	equ $FC						; increment primary routine counter
afReset:	equ $FB						; reset animation and increment secondary routine counter
af2ndRoutine:	equ $FA						; increment secondary routine counter
afxflip:	equ $20
afyflip:	equ $40

; Animation script flags - player-specific
afWalkRun:	equ $FF						; trigger special handling for walk and run animations
afRoll:		equ $FE						; trigger special handling for Sonic's rolling animations
afPush:		equ $FD						; trigger special handling for pushing animations
afTTRoll:	equ $FC						; trigger special handling for Tails' tails' rolling animations

; 16x16 row/column redraw flags (v_fg_redraw_direction)
redraw_top_bit:		equ 0
redraw_bottom_bit:	equ 1
redraw_left_bit:	equ 2
redraw_right_bit:	equ 3
redraw_topall_bit:	equ 4
redraw_bottomall_bit:	equ 5
redraw_bg2_left_bit:	equ 0					; REV01 only
redraw_bg2_right_bit:	equ 1					; REV01 only
redraw_top:		equ 1<<redraw_top_bit			; 1
redraw_bottom:		equ 1<<redraw_bottom_bit		; 2
redraw_left:		equ 1<<redraw_left_bit			; 4
redraw_right:		equ 1<<redraw_right_bit			; 8
redraw_topall:		equ 1<<redraw_topall_bit		; $10
redraw_bottomall:	equ 1<<redraw_bottomall_bit		; $20

; 16x16 mappings
tilemap_xflip_bit:	equ $B
tilemap_yflip_bit:	equ $C
tilemap_priority_bit:	equ $F

; 128x128 mappings
chunkmap_xflip_bit:	equ $A
chunkmap_yflip_bit:	equ $B
chunkmap_primary_solid_top_bit:	equ $C
chunkmap_primary_solid_lrb_bit:	equ $D
chunkmap_secondary_solid_top_bit:	equ $E
chunkmap_secondary_solid_lrb_bit:	equ $F

chunkmap_xflip:		equ 1<<chunkmap_xflip_bit		; $400
chunkmap_yflip:		equ 1<<chunkmap_yflip_bit		; $800
chunkmap_primary_solid_top:	equ 1<<chunkmap_primary_solid_top_bit ; $1000
chunkmap_primary_solid_lrb:	equ 1<<chunkmap_primary_solid_lrb_bit ; $2000
chunkmap_secondary_solid_top:	equ 1<<chunkmap_secondary_solid_top_bit ; $4000
chunkmap_secondary_solid_lrb:	equ 1<<chunkmap_secondary_solid_lrb_bit ; $8000
chunkmap_primary_solid_all:		equ chunkmap_primary_solid_top+chunkmap_primary_solid_lrb ; $3000
chunkmap_secondary_solid_all:	equ chunkmap_secondary_solid_top+chunkmap_secondary_solid_lrb ; $3000

chunkmap_settings:	equ chunkmap_xflip+chunkmap_yflip+chunkmap_primary_solid_all+chunkmap_secondary_solid_all ; $FC00
