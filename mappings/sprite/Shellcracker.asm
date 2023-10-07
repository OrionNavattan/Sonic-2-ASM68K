; -------------------------------------------------------------------------------
; Sprite mappings - Shellcracker enemy (MTZ)
; -------------------------------------------------------------------------------

Map_Shelcrk:	index offset(*)
		ptr	Map_objA0_000C
		ptr	Map_objA0_002E
		ptr	Map_objA0_0050
		ptr	Map_objA0_0072
		ptr	Map_objA0_008C
		ptr	Map_objA0_0096

Map_objA0_000C:	spritemap
		piece	-$20, -$14, 3x3, $18
		piece	8, -8, 2x1, $21
		piece	-$18, -$C, 3x3, 0
		piece	0, -$C, 3x3, 0, xflip
		endsprite

Map_objA0_002E:	spritemap
		piece	-$20, -$14, 3x3, $18
		piece	8, -8, 2x1, $21
		piece	-$10, -$C, 2x3, $12, xflip
		piece	0, -$C, 3x3, 9, xflip
		endsprite

Map_objA0_0050:	spritemap
		piece	-$20, -$14, 3x3, $18
		piece	8, -8, 2x1, $21
		piece	-$18, -$C, 3x3, 9
		piece	0, -$C, 2x3, $12
		endsprite

Map_objA0_0072:	spritemap
		piece	8, -8, 2x1, $21
		piece	-$18, -$C, 3x3, 0
		piece	0, -$C, 3x3, 0, xflip
		endsprite

Map_objA0_008C:	spritemap
		piece	-4, -4, 1x1, $23
		endsprite

Map_objA0_0096:	spritemap
		piece	-$C, -$C, 3x3, $18
		endsprite

		even
