; -------------------------------------------------------------------------------
; Sprite mappings - Special Stage bombs
; -------------------------------------------------------------------------------

Map_BombSpec:	index offset(*)
		ptr	Map_obj61_001A
		ptr	Map_obj61_0024
		ptr	Map_obj61_002E
		ptr	Map_obj61_0038
		ptr	Map_obj61_0042
		ptr	Map_obj61_004C
		ptr	Map_obj61_0056
		ptr	Map_obj61_0060
		ptr	Map_obj61_006A
		ptr	Map_obj61_0074
		ptr	Map_obj61_007E
		ptr	Map_obj61_0088
		ptr	Map_obj61_009A

Map_obj61_001A:	spritemap
		spritePiece	-4, -4, 1, 1, 0, 0, 0, 0, 1
		endsprite

Map_obj61_0024:	spritemap
		spritePiece	-4, -4, 1, 1, 1, 0, 0, 0, 1
		endsprite

Map_obj61_002E:	spritemap
		spritePiece	-8, -8, 2, 2, 2, 0, 0, 0, 1
		endsprite

Map_obj61_0038:	spritemap
		spritePiece	-8, -8, 2, 2, 6, 0, 0, 0, 1
		endsprite

Map_obj61_0042:	spritemap
		spritePiece	-8, -8, 2, 2, $A, 0, 0, 0, 1
		endsprite

Map_obj61_004C:	spritemap
		spritePiece	-$C, -$C, 3, 3, $E, 0, 0, 0, 1
		endsprite

Map_obj61_0056:	spritemap
		spritePiece	-$C, -$C, 3, 3, $17, 0, 0, 0, 1
		endsprite

Map_obj61_0060:	spritemap
		spritePiece	-$10, -$10, 4, 4, $20, 0, 0, 0, 1
		endsprite

Map_obj61_006A:	spritemap
		spritePiece	-$10, -$10, 4, 4, $30, 0, 0, 0, 1
		endsprite

Map_obj61_0074:	spritemap
		spritePiece	-$10, -$10, 4, 4, $40, 0, 0, 0, 1
		endsprite

Map_obj61_007E:	spritemap
		spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 0, 1
		endsprite

Map_obj61_0088:	spritemap
		spritePiece	-$18, -$18, 4, 4, $10, 0, 0, 0, 1
		spritePiece	-8, -$18, 4, 4, $10, 0, 0, 0, 1
		endsprite

Map_obj61_009A:	spritemap
		spritePiece	-$28, -$20, 4, 4, $20, 0, 0, 0, 1
		spritePiece	-$10, -$28, 4, 4, $20, 0, 1, 0, 1
		spritePiece	8, -$20, 4, 4, $20, 1, 0, 0, 1
		endsprite

		even
