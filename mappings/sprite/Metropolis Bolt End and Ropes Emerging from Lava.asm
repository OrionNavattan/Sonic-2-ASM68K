; -------------------------------------------------------------------------------
; Sprite Mappings - Metropolis bolt ends and ropes emerging/disappearing into lava
; -------------------------------------------------------------------------------

Map_BoltEnd_Rope:	index offset(*)
	ptr	Frame_Rope1
	ptr	Frame_Rope2
	ptr	Frame_BoltEnd

Frame_Rope1:	spriteHeader
	spritePiece	-4, -8, 1, 2, 4, 0, 0, 0, 0
	spriteFooter

Frame_Rope2:	spriteHeader
	spritePiece	-4, -8, 1, 2, 6, 0, 0, 0, 0
	spriteFooter

Frame_BoltEnd:	spriteHeader
	spritePiece	-$10, -4, 4, 1, 0, 0, 0, 0, 0
	spriteFooter

	even
