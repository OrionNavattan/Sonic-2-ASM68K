; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave ascending/descending vines
; -------------------------------------------------------------------------------

Map_VinePulley:	index offset(*)
		ptr	Map_obj80_a_000E
		ptr	Map_obj80_a_0028
		ptr	Map_obj80_a_004A
		ptr	Map_obj80_a_0074
		ptr	Map_obj80_a_00A6
		ptr	Map_obj80_a_00E0
		ptr	Map_obj80_a_0122

Map_obj80_a_000E:	spritemap
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

Map_obj80_a_0028:	spritemap
		piece	-4, $10, 1x4, 0
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

Map_obj80_a_004A:	spritemap
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x4, 0
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

Map_obj80_a_0074:	spritemap
		piece	-4, -$30, 1x4, 0
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x4, 0
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

Map_obj80_a_00A6:	spritemap
		piece	-4, -$50, 1x4, 0
		piece	-4, -$30, 1x4, 0
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x4, 0
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

Map_obj80_a_00E0:	spritemap
		piece	-4, -$70, 1x4, 0
		piece	-4, -$50, 1x4, 0
		piece	-4, -$30, 1x4, 0
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x4, 0
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

Map_obj80_a_0122:	spritemap
		piece	-4, -$80, 1x2, 2
		piece	-4, -$70, 1x4, 0
		piece	-4, -$50, 1x4, 0
		piece	-4, -$30, 1x4, 0
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x4, 0
		piece	-4, $30, 1x4, 0
		piece	-4, $50, 1x4, 0
		piece	-$C, $70, 3x2, 4
		endsprite

		even