; ---------------------------------------------------------------------------
; Sprite mappings - shield
; ---------------------------------------------------------------------------

Map_Shield:	index offset(*)
		ptr	Map_obj38_000C
		ptr	Map_obj38_002E
		ptr	Map_obj38_0050
		ptr	Map_obj38_0072
		ptr	Map_obj38_0094
		ptr	Map_obj38_00B6

Map_obj38_000C:	spritemap
		piece	-$10, -$10, 2x2, 0
		piece	0, -$10, 2x2, 0, xflip
		piece	-$10, 0, 2x2, 0, yflip
		piece	0, 0, 2x2, 0, xflip, yflip
		endsprite

Map_obj38_002E:	spritemap
		piece	-$10, -$10, 2x2, 4
		piece	0, -$10, 2x2, 4, xflip
		piece	-$10, 0, 2x2, 4, yflip
		piece	0, 0, 2x2, 4, xflip, yflip
		endsprite

Map_obj38_0050:	spritemap
		piece	-$10, -$10, 2x2, 8
		piece	0, -$10, 2x2, 8, xflip
		piece	-$10, 0, 2x2, 8, yflip
		piece	0, 0, 2x2, 8, xflip, yflip
		endsprite

Map_obj38_0072:	spritemap
		piece	-$10, -$10, 2x2, $C
		piece	0, -$10, 2x2, $C, xflip
		piece	-$10, 0, 2x2, $C, yflip
		piece	0, 0, 2x2, $C, xflip, yflip
		endsprite

Map_obj38_0094:	spritemap
		piece	-$10, -$10, 2x2, $10
		piece	0, -$10, 2x2, $10, xflip
		piece	-$10, 0, 2x2, $10, yflip
		piece	0, 0, 2x2, $10, xflip, yflip
		endsprite

Map_obj38_00B6:	spritemap
		piece	-$18, -$20, 3x4, $14
		piece	0, -$20, 3x4, $14, xflip
		piece	-$18, 0, 3x4, $14, yflip
		piece	0, 0, 3x4, $14, xflip, yflip
		endsprite

		even
