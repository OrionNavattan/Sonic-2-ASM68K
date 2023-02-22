; ---------------------------------------------------------------------------
; Sprite mappings - GHZ and SLZ smashable walls (unused Sonic 1 leftover)
; ---------------------------------------------------------------------------

Map_Smash:	index offset(*)
	ptr	Map_obj3C_0006
	ptr	Map_obj3C_0048
	ptr	Map_obj3C_008A

Map_obj3C_0006:	spriteHeader
	spritePiece	-$10, -$20, 2, 2, 0, 0, 0, 0, 0
	spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, 0, 0, 0, 0, 0
	spritePiece	-$10, $10, 2, 2, 0, 0, 0, 0, 0
	spritePiece	0, -$20, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, 0, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, $10, 2, 2, 4, 0, 0, 0, 0
	spriteFooter

Map_obj3C_0048:	spriteHeader
	spritePiece	-$10, -$20, 2, 2, 4, 0, 0, 0, 0
	spritePiece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, 4, 0, 0, 0, 0
	spritePiece	-$10, $10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, -$20, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, 0, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, $10, 2, 2, 4, 0, 0, 0, 0
	spriteFooter

Map_obj3C_008A:	spriteHeader
	spritePiece	-$10, -$20, 2, 2, 4, 0, 0, 0, 0
	spritePiece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, 4, 0, 0, 0, 0
	spritePiece	-$10, $10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, -$20, 2, 2, 8, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, 8, 0, 0, 0, 0
	spritePiece	0, 0, 2, 2, 8, 0, 0, 0, 0
	spritePiece	0, $10, 2, 2, 8, 0, 0, 0, 0
	spriteFooter

	even
