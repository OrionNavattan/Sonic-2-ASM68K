; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night snake platform
; -------------------------------------------------------------------------------

Map_Snake:	index offset(*)
		ptr	Map_objD2_0020
		ptr	Map_objD2_002A
		ptr	Map_objD2_003C
		ptr	Map_objD2_0056
		ptr	Map_objD2_0078
		ptr	Map_objD2_00A2
		ptr	Map_objD2_00CC
		ptr	Map_objD2_00F6
		ptr	Map_objD2_00F6
		ptr	Map_objD2_0120
		ptr	Map_objD2_014A
		ptr	Map_objD2_0174
		ptr	Map_objD2_0056
		ptr	Map_objD2_003C
		ptr	Map_objD2_002A
		ptr	Map_objD2_0020

Map_objD2_0020:	spriteHeader
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_002A:	spriteHeader
		spritePiece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_003C:	spriteHeader
		spritePiece	-8, -$18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0056:	spriteHeader
		spritePiece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, $10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0078:	spriteHeader
		spritePiece	0, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, $10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_00A2:	spriteHeader
		spritePiece	8, -$18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, -$18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, 8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_00CC:	spriteHeader
		spritePiece	$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_00F6:	spriteHeader
		spritePiece	$18, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	8, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$28, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0120:	spriteHeader
		spritePiece	$10, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, -$10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_014A:	spriteHeader
		spritePiece	8, 8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	8, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	8, -$18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$18, -$18, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_objD2_0174:	spriteHeader
		spritePiece	0, $10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -$20, 2, 2, 0, 0, 0, 0, 0
		endsprite

		even
