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
	piece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
	piece	0, -$10, 2, 2, 0, 1, 0, 0, 0
	piece	-$10, 0, 2, 2, 0, 0, 1, 0, 0
	piece	0, 0, 2, 2, 0, 1, 1, 0, 0
	endsprite

Map_obj38_002E:	spritemap
	piece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
	piece	0, -$10, 2, 2, 4, 1, 0, 0, 0
	piece	-$10, 0, 2, 2, 4, 0, 1, 0, 0
	piece	0, 0, 2, 2, 4, 1, 1, 0, 0
	endsprite

Map_obj38_0050:	spritemap
	piece	-$10, -$10, 2, 2, 8, 0, 0, 0, 0
	piece	0, -$10, 2, 2, 8, 1, 0, 0, 0
	piece	-$10, 0, 2, 2, 8, 0, 1, 0, 0
	piece	0, 0, 2, 2, 8, 1, 1, 0, 0
	endsprite

Map_obj38_0072:	spritemap
	piece	-$10, -$10, 2, 2, $C, 0, 0, 0, 0
	piece	0, -$10, 2, 2, $C, 1, 0, 0, 0
	piece	-$10, 0, 2, 2, $C, 0, 1, 0, 0
	piece	0, 0, 2, 2, $C, 1, 1, 0, 0
	endsprite

Map_obj38_0094:	spritemap
	piece	-$10, -$10, 2, 2, $10, 0, 0, 0, 0
	piece	0, -$10, 2, 2, $10, 1, 0, 0, 0
	piece	-$10, 0, 2, 2, $10, 0, 1, 0, 0
	piece	0, 0, 2, 2, $10, 1, 1, 0, 0
	endsprite

Map_obj38_00B6:	spritemap
	piece	-$18, -$20, 3, 4, $14, 0, 0, 0, 0
	piece	0, -$20, 3, 4, $14, 1, 0, 0, 0
	piece	-$18, 0, 3, 4, $14, 0, 1, 0, 0
	piece	0, 0, 3, 4, $14, 1, 1, 0, 0
	endsprite

	even
