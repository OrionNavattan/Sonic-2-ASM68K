; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean swinging platforms
; -------------------------------------------------------------------------------

Map_Swing_OOZ:	index offset(*)
	ptr	Map_obj15_a_0008
	ptr	Map_obj15_a_002A
	ptr	Map_obj15_a_002A
	ptr	Map_obj15_a_0034

Map_obj15_a_0008:	spritemap
	piece	-$20, -$10, 4, 2, 4, 0, 0, 1, 0
	piece	0, -$10, 4, 2, $C, 0, 0, 1, 0
	piece	-$20, 0, 4, 2, $14, 0, 0, 1, 0
	piece	0, 0, 4, 2, $14, 1, 0, 1, 0
	endsprite

Map_obj15_a_002A:	spritemap
	piece	-8, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj15_a_0034:	spritemap
	endsprite

	even