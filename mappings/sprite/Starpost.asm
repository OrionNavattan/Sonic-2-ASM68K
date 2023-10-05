; ---------------------------------------------------------------------------
; Sprite mappings - starpost
; ---------------------------------------------------------------------------

Map_Starpost:	index offset(*)
		ptr	Map_obj79_a_000A
		ptr	Map_obj79_a_002C
		ptr	Map_obj79_a_0046
		ptr	Map_obj79_a_0050
		ptr	Map_obj79_a_005A

Map_obj79_a_000A:	spritemap
		piece	-4, -$18, 1x2, 4, pal2
		piece	-8, -8, 1x4, 6, pal2
		piece	0, -8, 1x4, 6, xflip, pal2
		piece	-8, -$28, 2x2, 0
		endsprite

Map_obj79_a_002C:	spritemap
		piece	-4, -$18, 1x2, 4, pal2
		piece	-8, -8, 1x4, 6, pal2
		piece	0, -8, 1x4, 6, xflip, pal2
		endsprite

Map_obj79_a_0046:	spritemap
		piece	-8, -8, 2x2, 0
		endsprite

Map_obj79_a_0050:	spritemap
		piece	-8, -8, 2x2, 0, pal2
		endsprite

Map_obj79_a_005A:	spritemap
		piece	-4, -$18, 1x2, 4, pal2
		piece	-8, -8, 1x4, 6, pal2
		piece	0, -8, 1x4, 6, xflip, pal2
		piece	-8, -$28, 2x2, 0, pal2
		endsprite

		even