; -------------------------------------------------------------------------------
; Sprite mappings - Nebula enemy (SCZ)
; -------------------------------------------------------------------------------

Map_Neb:	index offset(*)
	ptr	Map_obj99_000A
	ptr	Map_obj99_002C
	ptr	Map_obj99_004E
	ptr	Map_obj99_0070
	ptr	Map_obj99_0092

Map_obj99_000A:	spritemap
	piece	-$18, -$14, 3, 1, $12, 0, 0, 0, 0
	piece	0, -$14, 3, 1, $12, 1, 1, 0, 0
	piece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
	piece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
	endsprite

Map_obj99_002C:	spritemap
	piece	-$10, -$14, 2, 1, $15, 0, 0, 0, 0
	piece	0, -$14, 2, 1, $15, 1, 1, 0, 0
	piece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
	piece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
	endsprite

Map_obj99_004E:	spritemap
	piece	-8, -$14, 1, 1, $17, 0, 0, 0, 0
	piece	0, -$14, 1, 1, $17, 1, 0, 0, 0
	piece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
	piece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
	endsprite

Map_obj99_0070:	spritemap
	piece	-$10, -$14, 2, 1, $15, 0, 1, 0, 0
	piece	0, -$14, 2, 1, $15, 1, 0, 0, 0
	piece	-8, -$14, 2, 1, 0, 0, 0, 0, 0
	piece	-$10, -$C, 4, 4, 2, 0, 0, 0, 0
	endsprite

Map_obj99_0092:	spritemap
	piece	-8, -8, 2, 2, $18, 0, 0, 0, 0
	endsprite

	even
