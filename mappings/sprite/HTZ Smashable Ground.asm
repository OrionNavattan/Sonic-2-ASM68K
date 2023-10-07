; -------------------------------------------------------------------------------
; Sprite mappings - Hill Top smashable ground
; -------------------------------------------------------------------------------

Map_SmashGround:	index offset(*)
		ptr	Map_obj2F_0014
		ptr	Map_obj2F_005E
		ptr	Map_obj2F_00B0
		ptr	Map_obj2F_00B0
		ptr	Map_obj2F_00F2
		ptr	Map_obj2F_00F2
		ptr	Map_obj2F_0124
		ptr	Map_obj2F_0124
		ptr	Map_obj2F_0146
		ptr	Map_obj2F_0146

Map_obj2F_0014:	spritemap
		piece	-$10, -$28, 4x2, $12
		piece	-$10, -$18, 2x2, $4A
		piece	0, -$18, 2x2, $4A
		piece	-$10, -8, 2x2, $4E
		piece	0, -8, 2x2, $4E
		piece	-$10, 8, 2x2, $52
		piece	0, 8, 2x2, $52
		piece	-$10, $18, 2x2, $52
		piece	0, $18, 2x2, $52
		endsprite

Map_obj2F_005E:	spritemap
		piece	-$10, -$28, 2x2, $12
		piece	0, -$28, 2x2, $16
		piece	-$10, -$18, 2x2, $4A
		piece	0, -$18, 2x2, $4A
		piece	-$10, -8, 2x2, $4E
		piece	0, -8, 2x2, $4E
		piece	-$10, 8, 2x2, $52
		piece	0, 8, 2x2, $52
		piece	-$10, $18, 2x2, $52
		piece	0, $18, 2x2, $52
		endsprite

Map_obj2F_00B0:	spritemap
		piece	-$10, -$20, 2x2, $4A
		piece	0, -$20, 2x2, $4A
		piece	-$10, -$10, 2x2, $4E
		piece	0, -$10, 2x2, $4E
		piece	-$10, 0, 2x2, $52
		piece	0, 0, 2x2, $52
		piece	-$10, $10, 2x2, $52
		piece	0, $10, 2x2, $52
		endsprite

Map_obj2F_00F2:	spritemap
		piece	-$10, -$18, 2x2, $4E
		piece	0, -$18, 2x2, $4E
		piece	-$10, -8, 2x2, $52
		piece	0, -8, 2x2, $52
		piece	-$10, 8, 2x2, $52
		piece	0, 8, 2x2, $52
		endsprite

Map_obj2F_0124:	spritemap
		piece	-$10, -$10, 2x2, $52
		piece	0, -$10, 2x2, $52
		piece	-$10, 0, 2x2, $52
		piece	0, 0, 2x2, $52
		endsprite

Map_obj2F_0146:	spritemap
		piece	-$10, -8, 2x2, $52
		piece	0, -8, 2x2, $52
		endsprite

		even
