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
		spritePiece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		spritePiece	0, -8, 4, 1, 4, 0, 0, 1, 0
		spritePiece	-$18, 0, 3, 2, 8, 0, 0, 1, 0
		spritePiece	0, 0, 3, 2, 8, 1, 0, 1, 0
		endsprite

Map_objC5_a_0048:	spritemap
		spritePiece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		spritePiece	0, -8, 4, 1, 0, 1, 0, 1, 0
		spritePiece	-$18, 0, 3, 2, $E, 0, 0, 1, 0
		spritePiece	0, 0, 3, 2, $E, 1, 0, 1, 0
		endsprite

Map_objC5_a_006A:	spritemap
		spritePiece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		spritePiece	0, -8, 4, 1, 0, 1, 0, 1, 0
		spritePiece	-$18, 0, 3, 2, $14, 0, 0, 1, 0
		spritePiece	0, 0, 3, 2, $14, 1, 0, 1, 0
		endsprite

Map_objC5_a_008C:	spritemap
		spritePiece	-$20, -8, 4, 1, 0, 0, 0, 1, 0
		spritePiece	0, -8, 4, 1, 0, 1, 0, 1, 0
		spritePiece	-$18, 0, 3, 1, $1A, 0, 0, 1, 0
		spritePiece	0, 0, 3, 1, $1A, 1, 0, 1, 0
		endsprite

Map_objC5_a_00AE:	spritemap
		spritePiece	-$10, -8, 2, 2, $1D, 0, 0, 2, 0
		spritePiece	0, -8, 2, 2, $1D, 1, 0, 2, 0
		endsprite

Map_objC5_a_00C0:	spritemap
		spritePiece	-$20, -8, 4, 2, $21, 0, 0, 1, 0
		spritePiece	0, -8, 4, 2, $21, 1, 0, 1, 0
		endsprite

Map_objC5_a_00D2:	spritemap
		spritePiece	-$10, -8, 4, 3, $29, 0, 0, 1, 0
		endsprite

Map_objC5_a_00DC:	spritemap
		spritePiece	-$10, -8, 4, 3, $35, 0, 0, 1, 0
		endsprite

Map_objC5_a_00E6:	spritemap
		spritePiece	-$10, -8, 4, 3, $41, 0, 0, 1, 0
		endsprite

Map_objC5_a_00F0:	spritemap
		spritePiece	-$10, -8, 4, 3, $4D, 0, 0, 1, 0
		endsprite

Map_objC5_a_00FA:	spritemap
		spritePiece	-$10, -8, 4, 3, $41, 1, 0, 1, 0
		endsprite

Map_objC5_a_0104:	spritemap
		spritePiece	-$10, -8, 4, 3, $35, 1, 0, 1, 0
		endsprite

Map_objC5_a_010E:	spritemap
		spritePiece	-8, -$40, 2, 4, $59, 0, 0, 1, 0
		spritePiece	-8, -$20, 2, 4, $59, 0, 0, 1, 0
		spritePiece	-8, 0, 2, 4, $59, 0, 0, 1, 0
		spritePiece	-8, $20, 2, 4, $59, 0, 0, 1, 0
		endsprite

Map_objC5_a_0130:	spritemap
		spritePiece	-$10, 0, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_013A:	spritemap
		spritePiece	-$10, -$10, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $10, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_014C:	spritemap
		spritePiece	-$10, -$20, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, 0, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $20, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_0166:	spritemap
		spritePiece	-$10, -$30, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, -$10, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $10, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $30, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_0188:	spritemap
		spritePiece	-$10, -$40, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, -$20, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, 0, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $20, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $40, 4, 1, $71, 0, 0, 2, 0
		endsprite

Map_objC5_a_01B2:	spritemap
		spritePiece	-$10, -$50, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, -$30, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, -$10, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $10, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $30, 4, 4, $61, 0, 0, 2, 0
		spritePiece	-$10, $50, 4, 1, $71, 0, 0, 2, 0
		endsprite

		even
