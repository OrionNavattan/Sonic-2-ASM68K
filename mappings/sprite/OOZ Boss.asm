; -------------------------------------------------------------------------------
; Sprite mappings - OOZ Eggman, Eggpod, and orbs
; -------------------------------------------------------------------------------

Map_BOOZ:	index offset(*)
		ptr	Map_BOOZ
		ptr	Map_obj55_002C
		ptr	Map_obj55_0066
		ptr	Map_obj55_0078
		ptr	Map_obj55_0092
		ptr	Map_obj55_00BE
		ptr	Map_obj55_00D0
		ptr	Map_obj55_00E2
		ptr	Map_obj55_00EC
		ptr	Map_obj55_00F6
		ptr	Map_obj55_0100
		ptr	Map_obj55_010A
		ptr	Map_obj55_0114
		ptr	Map_obj55_011E
		ptr	Map_obj55_0128
		ptr	Map_obj55_0132
		ptr	Map_obj55_013C
		ptr	Map_obj55_011E
		ptr	Map_obj55_0128
		ptr	Map_obj55_0132
		ptr	Map_obj55_013C
		ptr	Map_obj55_00AC

Map_obj55_002C:	spritemap
		piece	0, -$20, 4x2, 1, pal2
		piece	-8, -$18, 1x1, 0, pal2
		piece	-$18, -$10, 4x2, 9, pal2
		piece	8, -$10, 4x2, $11, pal2
		piece	-$30, 0, 4x4, $19, pal2
		piece	-$10, 0, 4x4, $29, pal2
		piece	$10, 0, 4x4, $39, pal2
		endsprite

Map_obj55_0066:	spritemap
		piece	-$22, -8, 4x2, $49, pal2
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_0078:	spritemap
		piece	-$1E, -$1E, 3x2, $51, pal2
		piece	-$16, -$E, 3x2, $57, pal2
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_0092:	spritemap
		piece	-$1E, 6, 2x3, $63, pal2
		piece	-$E, -2, 2x3, $5D, pal2
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_00AC:	spritemap
		piece	-8, -$22, 2x4, $AD, pal2
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_00BE:	spritemap
		piece	-$20, -8, 4x2, $69, pal2
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_00D0:	spritemap
		piece	-$20, -8, 4x2, $71, pal2
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_00E2:	spritemap
		piece	-8, -8, 2x2, $79, pal2
		endsprite

Map_obj55_00EC:	spritemap
		piece	-$C, -$10, 3x2, $7D
		endsprite

Map_obj55_00F6:	spritemap
		piece	-$C, -$10, 3x2, $83
		endsprite

Map_obj55_0100:	spritemap
		piece	-$C, -$10, 3x2, $89
		endsprite

Map_obj55_010A:	spritemap
		piece	-$C, -$10, 3x2, $8F
		endsprite

Map_obj55_0114:	spritemap
		piece	-$10, -4, 4x1, $A9, pal2
		endsprite

Map_obj55_011E:	spritemap
		piece	-8, 8, 2x1, $95, pal2
		endsprite

Map_obj55_0128:	spritemap
		piece	-8, 0, 2x2, $97, pal2
		endsprite

Map_obj55_0132:	spritemap
		piece	-8, -8, 2x3, $9B, pal2
		endsprite

Map_obj55_013C:	spritemap
		piece	-8, -$10, 2x4, $A1, pal2
		endsprite

		even
