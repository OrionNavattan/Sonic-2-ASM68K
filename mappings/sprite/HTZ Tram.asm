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
		piece	-$1C, -$3F, 2x2, 0
		piece	-$1A, -$30, 1x4, 4
		piece	-$1A, -$10, 1x4, 4
		piece	-$19, $10, 1x2, 8
		piece	$C, -$2B, 2x2, $A
		piece	$11, -$20, 1x4, $E
		piece	$11, $10, 1x2, $12
		piece	$11, 0, 1x4, $E
		piece	-$20, $20, 4x2, $14
		piece	0, $20, 4x2, $14, xflip
		endsprite

Map_obj16_005C:	spritemap
		piece	-$1C, -$3F, 2x2, 0
		piece	-$1A, -$30, 1x4, 4
		piece	-$1A, -$10, 1x4, 4
		piece	-$1A, $10, 1x2, $2C
		piece	$C, -$2B, 2x2, $A
		piece	$11, -$20, 1x4, $E
		piece	$11, $18, 1x2, $2E
		piece	$11, 0, 1x4, $E
		endsprite

Map_obj16_009E:	spritemap
		piece	-$20, $20, 4x2, $14
		piece	0, $20, 4x2, $14, xflip
		endsprite

Map_obj16_00B0:	spritemap
		piece	-8, -$28, 2x2, $1C
		piece	-8, -$18, 2x4, $20
		piece	-8, 8, 2x4, $20
		endsprite

Map_obj16_00CA:	spritemap
		piece	-8, -$28, 2x2, $28
		piece	-8, -$18, 2x4, $20, xflip
		piece	-8, 8, 2x4, $20, xflip
		endsprite

		even
