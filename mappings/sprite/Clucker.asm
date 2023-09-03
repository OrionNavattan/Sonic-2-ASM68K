; -------------------------------------------------------------------------------
; Sprite mappings - Clucker enemy and base (WFZ)
; -------------------------------------------------------------------------------

Map_Clucker:	index offset(*)
		ptr	Map_objAE_002C
		ptr	Map_objAE_0036
		ptr	Map_objAE_0040
		ptr	Map_objAE_004A
		ptr	Map_objAE_005C
		ptr	Map_objAE_006E
		ptr	Map_objAE_0080
		ptr	Map_objAE_0092
		ptr	Map_objAE_00A4
		ptr	Map_objAE_00BE
		ptr	Map_objAE_00D8
		ptr	Map_objAE_00F2
		ptr	Map_objAE_010C
		ptr	Map_objAE_011E
		ptr	Map_objAE_0128
		ptr	Map_objAE_0132
		ptr	Map_objAE_013C
		ptr	Map_objAE_0146
		ptr	Map_objAE_0150
		ptr	Map_objAE_015A
		ptr	Map_objAE_0164
		ptr	Map_objAE_016E

Map_objAE_002C:	spritemap
		piece	-$10, $C, 4, 2, 0, 0, 0, 1, 0
		endsprite

Map_objAE_0036:	spritemap
		piece	-$10, 8, 4, 2, 0, 0, 0, 1, 0
		endsprite

Map_objAE_0040:	spritemap
		piece	-$10, 4, 4, 2, 0, 0, 0, 1, 0
		endsprite

Map_objAE_004A:	spritemap
		piece	-$10, 0, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, $10, 4, 2, 8, 0, 0, 1, 0
		endsprite

Map_objAE_005C:	spritemap
		piece	-$10, -4, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, $C, 4, 2, 8, 0, 0, 1, 0
		endsprite

Map_objAE_006E:	spritemap
		piece	-$10, -8, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 8, 4, 2, 8, 0, 0, 1, 0
		endsprite

Map_objAE_0080:	spritemap
		piece	-$10, -$C, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 4, 4, 2, 8, 0, 0, 1, 0
		endsprite

Map_objAE_0092:	spritemap
		piece	-$10, -$10, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 0, 4, 2, 8, 0, 0, 1, 0
		endsprite

Map_objAE_00A4:	spritemap
		piece	-$10, -$10, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 0, 4, 2, 8, 0, 0, 1, 0
		piece	-$12, 7, 1, 1, $10, 0, 0, 1, 0
		endsprite

Map_objAE_00BE:	spritemap
		piece	-$10, -$10, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 0, 4, 2, 8, 0, 0, 1, 0
		piece	-$14, 7, 1, 1, $10, 0, 0, 1, 0
		endsprite

Map_objAE_00D8:	spritemap
		piece	-$10, -$10, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 0, 4, 2, 8, 0, 0, 1, 0
		piece	-$16, 7, 1, 1, $10, 0, 0, 1, 0
		endsprite

Map_objAE_00F2:	spritemap
		piece	-$10, -$10, 4, 2, 0, 0, 0, 1, 0
		piece	-$10, 0, 4, 2, 8, 0, 0, 1, 0
		piece	-$18, 7, 1, 1, $10, 0, 0, 1, 0
		endsprite

Map_objAE_010C:	spritemap
		piece	-$18, -8, 3, 2, $11, 0, 0, 3, 0
		piece	0, -8, 3, 2, $11, 1, 0, 3, 0
		endsprite

Map_objAE_011E:	spritemap
		piece	-4, -4, 1, 1, $17, 0, 0, 0, 0
		endsprite

Map_objAE_0128:	spritemap
		piece	-4, -4, 1, 1, $18, 0, 0, 0, 0
		endsprite

Map_objAE_0132:	spritemap
		piece	-4, -4, 1, 1, $19, 0, 0, 0, 0
		endsprite

Map_objAE_013C:	spritemap
		piece	-4, -4, 1, 1, $18, 0, 1, 0, 0
		endsprite

Map_objAE_0146:	spritemap
		piece	-4, -4, 1, 1, $17, 0, 1, 0, 0
		endsprite

Map_objAE_0150:	spritemap
		piece	-4, -4, 1, 1, $18, 1, 1, 0, 0
		endsprite

Map_objAE_015A:	spritemap
		piece	-4, -4, 1, 1, $19, 1, 0, 0, 0
		endsprite

Map_objAE_0164:	spritemap
		piece	-4, -4, 1, 1, $18, 1, 0, 0, 0
		endsprite

Map_objAE_016E:	spritemap
		piece	-$10, $10, 4, 2, 0, 0, 0, 1, 0
		endsprite

		even
