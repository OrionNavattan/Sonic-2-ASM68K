; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress boss (laser, laser case, laser barriers, 
; platforms, and platform releaser)
; -------------------------------------------------------------------------------

Map_BWFZ:	index offset(*)
		ptr	Map_objC5_a_0026
		ptr	Map_objC5_a_0048
		ptr	Map_objC5_a_006A
		ptr	Map_objC5_a_008C
		ptr	Map_objC5_a_00AE
		ptr	Map_objC5_a_00C0
		ptr	Map_objC5_a_00D2
		ptr	Map_objC5_a_00DC
		ptr	Map_objC5_a_00E6
		ptr	Map_objC5_a_00F0
		ptr	Map_objC5_a_00FA
		ptr	Map_objC5_a_0104
		ptr	Map_objC5_a_010E
		ptr	Map_objC5_a_0130
		ptr	Map_objC5_a_013A
		ptr	Map_objC5_a_014C
		ptr	Map_objC5_a_0166
		ptr	Map_objC5_a_0188
		ptr	Map_objC5_a_01B2

Map_objC5_a_0026:	spritemap
		piece	-$20, -8, 4x1, 0, pal2
		piece	0, -8, 4x1, 4, pal2
		piece	-$18, 0, 3x2, 8, pal2
		piece	0, 0, 3x2, 8, xflip, pal2
		endsprite

Map_objC5_a_0048:	spritemap
		piece	-$20, -8, 4x1, 0, pal2
		piece	0, -8, 4x1, 0, xflip, pal2
		piece	-$18, 0, 3x2, $E, pal2
		piece	0, 0, 3x2, $E, xflip, pal2
		endsprite

Map_objC5_a_006A:	spritemap
		piece	-$20, -8, 4x1, 0, pal2
		piece	0, -8, 4x1, 0, xflip, pal2
		piece	-$18, 0, 3x2, $14, pal2
		piece	0, 0, 3x2, $14, xflip, pal2
		endsprite

Map_objC5_a_008C:	spritemap
		piece	-$20, -8, 4x1, 0, pal2
		piece	0, -8, 4x1, 0, xflip, pal2
		piece	-$18, 0, 3x1, $1A, pal2
		piece	0, 0, 3x1, $1A, xflip, pal2
		endsprite

Map_objC5_a_00AE:	spritemap
		piece	-$10, -8, 2x2, $1D, pal3
		piece	0, -8, 2x2, $1D, xflip, pal3
		endsprite

Map_objC5_a_00C0:	spritemap
		piece	-$20, -8, 4x2, $21, pal2
		piece	0, -8, 4x2, $21, xflip, pal2
		endsprite

Map_objC5_a_00D2:	spritemap
		piece	-$10, -8, 4x3, $29, pal2
		endsprite

Map_objC5_a_00DC:	spritemap
		piece	-$10, -8, 4x3, $35, pal2
		endsprite

Map_objC5_a_00E6:	spritemap
		piece	-$10, -8, 4x3, $41, pal2
		endsprite

Map_objC5_a_00F0:	spritemap
		piece	-$10, -8, 4x3, $4D, pal2
		endsprite

Map_objC5_a_00FA:	spritemap
		piece	-$10, -8, 4x3, $41, xflip, pal2
		endsprite

Map_objC5_a_0104:	spritemap
		piece	-$10, -8, 4x3, $35, xflip, pal2
		endsprite

Map_objC5_a_010E:	spritemap
		piece	-8, -$40, 2x4, $59, pal2
		piece	-8, -$20, 2x4, $59, pal2
		piece	-8, 0, 2x4, $59, pal2
		piece	-8, $20, 2x4, $59, pal2
		endsprite

Map_objC5_a_0130:	spritemap
		piece	-$10, 0, 4x1, $71, pal3
		endsprite

Map_objC5_a_013A:	spritemap
		piece	-$10, -$10, 4x4, $61, pal3
		piece	-$10, $10, 4x1, $71, pal3
		endsprite

Map_objC5_a_014C:	spritemap
		piece	-$10, -$20, 4x4, $61, pal3
		piece	-$10, 0, 4x4, $61, pal3
		piece	-$10, $20, 4x1, $71, pal3
		endsprite

Map_objC5_a_0166:	spritemap
		piece	-$10, -$30, 4x4, $61, pal3
		piece	-$10, -$10, 4x4, $61, pal3
		piece	-$10, $10, 4x4, $61, pal3
		piece	-$10, $30, 4x1, $71, pal3
		endsprite

Map_objC5_a_0188:	spritemap
		piece	-$10, -$40, 4x4, $61, pal3
		piece	-$10, -$20, 4x4, $61, pal3
		piece	-$10, 0, 4x4, $61, pal3
		piece	-$10, $20, 4x4, $61, pal3
		piece	-$10, $40, 4x1, $71, pal3
		endsprite

Map_objC5_a_01B2:	spritemap
		piece	-$10, -$50, 4x4, $61, pal3
		piece	-$10, -$30, 4x4, $61, pal3
		piece	-$10, -$10, 4x4, $61, pal3
		piece	-$10, $10, 4x4, $61, pal3
		piece	-$10, $30, 4x4, $61, pal3
		piece	-$10, $50, 4x1, $71, pal3
		endsprite

		even
