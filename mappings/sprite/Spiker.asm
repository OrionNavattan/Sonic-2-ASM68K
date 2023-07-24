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
	piece	-$C, 8, 3, 2, $520, 0, 0, 0, 0
	piece	-8, -$18, 2, 4, $52C, 0, 0, 1, 0
	piece	-8, 0, 2, 2, $3DE, 0, 0, 0, 0
	endsprite

Map_obj93_0024:	spritemap
	piece	-$C, 8, 3, 2, $526, 0, 0, 0, 0
	piece	-8, -$18, 2, 4, $52C, 0, 0, 1, 0
	piece	-8, 0, 2, 2, $3DE, 0, 0, 0, 0
	endsprite

Map_obj93_003E:	spritemap
	piece	-$C, 8, 3, 2, $520, 0, 0, 0, 0
	piece	-8, 0, 2, 2, $3DE, 0, 0, 0, 0
	endsprite

Map_obj93_0050:	spritemap
	piece	-$C, 8, 3, 2, $526, 0, 0, 0, 0
	piece	-8, 0, 2, 2, $3DE, 0, 0, 0, 0
	endsprite

Map_obj93_0062:	spritemap
	piece	-8, -$14, 2, 4, $52C, 0, 0, 1, 0
	endsprite

	even
