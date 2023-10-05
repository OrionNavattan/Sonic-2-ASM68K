; -------------------------------------------------------------------------------
; Sprite mappings - Eggman's window in Mecha Sonic boss arena
; -------------------------------------------------------------------------------

Map_EggmanWindow:	index offset(*)
		ptr	Map_objAF_b_0010
		ptr	Map_objAF_b_003A
		ptr	Map_objAF_b_0064
		ptr	Map_objAF_b_008E
		ptr	Map_objAF_b_00C8
		ptr	Map_objAF_b_0102
		ptr	Map_objAF_b_011C
		ptr	Map_objAF_b_0136

Map_objAF_b_0010:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, 4, 2x1, 6, pal2
		piece	0, 4, 2x1, 6, pal2
		piece	-$10, -8, 4x2, $190
		endsprite

Map_objAF_b_003A:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, 0, 2x1, 6, pal2
		piece	0, 0, 2x1, 6, pal2
		piece	-$10, -8, 4x2, $190
		endsprite

Map_objAF_b_0064:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, -4, 2x1, 6, pal2
		piece	0, -4, 2x1, 6, pal2
		piece	-$10, -8, 4x2, $190
		endsprite

Map_objAF_b_008E:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, -8, 2x1, 6, pal2
		piece	0, -8, 2x1, 6, pal2
		piece	-$10, 0, 2x1, 6, pal2
		piece	0, 0, 2x1, 6, pal2
		piece	-$10, -8, 4x2, $190
		endsprite

Map_objAF_b_00C8:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, -$C, 2x1, 6, pal2
		piece	0, -$C, 2x1, 6, pal2
		piece	-$10, -4, 2x1, 6, pal2
		piece	0, -4, 2x1, 6, pal2
		piece	-$10, -8, 4x2, $190
		endsprite

Map_objAF_b_0102:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, -8, 4x2, $190
		endsprite

Map_objAF_b_011C:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, -7, 4x2, $190
		endsprite

Map_objAF_b_0136:	spritemap
		piece	-$10, -$C, 2x3, 0, pal2
		piece	0, -$C, 2x3, 0, xflip, pal2
		piece	-$10, -8, 4x2, $198
		endsprite

		even