; -------------------------------------------------------------------------------
; Sprite mappings - OOZ narrow falling oil
; -------------------------------------------------------------------------------

Map_NarrowFallingOil:	index offset(*)
		ptr	Map_obj1C_c_000C
		ptr	Map_obj1C_c_0016
		ptr	Map_obj1C_c_0020
		ptr	Map_obj1C_c_0032
		ptr	Map_obj1C_c_004C
		ptr	Map_obj1C_c_006E

Map_obj1C_c_000C:	spritemap
		piece	-4, -8, 1x2, 0
		endsprite

Map_obj1C_c_0016:	spritemap
		piece	-4, -$10, 1x4, 0
		endsprite

Map_obj1C_c_0020:	spritemap
		piece	-4, -$18, 1x2, 0
		piece	-4, -8, 1x4, 0
		endsprite

Map_obj1C_c_0032:	spritemap
		piece	-4, -$30, 1x4, 0
		piece	-4, -$10, 1x4, 0
		piece	-4, $10, 1x4, 0
		endsprite

Map_obj1C_c_004C:	spritemap
		piece	-4, -$40, 1x4, 0
		piece	-4, -$20, 1x4, 0
		piece	-4, 0, 1x4, 0
		piece	-4, $20, 1x4, 0
		endsprite

Map_obj1C_c_006E:	spritemap
		piece	-4, -$68, 1x1, 4
		piece	-4, -$60, 1x4, 0
		piece	-4, -$40, 1x4, 0
		piece	-4, -$20, 1x4, 0
		piece	-4, 0, 1x4, 0
		piece	-4, $20, 1x4, 0
		piece	-4, $40, 1x4, 0
		endsprite

		even
