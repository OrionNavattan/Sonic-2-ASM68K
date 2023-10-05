; ---------------------------------------------------------------------------
; Sprite mappings - signpost
; ---------------------------------------------------------------------------

Map_Sign:	index offset(*)
		ptr	Map_obj0D_a_000C
		ptr	Map_obj0D_a_0026
		ptr	Map_obj0D_a_0048
		ptr	Map_obj0D_a_0062
		ptr	Map_obj0D_a_0074
		ptr	Map_obj0D_a_0086

Map_obj0D_a_000C:	spritemap
		piece	-$18, -$10, 3x4, $22
		piece	0, -$10, 3x4, $2E
		piece	-4, $10, 1x2, $20
		endsprite

Map_obj0D_a_0026:	spritemap
		piece	-$18, -$10, 1x4, $3A
		piece	-$10, -$10, 4x4, $3E
		piece	$10, -$10, 1x4, $3A, xflip
		piece	-4, $10, 1x2, $20
		endsprite

Map_obj0D_a_0048:	spritemap
		piece	-$18, -$10, 3x4, 0
		piece	0, -$10, 3x4, 0, xflip
		piece	-4, $10, 1x2, $20
		endsprite

Map_obj0D_a_0062:	spritemap
		piece	-$10, -$10, 4x4, $C
		piece	-4, $10, 1x2, $20
		endsprite

Map_obj0D_a_0074:	spritemap
		piece	-4, -$10, 1x4, $1C
		piece	-4, $10, 1x2, $20
		endsprite

Map_obj0D_a_0086:	spritemap
		piece	-$10, -$10, 4x4, $C, xflip
		piece	-4, $10, 1x2, $20
		endsprite

		even