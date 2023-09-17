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
		piece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		piece	0, -8, 4, 1, 4, 0, 0, 1, 0
		piece	-$18, 0, 3, 2, 8, 0, 0, 1, 0
		piece	0, 0, 3, 2, 8, 1, 0, 1, 0
		endsprite

Map_objC5_a_0048:	spritemap
		piece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		piece	0, -8, 4, 1, 0, 1, 0, 1, 0
		piece	-$18, 0, 3, 2, $E, 0, 0, 1, 0
		piece	0, 0, 3, 2, $E, 1, 0, 1, 0
		endsprite

Map_objC5_a_006A:	spritemap
		piece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		piece	0, -8, 4, 1, 0, 1, 0, 1, 0
		piece	-$18, 0, 3, 2, $14, 0, 0, 1, 0
		piece	0, 0, 3, 2, $14, 1, 0, 1, 0
		endsprite

Map_objC5_a_008C:	spritemap
		piece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		piece	0, -8, 4, 1, 0, 1, 0, 1, 0
		piece	-$18, 0, 3, 1, $1A, 0, 0, 1, 0
		piece	0, 0, 3, 1, $1A, 1, 0, 1, 0
		endsprite

Map_objC5_a_00AE:	spritemap
		piece	-$10, -8, 2, 2, $1D, 0, 0, 2, 0
		piece	0, -8, 2, 2, $1D, 1, 0, 2, 0
		endsprite

Map_objC5_a_00C0:	spritemap
		piece	-$20, -8, 4, 2, $21, 0, 0, 1, 0
		piece	0, -8, 4, 2, $21, 1, 0, 1, 0
		endsprite

Map_objC5_a_00D2:	spritemap
		piece	-$10, -8, 4, 3, $29, 0, 0, 1, 0
		endsprite

Map_objC5_a_00DC:	spritemap
		piece	-$10, -8, 4, 3, $35, 0, 0, 1, 0
		endsprite

Map_objC5_a_00E6:	spritemap
		piece	-$10, -8, 4, 3, $41, 0, 0, 1, 0
		endsprite

Map_objC5_a_00F0:	spritemap
		piece	-$10, -8, 4, 3, $4D, 0, 0, 1, 0
		endsprite

Map_objC5_a_00FA:	spritemap
		piece	-$10, -8, 4, 3, $41, 1, 0, 1, 0
		endsprite

Map_objC5_a_0104:	spritemap
		piece	-$10, -8, 4, 3, $35, 1, 0, 1, 0
		endsprite

Map_objC5_a_010E:	spritemap
		piece	-8, -$40, 2, 4, $59, 0, 0, 1, 0
		piece	-8, -$20, 2, 4, $59, 0, 0, 1, 0
		piece	-8, 0, 2, 4, $59, 0, 0, 1, 0
		piece	-8, $20, 2, 4, $59, 0, 0, 1, 0
		endsprite

Map_objC5_a_0130:	spritemap
		piece	-$10, 0, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_013A:	spritemap
		piece	-$10, -$10, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $10, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_014C:	spritemap
		piece	-$10, -$20, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, 0, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $20, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_0166:	spritemap
		piece	-$10, -$30, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, -$10, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $10, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $30, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_0188:	spritemap
		piece	-$10, -$40, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, -$20, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, 0, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $20, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $40, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_01B2:	spritemap
		piece	-$10, -$50, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, -$30, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, -$10, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $10, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $30, 4, 4, $61, 0, 0, 2, 0
		piece	-$10, $50, 4, 1, $71, 0, 0, 2, 0
		endsprite

		even
