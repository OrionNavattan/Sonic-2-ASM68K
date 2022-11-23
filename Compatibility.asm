; ---------------------------------------------------------------------------
; Compatibility with Sonic 2 AS
; A few are commented out due to conflicts
; ---------------------------------------------------------------------------

; Constants
id: 			equ	ost_id
render_flags: 	equ	ost_render
art_tile:		equ	ost_tile
mappings:		equ	ost_mappings
x_pos:			equ	ost_x_pos
x_sub:			equ	ost_x_sub
y_pos:			equ	ost_y_pos
y_sub:			equ	ost_y_sub
x_vel:			equ	ost_x_vel
y_vel:			equ	ost_y_vel
inertia:		equ	ost_inertia
y_radius:		equ	ost_height
x_radius:		equ	ost_width
priority:		equ	ost_priority
width_pixels:	equ	ost_displaywidth
mapping_frame:	equ	ost_frame
anim_frame:		equ	ost_anim_frame
anim:			equ	ost_anim
prev_anim:		equ	ost_prev_anim
anim_frame_duration:	equ ost_anim_time 
collision_flags:		equ ost_col_type 
collision_property:		equ ost_col_property
status:					equ	ost_status
respawn_index:			equ ost_respawn
routine:				equ ost_primary_routine
routine_secondary:		equ	ost_secondary_routine
angle:					equ	ost_angle
 
subtype:			equ ost_subtype
flip_angle:			equ ost_flip_angl
air_left:			equ ost_air_left
flip_turned:		equ ost_flop_turned
obj_control:		equ ost_obj_control
status_secondary:	equ ost_status_secondary
flips_remaining:	equ ost_flips_remaining
flip_speed:			equ ost_flip_speed
move_lock:			equ ost_lock_time
invulnerable_time:	equ ost_flash_time
invincibility_time:	equ ost_invincible_time
speedshoes_time:	equ ost_speedshoe_time
next_tilt:			equ ost_angle_right
tilt:				equ ost_angle_left
stick_to_convex:	equ ost_sticktoconvex
spindash_flag:		equ ost_spindash_flag
pinball_mode:		equ ost_pinball_mode
spindash_counter:	equ ost_spindash_counter
restart_countdown:	equ ost_restart_time
jumping:			equ ost_sonic_jump
interact:			equ ost_interact
top_solid_bit:		equ ost_top_solid_bit
lrb_solid_bit:		equ ost_lrb_solid_bit
y_pixel:			equ ost_y_screen
x_pixel:			equ ost_x_screen
parent:				equ ost_parent1
button_up:			equ bitUp
button_down:		equ bitDn
button_left:		equ bitL
button_right:		equ bitR
button_B:			equ bitB
button_C:			equ bitC
button_A:			equ bitA
button_start:		equ bitStart
button_up_mask:		equ btnUp
button_down_mask:	equ btnDn
button_left_mask:	equ btnL
button_right_mask:	equ btnR
button_B_mask:		equ btnB
button_C_mask:		equ btnC
button_A_mask:		equ btnA
button_start_mask:	equ btnStart
object_size			equ sizeof_ost
next_object			equ sizeof_ost

next_subspr:			equ	ost_next_subsprite
mainspr_mapframe:		equ ost_mainspr_frame
mainspr_childsprites:	equ	ost_mainspr_childsprites
sub2_x_pos:				equ	ost_subspr2_x_pos		
sub2_y_pos:				equ ost_subspr2_y_pos
mainspr_height:			equ ost_mainspr_height
sub2_mapframe:			equ ost_subspr2_mapframe
sub3_x_pos:				equ ost_subspr3_x_pos
sub3_y_pos:				equ ost_subspr3_y_pos
sub3_mapframe:			equ ost_subspr3_frame
sub4_x_pos:				equ ost_subspr4_x_pos
sub4_y_pos:				equ ost_subspr4_y_pos
sub4_mapframe:			equ ost_subspr4_frame
sub5_x_pos:				equ ost_subspr5_x_pos
sub5_y_pos:				equ ost_subspr5_y_pos
sub5_mapframe:			equ ost_subspr5_frame
sub6_x_pos:				equ ost_subspr6_x_pos
sub6_y_pos:				equ ost_subspr6_y_pos
sub6_mapframe:			equ ost_subspr6_frame
sub7_x_pos:				equ ost_subspr7_x_pos
sub7_y_pos:				equ ost_subspr7_y_pos
sub7_mapframe:			equ ost_subspr7_frame
sub8_x_pos:				equ ost_subspr8_x_pos
sub8_y_pos:				equ ost_subspr8_y_pos
sub8_mapframe:			equ ost_subspr8_frame
sub9_x_pos:				equ ost_subspr9_x_pos
sub9_y_pos:				equ ost_subspr9_y_pos
sub9_mapframe:			equ ost_subspr9_frame


; ---------------------------------------------------------------------------

; Variables/RAM Addresses
Chunk_Table:			equ v_128x128_tiles
Level_Layout:			equ v_level_layout
Block_Table:			equ v_16x16_tiles
TempArray_LayerDef:		equ	v_bgscroll_buffer
Decomp_Buffer:			equ	v_nem_gfx_buffer
Sprite_Table_Input:		equ	v_sprite_queue

Object_RAM:				equ v_ost_all
Reserved_Object_RAM:	equ v_ost_reserved
MainCharacter:			equ v_ost_player
Sidekick:				equ v_ost_sidekick
;TitleCard:				equ	v_ost_titlecard
TitleCard_ZoneName:		equ v_ost_titlecard_zonename
GameOver_GameText:		equ	v_ost_gameover_gametext
TimeOver_TimeText:		equ	v_ost_timeover_timetext
TitleCard_Zone:			equ	v_ost_titlecard_zone
GameOver_OverText:		equ v_ost_gameover_overtext
TimeOver_OverText:		equ	v_ost_timeover_overtext
TitleCard_ActNumber:	equ	v_ost_titlecard_actnumber
TitleCard_Background:	equ	v_ost_titlecard_background
TitleCard_Bottom:		equ	v_ost_titlecard_bottom
TitleCard_Left:			equ	v_ost_titlecard_left
CPZPylon:				equ	v_ost_cpzpylon
WaterSurface1:			equ	v_ost_watersurface1
v_ost_oil:					equ	v_ost_oil
WaterSurface2:			equ	v_ost_watersurface2
Dynamic_Object_RAM:		equ	v_ost_dynamic

SS_Shared_RAM:			equ ss_shared_ram

LevelOnly_Object_RAM:		equ	v_ost_level_only
Tails_Tails:				equ v_ost_lo_tails_tails
;SuperSonicStars:			equ	v_ost_lo_supersonicstars
Sonic_BreathingBubbles:		equ	v_ost_lo_sonic_breathingbubbles
Tails_BreathingBubbles:		equ	v_ost_lo_tails_breathingbubbles
Sonic_Dust:					equ	v_ost_lo_sonic_dust
Tails_Dust:					equ	v_ost_lo_tails_dust
Sonic_Shield:				equ	v_ost_lo_sonic_shield
Tails_Shield:				equ	v_ost_lo_tails_shield
Sonic_InvincibilityStars:	equ	v_ost_lo_sonic_invincibilitystars
Tails_InvincibilityStars:	equ	v_ost_lo_tails_invincibilitystars

Primary_Collision:			equ	v_primary_collision
Secondary_Collision:		equ	v_secondary_collision
VDP_Command_Buffer:			equ	v_vdp_command_buffer
VDP_Command_Buffer_Slot:	equ	v_vdp_command_buffer_slot
Sprite_Table_2:				equ	v_sprite_queue_2	
Horiz_Scroll_Buf:			equ v_hscroll_buffer
Sonic_Stat_Record_Buf:		equ	v_sonic_stat_tracker
Sonic_Pos_Record_Buf:		equ v_sonic_pos_tracker
Tails_Pos_Record_Buf:		equ	v_tails_pos_tracker
CNZ_saucer_data:			equ	v_cnz_saucer_data
Ring_Positions:				equ	v_ring_positions

Camera_X_pos:		equ v_camera_x_pos
Camera_Y_pos:		equ v_camera_y_pos
Camera_BG_X_pos:	equ v_bg1_x_pos
Camera_BG_Y_pos:	equ v_bg1_y_pos
Camera_BG2_X_pos:	equ v_bg2_x_pos
Camera_BG2_Y_pos:	equ v_bg2_y_pos
Camera_BG3_X_pos:	equ v_bg3_x_pos
Camera_BG3_Y_pos:	equ v_bg3_y_pos

Horiz_block_crossed_flag:		equ v_fg_x_redraw_flag
Verti_block_crossed_flag:		equ v_fg_y_redraw_flag
Horiz_block_crossed_flag_BG:	equ v_bg1_x_redraw_flag
Verti_block_crossed_flag_BG:	equ v_bg1_y_redraw_flag
Horiz_block_crossed_flag_BG2:	equ v_bg2_x_redraw_flag
Horiz_block_crossed_flag_BG3	equ	v_bg3_x_redraw_flag

Horiz_block_crossed_flag_P2:	equ	v_fg_x_redraw_flag_p2
Verti_block_crossed_flag_P2:	equ	v_fg_y_redraw_flag_p2

Scroll_flags:			equ v_fg_redraw_direction
Scroll_flags_BG:		equ v_bg1_redraw_direction
Scroll_flags_BG2:		equ v_bg2_redraw_direction
Scroll_flags_BG3:		equ v_bg3_redraw_direction

Scroll_flags_P2:		equ	v_fg_redraw_direction_p2
Scroll_flags_BG_P2:		equ	v_bg1_redraw_direction_p2
Scroll_flags_BG2_P2:	equ	v_bg2_redraw_direction_p2
Scroll_flags_BG3_P2:	equ	v_bg3_redraw_direction_p2

Camera_RAM_copy:		equ	v_camera_pos_copy
Camera_BG_copy:			equ	v_camera_pos_bg_copy
Camera_BG2_copy:		equ	v_camera_pos_bg2_copy
Camera_BG3_copy:		equ	v_camera_pos_bg3_copy

Camera_P2_copy:			equ	v_camera_pos_p2_copy

Scroll_flags_copy:			equ	v_fg_redraw_direction_copy
Scroll_flags_BG_copy:		equ	v_bg1_redraw_direction_copy
Scroll_flags_BG2_copy:		equ	v_bg2_redraw_direction_copy
Scroll_flags_BG3_copy:		equ	v_bg3_redraw_direction_copy

Scroll_flags_copy_P2:			equ	v_fg_redraw_direction_p2_copy
Scroll_flags_BG_copy_P2:		equ	v_bg1_redraw_direction_p2_copy
Scroll_flags_BG2_copy_P2:		equ	v_bg2_redraw_direction_p2_copy
Scroll_flags_BG3_copy_P2:		equ	v_bg3_redraw_direction_p2_copy

Camera_X_pos_diff:		equ v_camera_x_diff
Camera_Y_pos_diff:		equ v_camera_y_diff

Camera_BG_X_pos_diff:	equ	v_bg_x_pos_diff
Camera_BG_Y_pos_diff:	equ	v_bg_y_pos_diff

Camera_X_pos_diff_P2:	equ	v_camera_x_pos_diff_p2
Camera_Y_pos_diff_P2:	equ	v_camera_y_pos_diff_p2

Screen_Shaking_Flag_HTZ:	equ	f_screen_shake_htz
Screen_Shaking_Flag:		equ	f_screen_shake
Scroll_lock:				equ	f_disable_horiz_scroll
Scroll_lock_P2:				equ	f_disable_horiz_scroll_p2

Camera_Max_Y_pos:		equ v_boundary_bottom_next
Camera_Min_X_pos:		equ v_boundary_left_next
Camera_Max_X_pos:		equ v_boundary_right_next
Camera_Min_Y_pos:		equ v_boundary_top_next
Camera_Max_Y_pos_now:	equ v_boundary_bottom

Horiz_scroll_delay_val:	equ	v_hscroll_delay_val
Sonic_Pos_Record_Index:	equ	v_sonic_pos_tracker_num

Horiz_scroll_delay_val_P2:	equ	v_hscroll_delay_val_p2
Tails_Pos_Record_Index:		equ	v_tails_pos_tracker_num

Camera_Y_pos_bias:			equ v_camera_y_shift
Camera_Y_pos_bias_P2:		equ	v_camera_y_shift_p2
Deform_lock:				equ f_disable_scrolling
Camera_Max_Y_Pos_Changing:	equ f_boundary_bottom_change
Dynamic_Resize_Routine:		equ v_dle_routine

Camera_BG_X_offset:		equ	v_camera_x_pos_offset
Camera_BG_Y_offset:		equ	v_camera_y_pos_offset
HTZ_Terrain_Delay:		equ	v_htz_terrain_delay
HTZ_Terrain_Direction:	equ	v_htz_terrain_direction

Vscroll_Factor_P2_HInt:	equ	v_hblank_fg_y_pos_vsram_p2
Camera_X_pos_copy:		equ	v_camera_x_pos_copy
Camera_Y_pos_copy:		equ	v_camera_y_pos_copy

Tails_Min_X_pos:	equ	v_boundary_left_next_p2
Tails_Max_X_pos:	equ	v_boundary_right_next_p2
Tails_Min_Y_pos:	equ	v_boundary_top_next_p2
Tails_Max_Y_pos:	equ	v_boundary_bottom_next_p2

Block_cache:			equ v_block_cache
Ring_consumption_table:	equ	v_ring_consumption_table

Underwater_target_palette:			equ v_pal_water_next
Underwater_target_palette_line2:	equ v_pal_water_next+sizeof_pal
Underwater_target_palette_line3:	equ v_pal_water_next+(sizeof_pal*2)
Underwater_target_palette_line4:	equ v_pal_water_next+(sizeof_pal*3)

Underwater_palette:			equ v_pal_water
Underwater_palette_line2:	equ v_pal_water_line2
Underwater_palette_line3:	equ v_pal_water_line3
Underwater_palette_line4:	equ v_pal_water_line4

Game_Mode:		equ v_gamemode

Ctrl_1_Logical:			equ v_joypad_hold
Ctrl_1_Held_Logical:	equ v_joypad_hold
Ctrl_1_Press_Logical:	equ v_joypad_press
Ctrl_1:				equ v_joypad_hold_actual
Ctrl_1_Held:		equ v_joypad_hold_actual
Ctrl_1_Press:		equ v_joypad_press_actual
Ctrl_2:				equ v_joypad2_hold_actual
Ctrl_2_Held:		equ v_joypad2_hold_actual
Ctrl_2_Press:		equ v_joypad2_press_actual

VDP_Reg1_val:		equ v_vdp_mode_buffer
Demo_Time_left:		equ v_countdown
Vscroll_Factor:		equ v_y_pos_vsram
Vscroll_Factor_FG:	equ v_fg_y_pos_vsram
Vscroll_Factor_BG:	equ v_bg_y_pos_vsram

Vscroll_Factor_P2_FG:	equ	v_fg_y_pos_vsram_p2
Vscroll_Factor_P2_BG:	equ	v_bg_y_pos_vsram_p2

Teleport_timer:			equ	v_teleport_timer
Teleport_flag:			equ	f_teleport_flag
Hint_counter_reserve:	equ	v_vdp_hint_counter

Palette_fade_range:	equ v_palfade_start
Palette_fade_start:	equ v_palfade_start
Palette_fade_length:	equ v_palfade_size
VIntSubE_RunCount:	equ v_vblank_0e_counter
Vint_routine:		equ v_vblank_routine
Sprite_count:		equ v_spritecount
PalCycle_Frame:		equ v_palcycle_num
PalCycle_Timer:		equ v_palcycle_time
RNG_seed:			equ v_random
Game_paused:		equ f_pause
DMA_data_thunk:		equ v_vdp_dma_buffer

Hint_flag:			equ f_hblank
Water_Level_1:		equ v_water_height_actual
Water_Level_2:		equ v_water_height_normal
Water_Level_3:		equ v_water_height_next
Water_on:			equ v_water_direction
Water_routine:		equ v_water_routine
Water_fullscreen_flag:	equ f_water_pal_full
Do_Updates_in_H_int:	equ f_hblank_run_snd

PalCycle_Frame_CNZ:		equ	v_palcycle_num_cnz
PalCycle_Frame2:		equ	v_palcycle_num2
PalCycle_Frame3:		equ	v_palcycle_num3
PalCycle_Frame2_CNZ:	equ	v_palcycle_num2_cnz

Palette_frame:			equ	v_palette_frame
Palette_timer:			equ	v_palette_timer
Super_Sonic_palette:	equ	v_super_sonic_palette

DEZ_Eggman:				equ	v_dez_eggman
DEZ_Shake_Timer:		equ	v_dez_shake_timer
WFZ_LevEvent_Subrout:	equ	v_wfz_dle_subrout
SegaScr_PalDone_Flag:	equ	f_segascr_paldone
Credits_Trigger:		equ	f_credits_trigger
Ending_PalCycle_flag:	equ	f_ending_palcycle

SegaScr_VInt_Subrout:	equ	v_segascr_vblank_subrout
Ending_VInt_Subrout:	equ	v_ending_vint_subrout
WFZ_BG_Y_Speed:			equ	v_wfz_bg_y_speed

PalCycle_Timer2:	equ	v_palcycle_time2
v_palcycle_time3:	equ	v_palcycle_time3

Ctrl_2_Logical:				equ	v_joypad2_hold
Ctrl_2_Held_Logical:		equ	v_joypad2_hold
Ctrl_2_Press_Logical:		equ	v_joypad2_press
Sonic_Look_delay_counter	equ	v_sonic_look_delay_counter
Tails_Look_delay_counter:	equ	v_tails_look_delay_counter
Super_Sonic_frame_count:	equ	v_super_sonic_frame_count
Camera_ARZ_BG_X_pos:		equ	v_camera_arz_bg_x_pos

Plc_Buffer:			equ v_plc_buffer
Plc_Buffer_Reg0:	equ v_nem_mode_ptr
Plc_Buffer_Reg4:	equ v_nem_repeat
Plc_Buffer_Reg8:	equ v_nem_pixel
Plc_Buffer_RegC:	equ v_nem_d2
Plc_Buffer_Reg10:	equ v_nem_header
Plc_Buffer_Reg14:	equ v_nem_shift
Plc_Buffer_Reg18:	equ v_nem_tile_count
Plc_Buffer_Reg1A:	equ v_nem_tile_count_frame

Tails_control_counter:	equ	v_tails_control_counter
Tails_respawn_counter:	equ	v_tails_respawn_counter

Tails_CPU_routine:		equ	v_tails_cpu_routine
Tails_CPU_target_x:		equ	v_tails_cpu_target_x
Tails_CPU_target_y:		equ	v_tails_cpu_target_y
Tails_interact_ID:		equ	v_tails_interact_id
Tails_CPU_jumping:		equ	f_tails_cpu_jumping

Rings_manager_routine:	equ	v_ring_manager_routine
Level_started_flag:		equ	f_level_started

Ring_start_addr:		equ	v_ring_start
Ring_end_addr:			equ	v_ring_end

Ring_start_addr_P2:		equ	v_ring_start_p2
Ring_end_addr_P2:		equ	v_ring_end_p2

CNZ_Bumper_routine:		equ	v_cnz_bumper_routine
CNZ_Bumper_UnkFlag:		equ f_unused_cnz_bumper_flag

CNZ_Visible_bumpers_start:	equ	v_cnz_visible_bumpers_start
CNZ_Visible_bumpers_end:	equ	v_cnz_visible_bumpers_end

CNZ_Visible_bumpers_start_P2:	equ	v_cnz_visible_bumpers_start_p2
CNZ_Visible_bumpers_end_P2:		equ	v_cnz_visible_bumpers_end_p2

Screen_redraw_flag:			equ	f_screen_redraw
CPZ_UnkScroll_Timer:		equ	v_unused_cpz_scroll_timer
WFZ_SCZ_Fire_Toggle:		equ	f_wfz_scz_fire_toggle
Water_flag:					equ	f_water
Demo_button_index_2P:		equ	v_demo_input_counter_p2
Demo_press_counter_2P:		equ	v_demo_input_time_p2
Tornado_Velocity_X:			equ	v_tornado_x_vel
Tornado_Velocity_Y:			equ	v_tornado_y_vel

Boss_spawn_delay:		equ	v_boss_spawn_delay

Boss_CollisionRoutine:	equ	v_boss_collision_routine
Boss_AnimationArray:	equ	v_boss_anin_array
Ending_Routine:			equ	v_ending_routine
Boss_X_pos:				equ	v_boss_x_pos
Boss_Y_pos:				equ	v_boss_y_pos
Boss_X_vel:				equ	v_boss_x_vel
Boss_Y_vel:				equ	v_boss_y_vel
Boss_Countdown:			equ	v_boss_timer

Sonic_top_speed:	equ v_sonic_max_speed
;Sonic_acceleration:	equ v_sonic_acceleration
;Sonic_deceleration:	equ v_sonic_deceleration

Sonic_LastLoadedDPLC:	equ v_sonic_last_frame_id
Primary_Angle:			equ v_angle_right
Secondary_Angle:		equ v_angle_left
Obj_placement_routine:	equ v_opl_routine
Camera_X_pos_last:		equ v_opl_screen_x_pos
Camera_X_pos_last_End:	equ	v_opl_screen_x_pos_end

Obj_load_addr_right:	equ v_opl_ptr_right
Obj_load_addr_left:		equ v_opl_ptr_left
Obj_load_addr_right_P2:		equ v_opl_ptr_right_p2
Obj_load_addr_left_P2:		equ v_opl_ptr_left_p2

Object_RAM_block_indices:		equ	v_opl_ram_block_indices
Player_1_loaded_object_blocks:	equ	v_opl_loaded_object_blocks_p1
Player_2_loaded_object_blocks:	equ	v_opl_loaded_object_blocks_p2

Camera_X_pos_last_P2:	equ	v_opl_screen_x_pos_p2

Obj_respawn_index_P2:	equ	v_respawn_list_p2

Demo_button_index:	equ v_demo_input_counter
Demo_press_counter:	equ v_demo_input_time
PalChangeSpeed:		equ v_palfade_time
Collision_addr:		equ v_collision_index_ptr
Boss_defeated_flag:	equ v_boss_status

Current_Boss_ID:	equ	v_current_boss

MTZ_Platform_Cog_X:			equ	v_mtz_platform_cog_x_pos
MTZCylinder_Angle_Sonic:	equ	v_mtz_cylinder_angle_sonic
MTZCylinder_Angle_Tails:	equ	v_mtz_cylinder_angle_tails

BigRingGraphics:	equ v_giantring_gfx_offset

WindTunnel_flag:			equ f_wind_tunnel_now
WindTunnel_holding_flag:	equ f_wind_tunnel_disable
Control_Locked:				equ f_lock_controls
SpecialStage_flag_2P:		equ	f_unused_ss_flag
Control_Locked_P2:			equ	f_lock_controls_p2
Chain_Bonus_counter:		equ v_enemy_combo

Bonus_Countdown_1:	equ v_bonus_count_1
Bonus_Countdown_2:	equ	v_bonus_count_2
Update_Bonus_score:	equ f_pass_bonus_update

Camera_X_pos_coarse:		equ	v_camera_x_pos_coarse
Camera_X_pos_coarse_P2:		equ	v_camera_x_pos_coarse_p2
Tails_LastLoadedDPLC:		equ	v_tails_last_frame_id
TailsTails_LastLoadedDPLC:	equ	v_tailstails_last_frame_id
ButtonVine_Trigger:			equ	v_button_state

Sprite_Table:		equ v_sprite_buffer
Normal_palette:		equ v_pal_dry
Normal_palette_line2:	equ v_pal_dry_line2
Normal_palette_line3:	equ v_pal_dry_line3
Normal_palette_line4:	equ v_pal_dry_line4
Target_palette:		equ v_pal_dry_next
Target_palette_line2:	equ v_pal_dry_next+sizeof_pal
Target_palette_line3:	equ v_pal_dry_next+(sizeof_pal*2)
Target_palette_line4:	equ v_pal_dry_next+(sizeof_pal*3)

Object_Respawn_Table:	equ v_respawn_list
Obj_respawn_index:	equ v_respawn_list
Obj_respawn_data:	equ	v_respawn_data
System_Stack:		equ v_stack

SS_2p_Flag:			equ	f_ss_2p
Level_Inactive_flag:	equ f_restart
Timer_frames:		equ v_frame_counter
Debug_object:		equ v_debug_item_index
Debug_placement_mode:	equ v_debug_active
Debug_Accel_Timer:	equ v_debug_move_delay
Debug_Speed:		equ v_debug_move_speed
Vint_runcount:		equ v_vblank_counter
Current_ZoneAndAct:	equ v_zone
Current_Zone:		equ v_zone
Current_Act:		equ v_act
Life_count:			equ v_lives
Continue_count:		equ v_continues
Super_Sonic_flag:	equ f_super
Time_Over_flag:		equ f_time_over
Extra_life_flags:	equ v_ring_reward
Update_HUD_lives:	equ f_hud_lives_update
Update_HUD_rings:	equ v_hud_rings_update
Update_HUD_timer:	equ f_hud_time_update
Update_HUD_score:	equ f_hud_score_update
Ring_count:		equ v_rings
Timer:			equ v_time
Timer_minute_word:	equ v_time
Timer_minute:		equ v_time_min
Timer_second:		equ v_time_sec
Timer_centisecond:	equ v_time_frames
Timer_frame:		equ v_time_frames
Score:			equ v_score

Last_star_pole_hit:			equ v_last_lamppost
Saved_Last_star_pole_hit:	equ v_last_lamppost_lampcopy
Saved_x_pos:				equ v_x_pos_lampcopy
Saved_y_pos:				equ v_y_pos_lampcopy
Saved_Ring_count:			equ v_rings_lampcopy
Saved_Timer:				equ v_time_lampcopy
Saved_art_tile:				equ	v_ost_tile_lampcopy
Saved_Solid_bits:			equ	v_ost_top_solid_bit_lampcopy
Saved_Camera_X_pos:			equ v_camera_x_pos_lampcopy
Saved_Camera_Y_pos:			equ v_camera_y_pos_lampcopy
Saved_Camera_BG_X_pos:		equ v_bg1_x_pos_lampcopy
Saved_Camera_BG_Y_pos:		equ v_bg1_y_pos_lampcopy
Saved_Camera_BG2_X_pos:		equ v_bg2_x_pos_lampcopy
Saved_Camera_BG2_Y_pos:		equ v_bg2_y_pos_lampcopy
Saved_Camera_BG3_X_pos:		equ v_bg3_x_pos_lampcopy
Saved_Camera_BG3_Y_pos:		equ v_bg3_y_pos_lampcopy
Saved_Water_Level:			equ v_water_height_normal_lampcopy
Saved_Water_routine:		equ v_water_routine_lampcopy
Saved_Water_move:			equ f_water_pal_full_lampcopy
Saved_Extra_life_flags:		equ v_ring_reward_lampcopy
Saved_Extra_life_flags_2P:	equ v_ring_reward_lampcopy_2p
Saved_Camera_Max_Y_pos:		equ v_boundary_bottom_lampcopy
Saved_Dynamic_Resize_Routine:	equ v_dle_routine_lampcopy

Oscillating_Numbers:	equ v_oscillating_direction
Oscillation_Control:	equ v_oscillating_direction
Oscillating_variables:	equ v_oscillating_table
Oscillating_Data:		equ v_oscillating_table
Logspike_anim_counter:	equ v_syncani_0_time
Logspike_anim_frame:	equ v_syncani_0_frame
Rings_anim_counter:		equ v_syncani_1_time
Rings_anim_frame:		equ v_syncani_1_frame
Unknown_anim_counter:	equ v_syncani_2_time
Unknown_anim_frame:		equ v_syncani_2_frame
Ring_spill_anim_counter:	equ v_syncani_3_time
Ring_spill_anim_frame:		equ v_syncani_3_frame
Ring_spill_anim_accum:		equ v_syncani_3_accumulator


Tails_top_speed:		equ	v_tails_max_speed
;Tails_acceleration:		equ	v_tails_acceleration
;Tails_deceleration:		equ	v_tails_deceleration

Life_count_2P:			equ	v_lives_p2
Extra_life_flags_2P:	equ	v_ring_reward_p2
Update_HUD_lives_2P:	equ	f_hud_lives_update_p2
Update_HUD_rings_2P:	equ	v_hud_rings_update_p2
Update_HUD_timer_2P:	equ	f_hud_time_update_p2
Update_HUD_score_2P:	equ	f_hud_score_update_p2
Time_Over_flag_2P:		equ	f_time_over_p2

Ring_count_2P:			equ	v_rings_p2
Timer_2P:				equ	v_time_p2
Timer_minute_word_2P:	equ	v_time_p2

Timer_minute_2P:		equ	v_time_min_p2
Timer_second_2P:		equ	v_time_sec_p2
Timer_centisecond_2P:	equ	v_time_frames_p2
Timer_frame_2P:			equ	v_time_frames_p2
Score_2P:				equ	v_score_p2

Last_star_pole_hit_2P:			equ	v_last_lamppost_p2
Saved_Last_star_pole_hit_2P:	equ	v_last_lamppost_p2_lampcopy
Saved_x_pos_2P:				equ	v_x_pos_p2_lampcopy
Saved_y_pos_2P:				equ	v_y_pos_p2_lampcopy
Saved_Ring_count_2P:		equ	v_rings_p2_lampcopy
Saved_Timer_2P:				equ	v_time_p2_lampcopy
Saved_art_tile_2P:			equ	v_ost_tile_p2_lampcopy
Saved_Solid_bits_2P:		equ	v_ost_top_solid_bit_p2_lampcopy

Rings_Collected:		equ	v_rings_collected_p1
Rings_Collected_2P:		equ	v_rings_collected_p2
Monitors_Broken:		equ	v_monitors_broken_p1
Monitors_Broken_2P:		equ	v_monitors_broken_p2
Loser_Time_Left:		equ	v_loser_time_left
Results_Screen_2P:		equ	v_results_screen_2p

EHZ_Results_2P:		equ	v_ehz_results_2p
MCZ_Results_2P:		equ	v_mcz_results_2p
CNZ_Results_2P:		equ	v_cnz_results_2p
SS_Results_2P:		equ	v_ss_results_2p

SS_Total_Won:		equ	v_ss_total_won

Perfect_rings_left:	equ	v_perfect_rings_left
Perfect_rings_flag:	equ	f_ss_perfect

CreditsScreenIndex:		equ	v_credits_index
SlotMachineInUse:		equ	f_slot_machine_use
SlotMachineVariables:	equ	v_slot_machine_variables
SlotMachine_Routine:	equ	v_slot_machine_routine
SlotMachine_Reward:		equ	v_slot_machine_reward

Player_mode:		equ	v_player_mode
Player_option:		equ	v_player_option
Two_player_items:	equ	f_two_player_monitors

LevSel_HoldTimer:	equ v_levelselect_hold_delay
Level_select_zone:	equ v_levelselect_item
Sound_test_sound:	equ v_sound_test_sound
Title_screen_option:	equ v_title_screen_option

Current_Zone_2P:		equ	v_zone_2p
Current_Act_2P:			equ	v_act_2p
Two_player_mode_copy:	equ	f_two_player_mode_copy
Options_menu_box:		equ	v_options_menu_box
Total_Bonus_Countdown:	equ	v_total_bonus_countdown
Level_Music:			equ	v_level_music
Bonus_Countdown_3:		equ	v_bonus_count_3
Game_Over_2P:			equ	v_game_over_2p

SS2p_RingBuffer:		equ	v_ss_2p_ring_buffer

Got_Emerald:		equ	f_got_emerald
Emerald_count:		equ v_emeralds
Got_Emeralds_array:	equ v_emerald_list

Next_Extra_life_score:		equ v_score_next_life
Next_Extra_life_score_2P:	equ	v_score_next_life_p2
Level_Has_Signpost:			equ	f_has_signpost
Signpost_prev_frame:		equ	v_signpost_prev_frame

Camera_Min_Y_pos_Debug_Copy:	equ v_boundary_top_debugcopy
Camera_Max_Y_pos_Debug_Copy:	equ v_boundary_bottom_debugcopy

Level_select_flag:	equ f_levelselect_cheat
Slow_motion_flag:	equ f_slowmotion_cheat
Debug_options_flag:	equ f_debug_cheat
S1_hidden_credits_flag:		equ f_s1_credits_cheat
Correct_cheat_entries:		equ v_correct_cheat_entries
Correct_cheat_entries_2:	equ v_correct_cheat_entries_2

Two_player_mode:	equ	f_two_player

unk_FFDA:	equ v_unknown_titlescrn

unk_FFDC:	equ	v_cnz_bumper_debug1
unk_FFDD:	equ	v_cnz_bumper_debug2
unk_FFDE:	equ	v_cnz_bumper_debug3
unk_FFDF:	equ	v_cnz_bumper_debug4	

SoundQueue:	equ v_soundqueue
SoundQueue.Music0: equ	v_soundqueue+music_0
SoundQueue.SFX0: equ	v_soundqueue+sfx_0
SoundQueue.SFX1: equ	v_soundqueue+sfx_1
SoundQueue.SFX2: equ	v_soundqueue+sfx_2
SoundQueue.Music1: equ	v_soundqueue+music_1

Demo_mode_flag:		equ f_demo_mode
Demo_number:		equ v_demo_num
Ending_demo_number:	equ v_s1_ending_demo_num
Graphics_Flags:		equ	v_console_region
Debug_mode_flag:	equ f_debug_enable
Checksum_fourcc:	equ v_checksum_pass

SegaScreenObject:	equ	v_ost_sega_screen
;SegaHideTM:			equ	v_ost_sega_hide_tm

IntroSonic:					equ	v_title_sonic
IntroTails:					equ	v_title_tails
IntroFlashingStar:			equ	v_title_flashing_star
TitleScreenPaletteChanger:	equ	v_title_palette_changer_1
TitleScreenPaletteChanger3:	equ	v_title_palette_changer_3
IntroEmblemTop:				equ	v_title_logo_top
IntroMaskingSprite:			equ	v_title_masking_sprite
IntroSonicHand:				equ	v_title_sonic_hand
IntroTailsHand:				equ	v_title_tails_hand
TitleScreenPaletteChanger2:	equ	v_title_palette_changer_2
TitleScreenMenu:			equ	v_title_menu
IntroFallingStar:			equ	v_title_falling_star


SSRAM_ArtNem_SpecialSonicAndTails:		equ	v_ss_character_art
SSRAM_MiscKoz_SpecialPerspective:		equ	v_ss_perspective_data
SSRAM_MiscNem_SpecialLevelLayout:		equ	v_ss_level_layout
SSRAM_MiscKoz_SpecialObjectLocations:	equ	v_ss_object_locations

SpecialStageHUD:			equ	v_ss_hud
SpecialStageStartBanner:	equ	v_ss_start_banner
SpecialStageNumberOfRings:	equ	v_ss_number_of_rings
SpecialStageShadow_Sonic:	equ	v_ss_shadow_sonic
SpecialStageShadow_Tails:	equ	v_ss_shadow_tails
SpecialStageTails_Tails:	equ	v_ss_tails_tails
SS_Dynamic_Object_RAM:		equ	v_ss_dynamic_object_ram
SpecialStageResults:		equ	v_ss_results_1
SpecialStageResults2:		equ	v_ss_results_2

PNT_Buffer:				equ	v_ss_pnt_buffer
PNT_Buffer_End:			equ	v_ss_pnt_buffer_end
SS_Horiz_Scroll_Buf_2:	equ	v_ss_hscroll_buffer_2

SSTrack_mappings_bitflags:		equ	v_ss_track_mappings_bitflags
SSTrack_mappings_uncompressed:	equ	v_ss_track_mappings_uncompressed
SSTrack_anim:					equ	v_ss_track_anim
SSTrack_last_anim_frame:		equ	v_ss_track_last_anim_frame
SpecialStage_CurrentSegment:	equ	v_ss_current_segment
SSTrack_anim_frame:				equ	v_ss_track_anim_frame
SS_Alternate_PNT:				equ	v_ss_alternate_pnt
SSTrack_drawing_index:			equ	v_ss_track_drawing_index
SSTrack_Orientation:			equ	v_ss_track_orientation
SS_Alternate_HorizScroll_Buf:	equ	v_ss_alt_hscroll_buffer
SSTrack_mapping_frame:			equ	v_ss_track_mapping_frame
SS_Last_Alternate_HorizScroll_Buf:	equ	v_ss_last_alt_hscroll_buffer
SS_New_Speed_Factor:			equ	v_ss_new_speed_factor
SS_Cur_Speed_Factor:			equ	v_ss_cur_speed_factor

SSTrack_duration_timer:			equ	v_ss_track_duration_timer

SS_player_anim_frame_timer:		equ	v_ss_player_anim_frame_timer
SpecialStage_LastSegment:		equ	v_ss_last_segment
SpecialStage_Started:			equ	f_ss_started

SSTrack_last_mappings_copy:		equ	v_ss_track_last_mappings_copy
SSTrack_last_mappings:			equ	v_ss_track_last_mappings

SSTrack_LastVScroll:			equ	v_ss_track_last_vscroll

SSTrack_last_mapping_frame:		equ	v_ss_track_last_mapping_frame
SSTrack_mappings_RLE:			equ	v_ss_track_mappings_rle
SSDrawRegBuffer:				equ	v_ss_draw_reg_buffer
SSDrawRegBuffer_End:				equ	v_ss_draw_reg_buffer_end

SpecialStage_LastSegment2:		equ	v_ss_last_segment_2
SS_unk_DB4D:					equ	f_unknown_ss_bomb

SS_Ctrl_Record_Buf:				equ	v_ss_ctrl_record_buffer
SS_Last_Ctrl_Record:			equ	v_ss_last_ctrl_record
SS_Ctrl_Record_Buf_End:			equ	v_ss_ctrl_record_buffer_end

SS_CurrentPerspective:			equ	v_ss_current_perspective
SS_Check_Rings_flag:			equ	v_ss_chk_rings
SS_Pause_Only_flag:					equ	f_ss_pause_only
SS_CurrentLevelObjectLocations:		equ	v_ss_current_obj_locations
SS_Ring_Requirement:			equ	v_ss_ring_requirement
SS_CurrentLevelLayout:			equ	v_ss_current_layout

SS_2P_BCD_Score:				equ	v_ss_2p_bcd_score

SS_NoCheckpoint_flag:			equ	f_ss_no_checkpoint

SS_Checkpoint_Rainbow_flag:		equ	f_ss_checkpoint_rainbow
SS_Rainbow_palette:				equ	v_ss_rainbow_palette
SS_Perfect_rings_left:			equ	v_ss_perfect_rings_left

SS_Star_color_1:			equ	v_ss_star_color_1
SS_Star_color_2:			equ	v_ss_star_color_2
SS_NoCheckpointMsg_flag:	equ	f_ss_no_checkpoint_msg

SS_NoRingsTogoLifetime:		equ	v_ss_no_ringstogo_lifetime
SS_RingsToGoBCD:			equ	v_ss_ringstogo_bcd
SS_HideRingsToGo:			equ	f_ss_hide_ringstogo
SS_TriggerRingsToGo:		equ	f_ss_trigger_ringstogo

SS_Horiz_Scroll_Buf_1:		equ	v_ss_hscroll_buffer_1
SS_Horiz_Scroll_Buf_1_End:	equ	v_ss_hscroll_buffer_1_end

SS_Offset_X:				equ	v_ss_x_offset
SS_Offset_Y:				equ	v_ss_y_offset
SS_Swap_Positions_Flag:		equ	f_ss_swap_positions

;ContinueText:		equ	v_continue_text
ContinueIcons:		equ	v_continue_icons

VSResults_HUD:		equ	v_vs_results_hud

Tails_Tails_Cutscene:	equ	v_ending_tails_tails
EndSeqPaletteChanger:	equ	v_ending_palchanger
;CutScene:				equ	v_ending_cutscene

; ---------------------------------------------------------------------------

; Major subroutines

DelayProgram	equ	WaitForVBlank
WindTunnel		equ	WindTunnels

DrawInitialBG	equ	DrawTilesAtStart

; ---------------------------------------------------------------------------

; Sound Driver Compatibility


zYM2612_A0: 		equ ym_reg_a0
zYM2612_D0:			equ ym_reg_d0
zYM2612_A1: 		equ ym_reg_a1
zYM2612_D1:			equ ym_reg_d1
zBankRegister:		equ z_bank_select
zPSG:				equ	z_psg_input
zROMWindow:			equ z_rom_window


SFXPriorityVal:		equ v_priority
TempoTimeout: 		equ f_tempo_counter
CurrentTempo: 		equ f_current_tempo
StopMusic:			equ f_pause_sound
FadeOutCounter:		equ v_fadeout_counter
FadeOutDelay:		equ v_fadeout_delay
Communication:		equ v_timing
DACUpdating:		equ f_updating_dac
QueueToPlay:		equ z_soundqueue
Queue0:				equ z_queue_0
Queue1:				equ z_queue_1
Queue2:				equ z_queue_2
VoiceTblPtr:		equ v_music_voice_table
FadeInFlag:			equ f_fadein
FadeInDelay:		equ v_fadein_delay
FadeInCounter:		equ v_fadein_counter
;1upPlaying:			equ f_has_backup
TempoMod:			equ v_tempo_main
TempoTurbo:			equ v_tempo_speed
SpeedUpFlag:		equ f_speedup
DACEnabled:			equ f_dac_enabled
MusicBankNumber:	equ v_bank_number
IsPalFlag:			equ f_pal



PlaybackControl:	equ ch_flags
VoiceControl:		equ ch_type
TempoDivider:		equ ch_tick
DataPointerLow:		equ ch_data_ptr_low
DataPointerHigh:	equ ch_data_ptr_high
Transpose:			equ ch_transpose
Volume:				equ ch_volume
AMSFMSPan:			equ ch_ams_fms_pan
VoiceIndex:			equ ch_voice
VolFlutter:			equ ch_flutter
StackPointer:		equ ch_stackptr
DurationTimeout:	equ ch_delay
SavedDuration:		equ ch_saved_delay

SavedDAC:			equ ch_sample
FreqLow:			equ ch_freq_low
FreqHigh:			equ ch_freq_high
NoteFillTimeout:	equ ch_gate
NoteFillMaster:		equ ch_savedgate
ModulationPtrLow:	equ ch_vibptr_low
ModulationPtrHigh:	equ ch_vibptr_high
ModulationWait:		equ ch_vib_delay
ModulationSpeed:	equ ch_vib_speed
ModulationDelta:	equ ch_vib_delta
ModulationSteps:	equ ch_vib_steps
ModulationValLow:	equ ch_vib_val_low
ModulationValHigh:	equ ch_vib_val_high
Detune:				equ ch_detune
VolTLMask:			equ ch_vol_tl_mask
PSGNoise:			equ ch_noisemode
VoicePtrLow:		equ ch_voice_ptr_low
VoicePtrHigh:		equ ch_voice_ptr_high
TLPtrLow:			equ ch_tl_ptr_low
TLPtrHigh:			equ ch_tl_ptr_high
LoopCounters:		equ ch_loopcounters

GoSubStack:			equ ch_gosub_stack

zTrack:				equ z_track_vars

zPalUpdTick			equ	v_pal_update_counter
zCurDAC:			equ	v_current_dac	
zCurSong			equ	v_current_song	
zDoSFXFlag:			equ	f_dosfx	
zRingSpeaker:			equ	f_stereo_alt
zGloopFlag:				equ	f_gloop
zSpindashPlayingCounter:		equ	v_spindash_counter
zSpindashExtraFrequencyIndex:	equ v_spindash_freq_index
zSpindashActiveFlag:			equ	f_spindash
zPaused:						equ	f_pause_sound
