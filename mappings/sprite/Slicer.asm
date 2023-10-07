; -------------------------------------------------------------------------------
; Sprite mappings - Slicer enemy (MTZ)
; -------------------------------------------------------------------------------

Map_Slice:	index offset(*)
		ptr	Map_objA2_0012
		ptr	Map_objA2_004C
		ptr	Map_objA2_0086
		ptr	Map_objA2_00C0
		ptr	Map_objA2_00FA
		ptr	Map_objA2_0114
		ptr	Map_objA2_0126
		ptr	Map_objA2_0138
		ptr	Map_objA2_014A

Map_objA2_0012:	spritemap
		piece	-$C, -7, 2x1, $1A
		piece	-$C, 1, 1x1, $1C
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 3x2, 6
		piece	8, 0, 1x2, $C
		piece	-$20, -9, 2x1, $1A
		piece	-$20, -1, 1x1, $1C
		endsprite

Map_objA2_004C:	spritemap
		piece	-$C, -8, 2x1, $1A
		piece	-$C, 0, 1x1, $1C
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 3x2, $E
		piece	8, 0, 1x2, $C
		piece	-$20, -8, 2x1, $1A
		piece	-$20, 0, 1x1, $1C
		endsprite

Map_objA2_0086:	spritemap
		piece	-$C, -9, 2x1, $1A
		piece	-$C, -1, 1x1, $1C
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 3x2, $14
		piece	8, 0, 1x2, $C
		piece	-$20, -7, 2x1, $1A
		piece	-$20, 1, 1x1, $1C
		endsprite

Map_objA2_00C0:	spritemap
		piece	-$C, -$20, 2x1, $1E, xflip, yflip
		piece	-4, -$18, 1x1, $1D, xflip, yflip
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 3x2, 6
		piece	8, 0, 1x2, $C
		piece	-$20, -$20, 2x1, $1E, xflip, yflip
		piece	-$18, -$18, 1x1, $1D, xflip, yflip
		endsprite

Map_objA2_00FA:	spritemap
		piece	-$10, -$10, 3x2, 0
		piece	-$10, 0, 3x2, 6
		piece	8, 0, 1x2, $C
		endsprite

Map_objA2_0114:	spritemap
		piece	-$10, -$10, 2x1, $1A
		piece	-$10, -8, 1x1, $1C
		endsprite

Map_objA2_0126:	spritemap
		piece	-$10, 0, 1x1, $1D
		piece	-$10, 8, 2x1, $1E
		endsprite

Map_objA2_0138:	spritemap
		piece	8, 0, 1x1, $1C, xflip, yflip
		piece	0, 8, 2x1, $1A, xflip, yflip
		endsprite

Map_objA2_014A:	spritemap
		piece	0, -$10, 2x1, $1E, xflip, yflip
		piece	8, -8, 1x1, $1D, xflip, yflip
		endsprite

		even
