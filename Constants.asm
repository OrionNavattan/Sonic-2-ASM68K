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

sizeof_ram:			equ $10000
sizeof_vram:		equ $10000
sizeof_vsram:		equ $50
sizeof_vram_hscroll: equ $380

sizeof_cell:		equ $20					; single 8x8 tile
sizeof_vram_fg:		equ sizeof_vram_row*32			; fg nametable, assuming 64x32 ($1000 bytes)
sizeof_vram_bg:		equ sizeof_vram_row*32			; bg nametable, assuming 64x32 ($1000 bytes)
sizeof_vram_sonic:	equ $17*sizeof_cell			; Sonic's graphics ($2E0 bytes)
sizeof_sprite:		equ 8					; one sprite in sprite table
countof_max_sprites:	equ $50					; max number of sprites that can be displayed
sizeof_vram_sprites:	equ sizeof_sprite*countof_max_sprites	; sprite table ($280 bytes)
sizeof_vram_hscroll:	equ $380
sizeof_vram_hscroll_padded:	equ $400
sizeof_vram_row:	equ 64*2				; single row of fg/bg nametable, assuming 64 wide

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
palfade_all:		equ (countof_color*4)-


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
rings_for_special_stage:	equ 50				; rings needed for special stage giant ring to appear
rings_for_continue:		equ 50				; rings needed for continue in special stage
rings_from_monitor:		equ 10				; rings given by ring monitor
combo_max:			equ 16*2			; value at which v_enemy_combo gives the max points
combo_max_points:		equ 10000/10			; points given after 16 enemies are broken in a row
bonus_points_per_ring:		equ 100/10			; points given per ring at the end of a level
points_for_life:		equ 50000/10			; points needed for extra life (awarded every 50000 points without cap)
countof_emeralds:		equ 6				; number of chaos emeralds