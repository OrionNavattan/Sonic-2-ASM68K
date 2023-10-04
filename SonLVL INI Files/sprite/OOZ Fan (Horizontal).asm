; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean fans (horizontal)
; -------------------------------------------------------------------------------

Map_HorizFan:	index offset(*)
		ptr	Map_obj3F_a_0016
		ptr	Map_obj3F_a_0030
		ptr	Map_obj3F_a_004A
		ptr	Map_obj3F_a_0064
		ptr	Map_obj3F_a_007E
		ptr	Map_obj3F_a_0098
		ptr	Map_obj3F_a_007E
		ptr	Map_obj3F_a_0064
		ptr	Map_obj3F_a_004A
		ptr	Map_obj3F_a_0030
		ptr	Map_obj3F_a_0016

Map_obj3F_a_0016:	spriteHeader
		spritePiece	-$C, -$D, 1, 3, 0, 0, 0, 0, 0
		spritePiece	-4, -$10, 2, 2, 7, 0, 0, 0, 0
		spritePiece	-4, 0, 2, 2, 7, 0, 1, 0, 0
		endsprite

Map_obj3F_a_0030:	spriteHeader
		spritePiece	-$C, -$B, 1, 3, 0, 0, 1, 0, 0
		spritePiece	-4, -$10, 2, 2, 7, 0, 0, 0, 0
		spritePiece	-4, 0, 2, 2, 7, 0, 1, 0, 0
		endsprite

Map_obj3F_a_004A:	spriteHeader
		spritePiece	-$C, -$10, 1, 4, 3, 0, 0, 0, 0
		spritePiece	-4, -$10, 2, 2, 7, 0, 0, 0, 0
		spritePiece	-4, 0, 2, 2, 7, 0, 1, 0, 0
		endsprite

Map_obj3F_a_0064:	spriteHeader
		spritePiece	-$C, -$D, 1, 3, 0, 0, 0, 0, 0
		spritePiece	-4, -$10, 2, 2, $B, 0, 0, 0, 0
		spritePiece	-4, 0, 2, 2, $B, 0, 1, 0, 0
		endsprite

Map_obj3F_a_007E:	spriteHeader
		spritePiece	-$C, -$B, 1, 3, 0, 0, 1, 0, 0
		spritePiece	-4, -$10, 2, 2, $B, 0, 0, 0, 0
		spritePiece	-4, 0, 2, 2, $B, 0, 1, 0, 0
		endsprite

Map_obj3F_a_0098:	spriteHeader
		spritePiece	-$C, -$10, 1, 4, 3, 0, 0, 0, 0
		spritePiece	-4, -$10, 2, 2, $B, 0, 0, 0, 0
		spritePiece	-4, 0, 2, 2, $B, 0, 1, 0, 0
		endsprite

		even
