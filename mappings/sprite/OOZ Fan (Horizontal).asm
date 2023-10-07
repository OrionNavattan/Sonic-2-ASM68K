; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean fans (horizontal)
; -------------------------------------------------------------------------------

Map_HorizFan:	index offset(*)
		ptr	Map_obj3F_a_0016
		ptr	Map_obj3F_a_0030
		ptr	Map_obj3F_a_004A
		ptr	Map_obj3F_a_0064
		ptr	Map_obj3F_a_007E
		ptr	Map_obj3F_a_0098
		ptr	Map_obj3F_a_007E
		ptr	Map_obj3F_a_0064
		ptr	Map_obj3F_a_004A
		ptr	Map_obj3F_a_0030
		ptr	Map_obj3F_a_0016

Map_obj3F_a_0016:	spritemap
		piece	-$C, -$D, 1x3, 0
		piece	-4, -$10, 2x2, 7
		piece	-4, 0, 2x2, 7, yflip
		endsprite

Map_obj3F_a_0030:	spritemap
		piece	-$C, -$B, 1x3, 0, yflip
		piece	-4, -$10, 2x2, 7
		piece	-4, 0, 2x2, 7, yflip
		endsprite

Map_obj3F_a_004A:	spritemap
		piece	-$C, -$10, 1x4, 3
		piece	-4, -$10, 2x2, 7
		piece	-4, 0, 2x2, 7, yflip
		endsprite

Map_obj3F_a_0064:	spritemap
		piece	-$C, -$D, 1x3, 0
		piece	-4, -$10, 2x2, $B
		piece	-4, 0, 2x2, $B, yflip
		endsprite

Map_obj3F_a_007E:	spritemap
		piece	-$C, -$B, 1x3, 0, yflip
		piece	-4, -$10, 2x2, $B
		piece	-4, 0, 2x2, $B, yflip
		endsprite

Map_obj3F_a_0098:	spritemap
		piece	-$C, -$10, 1x4, 3
		piece	-4, -$10, 2x2, $B
		piece	-4, 0, 2x2, $B, yflip
		endsprite

		even
