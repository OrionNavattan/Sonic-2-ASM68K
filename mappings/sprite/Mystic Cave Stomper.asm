; -------------------------------------------------------------------------------
; Sprite Mappings - Mystic Cave Stomper
; -------------------------------------------------------------------------------

Map_Stomper:	index offset(*)
	ptr	Frame_Stomper

Frame_Stomper:	spriteHeader
	spritePiece	-$10, -$50, 3, 2, $1A, 0, 0, 0, 0
	spritePiece	-$10, -$40, 4, 4, $20, 0, 0, 0, 0
	spritePiece	-$10, -$20, 4, 4, $30, 0, 0, 0, 0
	spritePiece	-$10, 0, 4, 4, $30, 0, 1, 0, 0
	spritePiece	-$10, $20, 4, 4, $20, 0, 1, 0, 0
	spritePiece	-$10, $40, 3, 2, $1A, 0, 1, 0, 0
	spriteFooter

	even
