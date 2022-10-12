; ---------------------------------------------------------------------------
; Compatibility with Sonic 2 AS
; ---------------------------------------------------------------------------

id: 			equ	ost_id ; 0
render_flags: 	equ	ost_render ; 1
art_tile:		equ	ost_tile ; 2-3
mappings:		equ	ost_mappings ; 4-7
x_pos:			equ	ost_x_pos ; 8-9
x_sub:			equ	ost_x_sub ; $A-B
y_pos:			equ	ost_y_pos ; $C-D
y_sub:			equ	ost_y_sub ; $E-F
x_vel:			equ	ost_x_vel ; $10-11
y_vel:			equ	ost_y_vel ; $12-13
inertia:		equ	ost_inertia ; $14-15
y_radius:		equ	ost_height	; $16 
x_radius:		equ	ost_width	; $17
priority:		equ	ost_priority ; $18
width_pixels:	equ	ost_displaywidth ; $19
mapping_frame:	equ	ost_frame ; $1A
anim_frame:		equ	ost_anim_frame ; $1B
anim:			equ	ost_anim	; $1C
prev_anim:		equ	ost_prev_anim; $1D
anim_frame_duration:	equ ost_anim_time ; $1E
collision_flags:		equ ost_col_type ; $20
collision_property:		equ ost_col_property ; $21
status:					equ	ost_status ; $22
respawn_index			equ ost_respawn ; $23
routine:				equ ost_primary_routine  ; $24
routine_secondary:		equ	ost_secondary_routine ; $25
angle:					equ	ost_angle ; $26
 
subtype:		equ ost_subtype ; $28
flip_angle:		equ ost_flip_angle ; 27
air_left:		equ ost_air_left ; $28
flip_turned:	equ ost_flop_turned ; $29
obj_control:		equ ost_obj_control ; $2A
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
button_up:		equ bitUp
button_down:		equ bitDn
button_left:		equ bitL
button_right:		equ bitR
button_B:		equ bitB
button_C:		equ bitC
button_A:		equ bitA
button_start:		equ bitStart
button_up_mask:		equ btnUp
button_down_mask:	equ btnDn
button_left_mask:	equ btnL
button_right_mask:	equ btnR
button_B_mask:		equ btnB
button_C_mask:		equ btnC
button_A_mask:		equ btnA
button_start_mask:	equ btnStart
object_size		equ sizeof_ost
next_object		equ sizeof_ost

Chunk_Table:		equ v_128x128_tiles
Level_Layout:		equ v_level_layout
Block_Table:		equ v_16x16_tiles
Object_RAM:		equ v_ost_all
MainCharacter:		equ v_ost_player
Horiz_Scroll_Buf:	equ v_hscroll_buffer
Sonic_Pos_Record_Buf:	equ v_sonic_pos_tracker
Camera_X_pos:		equ v_camera_x_pos
Camera_Y_pos:		equ v_camera_y_pos
Camera_BG_X_pos:	equ v_bg1_x_pos
Camera_BG_Y_pos:	equ v_bg1_y_pos
Camera_BG2_X_pos:	equ v_bg2_x_pos
Camera_BG2_Y_pos:	equ v_bg2_y_pos
Camera_BG3_X_pos:	equ v_bg3_x_pos
Camera_BG3_Y_pos:	equ v_bg3_y_pos
Horiz_block_crossed_flag:	equ v_fg_x_redraw_flag
Verti_block_crossed_flag:	equ v_fg_y_redraw_flag
Horiz_block_crossed_flag_BG:	equ v_bg1_x_redraw_flag
Verti_block_crossed_flag_BG:	equ v_bg1_y_redraw_flag
Horiz_block_crossed_flag_BG2:	equ v_bg2_x_redraw_flag
Scroll_flags:		equ v_fg_redraw_direction
Scroll_flags_BG:	equ v_bg1_redraw_direction
Scroll_flags_BG2:	equ v_bg2_redraw_direction
Scroll_flags_BG3:	equ v_bg3_redraw_direction
Camera_X_pos_diff:	equ v_camera_x_diff
Camera_Y_pos_diff:	equ v_camera_y_diff
Camera_Max_Y_pos:	equ v_boundary_bottom_next
Camera_Min_X_pos:	equ v_boundary_left_next
Camera_Max_X_pos:	equ v_boundary_right_next
Camera_Min_Y_pos:	equ v_boundary_top_next
Camera_Max_Y_pos_now:	equ v_boundary_bottom
Sonic_Pos_Record_Index:	equ v_sonic_pos_tracker_num
Camera_Y_pos_bias:	equ v_camera_y_shift
Deform_lock:		equ f_disable_scrolling
Camera_Max_Y_Pos_Changing:	equ f_boundary_bottom_change
Dynamic_Resize_Routine:	equ v_dle_routine
Underwater_target_palette:	equ v_pal_water_next
Underwater_target_palette_line2:	equ v_pal_water_next+sizeof_pal
Underwater_target_palette_line3:	equ v_pal_water_next+(sizeof_pal*2)
Underwater_target_palette_line4:	equ v_pal_water_next+(sizeof_pal*3)
Underwater_palette:	equ v_pal_water
Underwater_palette_line2:	equ v_pal_water_line2
Underwater_palette_line3:	equ v_pal_water_line3
Underwater_palette_line4:	equ v_pal_water_line4
Game_Mode:		equ v_gamemode
Ctrl_1_Logical:		equ v_joypad_hold
Ctrl_1_Held_Logical:	equ v_joypad_hold
Ctrl_1_Press_Logical:	equ v_joypad_press
Ctrl_1:			equ v_joypad_hold_actual
Ctrl_1_Held:		equ v_joypad_hold_actual
Ctrl_1_Press:		equ v_joypad_press_actual
Ctrl_2:			equ v_joypad2_hold_actual
Ctrl_2_Held:		equ v_joypad2_hold_actual
Ctrl_2_Press:		equ v_joypad2_press_actual
VDP_Reg1_val:		equ v_vdp_mode_buffer
Demo_Time_left:		equ v_countdown
Vscroll_Factor:		equ v_fg_y_pos_vsram
Vscroll_Factor_FG:	equ v_fg_y_pos_vsram
Vscroll_Factor_BG:	equ v_bg_y_pos_vsram
Palette_fade_range:	equ v_palfade_start
Palette_fade_start:	equ v_palfade_start
Palette_fade_length:	equ v_palfade_size
VIntSubE_RunCount:	equ v_vblank_0e_counter
Vint_routine:		equ v_vblank_routine
Sprite_count:		equ v_spritecount
PalCycle_Frame:		equ v_palcycle_num
PalCycle_Timer:		equ v_palcycle_time
RNG_seed:		equ v_random
Game_paused:		equ f_pause
DMA_data_thunk:		equ v_vdp_dma_buffer
Hint_flag:		equ f_hblank_pal_change
Water_Level_1:		equ v_water_height_actual
Water_Level_2:		equ v_water_height_normal
Water_Level_3:		equ v_water_height_next
Water_on:		equ v_water_direction
Water_routine:		equ v_water_routine
Water_fullscreen_flag:	equ f_water_pal_full
Do_Updates_in_H_int:	equ f_hblank_run_snd
Plc_Buffer:		equ v_plc_buffer
Plc_Buffer_Reg0:	equ v_nem_mode_ptr
Plc_Buffer_Reg4:	equ v_nem_repeat
Plc_Buffer_Reg8:	equ v_nem_pixel
Plc_Buffer_RegC:	equ v_nem_d2
Plc_Buffer_Reg10:	equ v_nem_header
Plc_Buffer_Reg14:	equ v_nem_shift
Plc_Buffer_Reg18:	equ v_nem_tile_count
Plc_Buffer_Reg1A:	equ v_nem_tile_count_frame
Sonic_top_speed:	equ v_sonic_max_speed
;Sonic_acceleration:	equ v_sonic_acceleration
;Sonic_deceleration:	equ v_sonic_deceleration
Sonic_LastLoadedDPLC:	equ v_sonic_last_frame_id
Primary_Angle:		equ v_angle_right
Secondary_Angle:	equ v_angle_left
Obj_placement_routine:	equ v_opl_routine
Camera_X_pos_last:	equ v_opl_screen_x_pos
Obj_load_addr_right:	equ v_opl_ptr_right
Obj_load_addr_left:	equ v_opl_ptr_left
Obj_load_addr_2:	equ v_opl_ptr_alt_right
Obj_load_addr_3:	equ v_opl_ptr_alt_left
Demo_button_index:	equ v_demo_input_counter
Demo_press_counter:	equ v_demo_input_time
PalChangeSpeed:		equ v_palfade_time
Collision_addr:		equ v_collision_index_ptr
Boss_defeated_flag:	equ v_boss_status
BigRingGraphics:	equ v_giantring_gfx_offset
WindTunnel_flag:	equ f_water_tunnel_now
WindTunnel_holding_flag:	equ f_water_tunnel_disable
Control_Locked:		equ f_lock_controls
Chain_Bonus_counter:	equ v_enemy_combo
Bonus_Countdown_1:	equ v_time_bonus
Update_Bonus_score:	equ f_pass_bonus_update
ButtonVine_Trigger:	equ v_button_state
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
Obj_respawn_data:	equ v_respawn_list+2
System_Stack:		equ v_stack
Timer_frames:		equ v_frame_counter
Debug_object:		equ v_debug_item_index
Debug_placement_mode:	equ v_debug_active
Debug_Accel_Timer:	equ v_debug_move_delay
Debug_Speed:		equ v_debug_move_speed
Vint_runcount:		equ v_vblank_counter
Current_ZoneAndAct:	equ v_zone
Current_Zone:		equ v_zone
Current_Act:		equ v_act
Life_count:		equ v_lives
Continue_count:		equ v_continues
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
Last_star_pole_hit:	equ v_last_lamppost
Saved_Last_star_pole_hit:	equ v_last_lamppost_lampcopy
Saved_x_pos:		equ v_sonic_x_pos_lampcopy
Saved_y_pos:		equ v_sonic_y_pos_lampcopy
Saved_Ring_count:	equ v_rings_lampcopy
Saved_Timer:		equ v_time_lampcopy
Saved_Camera_X_pos:	equ v_camera_x_pos_lampcopy
Saved_Camera_Y_pos:	equ v_camera_y_pos_lampcopy
Saved_Camera_BG_X_pos:	equ v_bg1_x_pos_lampcopy
Saved_Camera_BG_Y_pos:	equ v_bg1_y_pos_lampcopy
Saved_Camera_BG2_X_pos:	equ v_bg2_x_pos_lampcopy
Saved_Camera_BG2_Y_pos:	equ v_bg2_y_pos_lampcopy
Saved_Camera_BG3_X_pos:	equ v_bg3_x_pos_lampcopy
Saved_Camera_BG3_Y_pos:	equ v_bg3_y_pos_lampcopy
Saved_Water_Level:	equ v_water_height_normal_lampcopy
Saved_Water_routine:	equ v_water_routine_lampcopy
Saved_Water_move:	equ f_water_pal_full_lampcopy
Saved_Extra_life_flags:	equ v_ring_reward_lampcopy
Saved_Camera_Max_Y_pos:	equ v_boundary_bottom_lampcopy
Saved_Dynamic_Resize_Routine:	equ v_dle_routine_lampcopy
Oscillating_Numbers:	equ v_oscillating_direction
Oscillation_Control:	equ v_oscillating_direction
Oscillating_variables:	equ v_oscillating_table
Oscillating_Data:	equ v_oscillating_table
Logspike_anim_counter:	equ v_syncani_0_time
Logspike_anim_frame:	equ v_syncani_0_frame
Rings_anim_counter:	equ v_syncani_1_time
Rings_anim_frame:	equ v_syncani_1_frame
Unknown_anim_counter:	equ v_syncani_2_time
Unknown_anim_frame:	equ v_syncani_2_frame
Ring_spill_anim_counter:	equ v_syncani_3_time
Ring_spill_anim_frame:	equ v_syncani_3_frame
Ring_spill_anim_accum:	equ v_syncani_3_accumulator
LevSel_HoldTimer:	equ v_levelselect_hold_delay
Level_select_zone:	equ v_levelselect_item
Sound_test_sound:	equ v_levelselect_sound
Emerald_count:		equ v_emeralds
Got_Emeralds_array:	equ v_emerald_list
Next_Extra_life_score:	equ v_score_next_life
Camera_Min_Y_pos_Debug_Copy:	equ v_boundary_top_debugcopy
Camera_Max_Y_pos_Debug_Copy:	equ v_boundary_bottom_debugcopy
Level_select_flag:	equ f_levelselect_cheat
Slow_motion_flag:	equ f_slowmotion_cheat
Debug_options_flag:	equ f_debug_cheat
S1_hidden_credits_flag:	equ f_credits_cheat
Correct_cheat_entries:	equ v_title_d_count
Correct_cheat_entries_2:	equ v_title_c_count
Demo_mode_flag:		equ v_demo_mode
Demo_number:		equ v_demo_num
Ending_demo_number:	equ v_credits_num
Debug_mode_flag:	equ f_debug_enable
Checksum_fourcc:	equ v_checksum_pass



loc_16F16:		equ CheckOffScreen
loc_16F3E:		equ CheckOffScreen_Wide
loc_19DD8:		equ Plat_NoXCheck
PlatformObject_ChkYRange:	equ Plat_NoXCheck_AltY
RideObject_SetRide:	equ Plat_NoCheck
ObjCheckFloorDist:	equ FindFloorObj
ObjCheckRightWallDist:	equ FindWallRightObj
ObjCheckCeilingDist	equ FindCeilingObj
ObjCheckLeftWallDist:	equ FindWallLeftObj
Find_Tile:		equ FindNearestTile
ObjectMoveAndFall:	equ ObjectFall
ObjectMove:		equ SpeedToPos
HurtCharacter:		equ HurtSonic
KillCharacter:		equ KillSonic
SlopedPlatform:		equ SlopeObject
SolidObject_Always:	equ SolidObject_NoRenderChk
SlopedSolid:		equ SolidObject_Heightmap
BreakObjectToPieces:	equ SmashObject
Obj01_Init:		equ Sonic_Main
Obj01_Dead:		equ Sonic_Death
Obj01_Gone:		equ Sonic_ResetLevel
Obj01_MdNormal_Checks:	equ Sonic_Mode_Normal
Obj01_MdAir:		equ Sonic_Mode_Air
AnglePos:		equ Sonic_AnglePos
Sonic_DoLevelCollision:	equ Sonic_JumpCollision
CheckGameOver:		equ GameOver
CalcRoomInFront:	equ Sonic_CalcRoomAhead
CalcRoomOverHead:	equ Sonic_CalcHeadroom
Sonic_CheckFloor:	equ Sonic_FindFloor
CheckFloorDist_Part2:	equ Sonic_FindFloor_Quick
loc_1ECFE:		equ Sonic_SnapAngle
CheckRightCeilingDist:	equ Sonic_FindWallRight
CheckRightWallDist:	equ Sonic_FindWallRight_Quick_UsePos
CheckRightWallDist_Part2:	equ Sonic_FindWallRight_Quick
Sonic_CheckCeiling:	equ Sonic_FindCeiling
CheckCeilingDist_Part2:	equ Sonic_FindCeiling_Quick
CheckLeftCeilingDist:	equ Sonic_FindWallLeft
CheckLeftWallDist:	equ Sonic_FindWallLeft_Quick_UsePos
CheckLeftWallDist_Part2:	equ Sonic_FindWallLeft_Quick


id: 			equ	ost_id ; 0
render_flags: 	equ	ost_render ; 1
art_tile:		equ	ost_tile ; 2-3
mappings:		equ	ost_mappings ; 4-7
x_pos:			equ	ost_x_pos ; 8-9
x_sub:			equ	ost_x_sub ; $A-B
y_pos:			equ	ost_y_pos ; $C-D
y_sub:			equ	ost_y_sub ; $E-F
x_vel:			equ	ost_x_vel ; $10-11
y_vel:			equ	ost_y_vel ; $12-13
inertia:		equ	ost_inertia ; $14-15
y_radius:		equ	ost_height	; $16 
x_radius:		equ	ost_width	; $17
priority:		equ	ost_priority ; $18
width_pixels:	equ	ost_displaywidth ; $19
mapping_frame:	equ	ost_frame ; $1A
anim_frame:		equ	ost_anim_frame ; $1B
anim:			equ	ost_anim	; $1C
prev_anim:		equ	ost_prev_anim; $1D
anim_frame_duration:	equ ost_anim_time ; $1E
collision_flags:		equ ost_col_type ; $20
collision_property:		equ ost_col_property ; $21
status:					equ	ost_status ; $22
respawn_index			equ ost_respawn ; $23
routine:				equ ost_primary_routine  ; $24
routine_secondary:		equ	ost_secondary_routine ; $25
angle:					equ	ost_angle ; $26

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
; Sound Driver Compatibility
; ---------------------------------------------------------------------------

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
FadeOutCounter:		equ v_fadeout_delay
FadeOutDelay:		equ v_fadeout_delay
Communication:		equ v_timing
DACUpdating:		equ f_updating_dac
QueueToPlay:		equ z_soundqueue
Queue0:				equ z_queue_0
Queue1:				equ z_queue_1
Queue2:				equ z_queue_2
VoiceTblPtr:		equ v_music_voice_table
FadeInFlag:			equ f_fadein_flag
FadeInDelay:		equ v_fadein_delay
FadeInCounter:		equ v_fadein_counter
1upPlaying:			equ f_has_backup
TempoMod:			equ v_tempo_main
TempoTurbo:			equ v_tempo_speed
SpeedUpFlag:		equ f_speedup
DACEnabled:			equ f_dac_enabled
MusicBankNumber:	equ v_bank_number
IsPalFlag:			equ f_pal_flag



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
VolTLMask:			equ ch_vol_TL_mask
PSGNoise:			equ ch_noisemode
VoicePtrLow:		equ ch_voice_ptr_low
VoicePtrHigh:		equ ch_voice_ptr_high
TLPtrLow:			equ ch_tl_ptr_low
TLPtrHigh:			equ ch_tl_ptr_high
LoopCounters:		equ ch_loopcounters

GoSubStack:			equ ch_gosub_stack

zTrack:				equ z_track_vars				