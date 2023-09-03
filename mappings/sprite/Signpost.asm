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
		piece	-$18, -$10, 3, 4, $22, 0, 0, 0, 0
		piece	0, -$10, 3, 4, $2E, 0, 0, 0, 0
		piece	-4, $10, 1, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj0D_a_0026:	spritemap
		piece	-$18, -$10, 1, 4, $3A, 0, 0, 0, 0
		piece	-$10, -$10, 4, 4, $3E, 0, 0, 0, 0
		piece	$10, -$10, 1, 4, $3A, 1, 0, 0, 0
		piece	-4, $10, 1, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj0D_a_0048:	spritemap
		piece	-$18, -$10, 3, 4, 0, 0, 0, 0, 0
		piece	0, -$10, 3, 4, 0, 1, 0, 0, 0
		piece	-4, $10, 1, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj0D_a_0062:	spritemap
		piece	-$10, -$10, 4, 4, $C, 0, 0, 0, 0
		piece	-4, $10, 1, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj0D_a_0074:	spritemap
		piece	-4, -$10, 1, 4, $1C, 0, 0, 0, 0
		piece	-4, $10, 1, 2, $20, 0, 0, 0, 0
		endsprite

Map_obj0D_a_0086:	spritemap
		piece	-$10, -$10, 4, 4, $C, 1, 0, 0, 0
		piece	-4, $10, 1, 2, $20, 0, 0, 0, 0
		endsprite

		even
