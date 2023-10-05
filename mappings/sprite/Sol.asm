; -----------------------------------------------------------------------------
; Sprite mappings - Sol enemy (HTZ)
; -----------------------------------------------------------------------------

Map_Sol:	index offset(*)
		ptr	Map_obj95_000A
		ptr	Map_obj95_0014
		ptr	Map_obj95_001E
		ptr	Map_obj95_0028
		ptr	Map_obj95_0032

Map_obj95_000A:	spritemap
		piece	-8, -8, 2x2, $3DE
		endsprite

Map_obj95_0014:	spritemap
		piece	-8, -8, 2x2, $3DE
		endsprite

Map_obj95_001E:	spritemap
		piece	-8, -8, 2x2, $3DE
		endsprite

Map_obj95_0028:	spritemap
		piece	-8, -8, 2x2, $3AE, hi
		endsprite

Map_obj95_0032:	spritemap
		piece	-8, -8, 2x2, $3AE, xflip, hi
		endsprite

		even