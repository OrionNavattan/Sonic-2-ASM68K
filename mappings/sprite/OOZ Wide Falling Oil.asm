; -------------------------------------------------------------------------------
; Sprite Mappings - OOZ wide falling oil
; -------------------------------------------------------------------------------
Map_WideFallingOil:	index offset(*)
	ptr	Map_obj1C_d_000A
	ptr	Map_obj1C_d_001C
	ptr	Map_obj1C_d_003E
	ptr	Map_obj1C_d_0058
	ptr	Map_obj1C_d_007A

Map_obj1C_d_000A:	spritemap
	piece	-$18, -$10, 2, 4, 5, 0, 0, 0, 0
	piece	8, -$10, 2, 4, 5, 0, 0, 0, 0
	endsprite

Map_obj1C_d_001C:	spritemap
	piece	-$18, -$20, 2, 4, 5, 0, 0, 0, 0
	piece	8, -$20, 2, 4, 5, 0, 0, 0, 0
	piece	-$18, 0, 2, 4, 5, 0, 0, 0, 0
	piece	8, 0, 2, 4, 5, 0, 0, 0, 0
	endsprite

Map_obj1C_d_003E:	spritemap
	piece	-8, -$30, 2, 4, 5, 0, 0, 0, 0
	piece	-8, -$10, 2, 4, 5, 0, 0, 0, 0
	piece	-8, $10, 2, 4, 5, 0, 0, 0, 0
	endsprite

Map_obj1C_d_0058:	spritemap
	piece	-8, -$40, 2, 4, 5, 0, 0, 0, 0
	piece	-8, -$20, 2, 4, 5, 0, 0, 0, 0
	piece	-8, 0, 2, 4, 5, 0, 0, 0, 0
	piece	-8, $20, 2, 4, 5, 0, 0, 0, 0
	endsprite

Map_obj1C_d_007A:	spritemap
	piece	-8, -$50, 2, 4, 5, 0, 0, 0, 0
	piece	-8, -$30, 2, 4, 5, 0, 0, 0, 0
	piece	-8, -$10, 2, 4, 5, 0, 0, 0, 0
	piece	-8, $10, 2, 4, 5, 0, 0, 0, 0
	piece	-8, $30, 2, 4, 5, 0, 0, 0, 0
	endsprite

	even
