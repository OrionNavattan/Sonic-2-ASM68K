; -----------------------------------------------------------------------------
; Sprite mappings - Spiker enemy (HTZ)
; -----------------------------------------------------------------------------

Map_Spiker:	index offset(*)
		ptr	Map_obj93_000A
		ptr	Map_obj93_0024
		ptr	Map_obj93_003E
		ptr	Map_obj93_0050
		ptr	Map_obj93_0062

Map_obj93_000A:	spritemap
		piece	-$C, 8, 3x2, $520
		piece	-8, -$18, 2x4, $52C, pal2
		piece	-8, 0, 2x2, $3DE
		endsprite

Map_obj93_0024:	spritemap
		piece	-$C, 8, 3x2, $526
		piece	-8, -$18, 2x4, $52C, pal2
		piece	-8, 0, 2x2, $3DE
		endsprite

Map_obj93_003E:	spritemap
		piece	-$C, 8, 3x2, $520
		piece	-8, 0, 2x2, $3DE
		endsprite

Map_obj93_0050:	spritemap
		piece	-$C, 8, 3x2, $526
		piece	-8, 0, 2x2, $3DE
		endsprite

Map_obj93_0062:	spritemap
		piece	-8, -$14, 2x4, $52C, pal2
		endsprite

		even
