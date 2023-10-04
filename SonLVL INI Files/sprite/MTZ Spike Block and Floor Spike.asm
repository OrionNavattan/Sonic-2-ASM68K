; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis spike block and floor spike
; -------------------------------------------------------------------------------

Map_SpkBlk:	index offset(*)
		ptr	Map_obj68_000A
		ptr	Map_obj68_0014
		ptr	Map_obj68_001E
		ptr	Map_obj68_0028
		ptr	Map_obj68_0032

Map_obj68_000A:	spriteHeader
		spritePiece	-4, -$10, 1, 4, 0, 0, 1, 0, 0
		endsprite

Map_obj68_0014:	spriteHeader
		spritePiece	-$10, -4, 4, 1, 4, 0, 0, 0, 0
		endsprite

Map_obj68_001E:	spriteHeader
		spritePiece	-4, -$10, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_obj68_0028:	spriteHeader
		spritePiece	-$10, -4, 4, 1, 4, 1, 0, 0, 0
		endsprite

Map_obj68_0032:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, 0, 1, 0, 0, 0
		endsprite

		even
