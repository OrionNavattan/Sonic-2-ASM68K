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
		piece	-$10, $C, 4x2, 0, pal2
		endsprite

Map_objAE_0036:	spritemap
		piece	-$10, 8, 4x2, 0, pal2
		endsprite

Map_objAE_0040:	spritemap
		piece	-$10, 4, 4x2, 0, pal2
		endsprite

Map_objAE_004A:	spritemap
		piece	-$10, 0, 4x2, 0, pal2
		piece	-$10, $10, 4x2, 8, pal2
		endsprite

Map_objAE_005C:	spritemap
		piece	-$10, -4, 4x2, 0, pal2
		piece	-$10, $C, 4x2, 8, pal2
		endsprite

Map_objAE_006E:	spritemap
		piece	-$10, -8, 4x2, 0, pal2
		piece	-$10, 8, 4x2, 8, pal2
		endsprite

Map_objAE_0080:	spritemap
		piece	-$10, -$C, 4x2, 0, pal2
		piece	-$10, 4, 4x2, 8, pal2
		endsprite

Map_objAE_0092:	spritemap
		piece	-$10, -$10, 4x2, 0, pal2
		piece	-$10, 0, 4x2, 8, pal2
		endsprite

Map_objAE_00A4:	spritemap
		piece	-$10, -$10, 4x2, 0, pal2
		piece	-$10, 0, 4x2, 8, pal2
		piece	-$12, 7, 1x1, $10, pal2
		endsprite

Map_objAE_00BE:	spritemap
		piece	-$10, -$10, 4x2, 0, pal2
		piece	-$10, 0, 4x2, 8, pal2
		piece	-$14, 7, 1x1, $10, pal2
		endsprite

Map_objAE_00D8:	spritemap
		piece	-$10, -$10, 4x2, 0, pal2
		piece	-$10, 0, 4x2, 8, pal2
		piece	-$16, 7, 1x1, $10, pal2
		endsprite

Map_objAE_00F2:	spritemap
		piece	-$10, -$10, 4x2, 0, pal2
		piece	-$10, 0, 4x2, 8, pal2
		piece	-$18, 7, 1x1, $10, pal2
		endsprite

Map_objAE_010C:	spritemap
		piece	-$18, -8, 3x2, $11, pal4
		piece	0, -8, 3x2, $11, xflip, pal4
		endsprite

Map_objAE_011E:	spritemap
		piece	-4, -4, 1x1, $17
		endsprite

Map_objAE_0128:	spritemap
		piece	-4, -4, 1x1, $18
		endsprite

Map_objAE_0132:	spritemap
		piece	-4, -4, 1x1, $19
		endsprite

Map_objAE_013C:	spritemap
		piece	-4, -4, 1x1, $18, yflip
		endsprite

Map_objAE_0146:	spritemap
		piece	-4, -4, 1x1, $17, yflip
		endsprite

Map_objAE_0150:	spritemap
		piece	-4, -4, 1x1, $18, xflip, yflip
		endsprite

Map_objAE_015A:	spritemap
		piece	-4, -4, 1x1, $19, xflip
		endsprite

Map_objAE_0164:	spritemap
		piece	-4, -4, 1x1, $18, xflip
		endsprite

Map_objAE_016E:	spritemap
		piece	-$10, $10, 4x2, 0, pal2
		endsprite

		even