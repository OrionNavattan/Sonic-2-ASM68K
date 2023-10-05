; ---------------------------------------------------------------------------
; Sprite mappings - 2P signpost
; ---------------------------------------------------------------------------

Map_Sign_2P:	index offset(*)
		ptr	Map_obj0D_b_000C
		ptr	Map_obj0D_b_0026
		ptr	Map_obj0D_b_0048
		ptr	Map_obj0D_b_0062
		ptr	Map_obj0D_b_0074
		ptr	Map_obj0D_b_0086

Map_obj0D_b_000C:	spritemap
		piece	-$18, -$10, 3x4, 0
		piece	0, -$10, 3x4, $C
		piece	-4, $10, 1x2, $214
		endsprite

Map_obj0D_b_0026:	spritemap
		piece	-$18, -$10, 1x4, 0
		piece	-$10, -$10, 4x4, 4
		piece	$10, -$10, 1x4, $14, xflip
		piece	-4, $10, 1x2, $214
		endsprite

Map_obj0D_b_0048:	spritemap
		piece	-$18, -$10, 3x4, 0
		piece	0, -$10, 3x4, 0, xflip
		piece	-4, $10, 1x2, $214
		endsprite

Map_obj0D_b_0062:	spritemap
		piece	-$10, -$10, 4x4, 0
		piece	-4, $10, 1x2, $214
		endsprite

Map_obj0D_b_0074:	spritemap
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x2, $214
		endsprite

Map_obj0D_b_0086:	spritemap
		piece	-$10, -$10, 4x4, 0, xflip
		piece	-4, $10, 1x2, $214
		endsprite

		even