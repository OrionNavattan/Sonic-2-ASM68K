; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave vine switch
; -------------------------------------------------------------------------------

Map_VineSwitch:	index offset(*)
		ptr	Frame_VSwitch_Idle
		ptr	Frame_VSwitch_Pulled

Frame_VSwitch_Idle:	spritemap
		piece	-8, -$30, 2, 4, 0, 0, 0, 0, 0
		piece	-8, -$10, 2, 4, 0, 0, 0, 0, 0
		piece	-8, $10, 2, 4, 8, 0, 0, 0, 0
		endsprite

Frame_VSwitch_Pulled:	spritemap
		piece	-8, -$2C, 2, 4, 0, 0, 0, 0, 0
		piece	-8, -$C, 2, 4, 0, 0, 0, 0, 0
		piece	-8, $14, 2, 4, 8, 0, 0, 0, 0
		endsprite

		even
