; ---------------------------------------------------------------------------
; Sprite mappings - Hill Top Zipline/Tram
; ---------------------------------------------------------------------------

Map_Tram:	index offset(*)
		ptr	Map_obj16_000A
		ptr	Map_obj16_005C
		ptr	Map_obj16_009E
		ptr	Map_obj16_00B0
		ptr	Map_obj16_00CA

Map_obj16_000A:	spritemap
		piece	-$1C, -$3F, 2, 2, 0, 0, 0, 0, 0
		piece	-$1A, -$30, 1, 4, 4, 0, 0, 0, 0
		piece	-$1A, -$10, 1, 4, 4, 0, 0, 0, 0
		piece	-$19, $10, 1, 2, 8, 0, 0, 0, 0
		piece	$C, -$2B, 2, 2, $A, 0, 0, 0, 0
		piece	$11, -$20, 1, 4, $E, 0, 0, 0, 0
		piece	$11, $10, 1, 2, $12, 0, 0, 0, 0
		piece	$11, 0, 1, 4, $E, 0, 0, 0, 0
		piece	-$20, $20, 4, 2, $14, 0, 0, 0, 0
		piece	0, $20, 4, 2, $14, 1, 0, 0, 0
		endsprite

Map_obj16_005C:	spritemap
		piece	-$1C, -$3F, 2, 2, 0, 0, 0, 0, 0
		piece	-$1A, -$30, 1, 4, 4, 0, 0, 0, 0
		piece	-$1A, -$10, 1, 4, 4, 0, 0, 0, 0
		piece	-$1A, $10, 1, 2, $2C, 0, 0, 0, 0
		piece	$C, -$2B, 2, 2, $A, 0, 0, 0, 0
		piece	$11, -$20, 1, 4, $E, 0, 0, 0, 0
		piece	$11, $18, 1, 2, $2E, 0, 0, 0, 0
		piece	$11, 0, 1, 4, $E, 0, 0, 0, 0
		endsprite

Map_obj16_009E:	spritemap
		piece	-$20, $20, 4, 2, $14, 0, 0, 0, 0
		piece	0, $20, 4, 2, $14, 1, 0, 0, 0
		endsprite

Map_obj16_00B0:	spritemap
		piece	-8, -$28, 2, 2, $1C, 0, 0, 0, 0
		piece	-8, -$18, 2, 4, $20, 0, 0, 0, 0
		piece	-8, 8, 2, 4, $20, 0, 0, 0, 0
		endsprite

Map_obj16_00CA:	spritemap
		piece	-8, -$28, 2, 2, $28, 0, 0, 0, 0
		piece	-8, -$18, 2, 4, $20, 1, 0, 0, 0
		piece	-8, 8, 2, 4, $20, 1, 0, 0, 0
		endsprite

		even
