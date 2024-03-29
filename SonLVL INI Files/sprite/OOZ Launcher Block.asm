; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean breakable launcher block
; -------------------------------------------------------------------------------

Map_LaunchBlock:	index offset(*)
		ptr	Map_obj3D_0008
		ptr	Map_obj3D_002A
		ptr	Map_obj3D_00AC
		ptr	Map_obj3D_00CE

Map_obj3D_0008:	spriteHeader
		spritePiece	-$10, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	8, -$10, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj3D_002A:	spriteHeader
		spritePiece	-$10, -$10, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 1, 1, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 1, 1, 0, 0, 0, 0, 0
		spritePiece	8, -$10, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -8, 1, 1, 1, 0, 0, 0, 0
		spritePiece	-8, -8, 1, 1, 1, 0, 0, 0, 0
		spritePiece	0, -8, 1, 1, 1, 0, 0, 0, 0
		spritePiece	8, -8, 1, 1, 1, 0, 0, 0, 0
		spritePiece	-$10, 0, 1, 1, 2, 0, 0, 0, 0
		spritePiece	-8, 0, 1, 1, 2, 0, 0, 0, 0
		spritePiece	0, 0, 1, 1, 2, 0, 0, 0, 0
		spritePiece	8, 0, 1, 1, 2, 0, 0, 0, 0
		spritePiece	-$10, 8, 1, 1, 3, 0, 0, 0, 0
		spritePiece	-8, 8, 1, 1, 3, 0, 0, 0, 0
		spritePiece	0, 8, 1, 1, 3, 0, 0, 0, 0
		spritePiece	8, 8, 1, 1, 3, 0, 0, 0, 0
		endsprite

Map_obj3D_00AC:	spriteHeader
		spritePiece	-$10, -$10, 4, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -8, 4, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, 8, 4, 1, 0, 0, 0, 0, 0
		endsprite

Map_obj3D_00CE:	spriteHeader
		spritePiece	-$10, -$10, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 1, 1, 1, 0, 0, 0, 0
		spritePiece	0, -$10, 1, 1, 2, 0, 0, 0, 0
		spritePiece	8, -$10, 1, 1, 3, 0, 0, 0, 0
		spritePiece	-$10, -8, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-8, -8, 1, 1, 1, 0, 0, 0, 0
		spritePiece	0, -8, 1, 1, 2, 0, 0, 0, 0
		spritePiece	8, -8, 1, 1, 3, 0, 0, 0, 0
		spritePiece	-$10, 0, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 1, 1, 1, 0, 0, 0, 0
		spritePiece	0, 0, 1, 1, 2, 0, 0, 0, 0
		spritePiece	8, 0, 1, 1, 3, 0, 0, 0, 0
		spritePiece	-$10, 8, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-8, 8, 1, 1, 1, 0, 0, 0, 0
		spritePiece	0, 8, 1, 1, 2, 0, 0, 0, 0
		spritePiece	8, 8, 1, 1, 3, 0, 0, 0, 0
		endsprite

		even
