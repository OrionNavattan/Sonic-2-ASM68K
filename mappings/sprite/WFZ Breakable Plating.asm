; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress breakable plating
; -------------------------------------------------------------------------------

Map_BreakPlate:	index offset(*)
		ptr	Map_objC1_000C
		ptr	Map_objC1_004E
		ptr	Map_objC1_0060
		ptr	Map_objC1_0072
		ptr	Map_objC1_0084
		ptr	Map_objC1_0096

Map_objC1_000C:	spritemap
		piece	-$20, -$20, 2x4, 0
		piece	-$10, -$20, 2x4, 0, xflip
		piece	-$20, 0, 2x4, 0
		piece	-$10, 0, 2x4, 0, xflip
		piece	-$40, -$20, 2x4, 0
		piece	-$30, -$20, 2x4, 0, xflip
		piece	-$40, 0, 2x4, 0
		piece	-$30, 0, 2x4, 0, xflip
		endsprite

Map_objC1_004E:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 0, xflip
		endsprite

Map_objC1_0060:	spritemap
		piece	-8, -$10, 2x2, 8
		piece	-8, 0, 2x2, 8, yflip
		endsprite

Map_objC1_0072:	spritemap
		piece	-4, -$10, 1x2, $C
		piece	-4, 0, 1x2, $C, yflip
		endsprite

Map_objC1_0084:	spritemap
		piece	-4, -$10, 1x2, $C, xflip
		piece	-4, 0, 1x2, $C, xflip, yflip
		endsprite

Map_objC1_0096:	spritemap
		piece	-8, -$10, 2x2, 8, xflip
		piece	-8, 0, 2x2, 8, xflip, yflip
		endsprite

		even