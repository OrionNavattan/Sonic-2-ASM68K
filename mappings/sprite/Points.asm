; ---------------------------------------------------------------------------
; Sprite mappings - points that appear when player destroys something
; ---------------------------------------------------------------------------

Map_Points:	index offset(*)
	ptr	Frame_Points_100
	ptr	Frame_Points_200
	ptr	Frame_Points_500
	ptr	Frame_Points_1K
	ptr	Frame_Points_10
	ptr	Frame_Points_10K
	ptr	Frame_Points_50K

Frame_Points_100:	spriteHeader
	spritePiece	-8, -8, 2, 2, 2, 0, 0, 0, 0
	spriteFooter

Frame_Points_200:	spriteHeader
	spritePiece	-8, -8, 2, 2, 6, 0, 0, 0, 0
	spriteFooter

Frame_Points_500:	spriteHeader
	spritePiece	-8, -8, 2, 2, $A, 0, 0, 0, 0
	spriteFooter

Frame_Points_1K:	spriteHeader
	spritePiece	-8, -8, 1, 2, 0, 0, 0, 0, 0
	spritePiece	0, -8, 2, 2, $E, 0, 0, 0, 0
	spriteFooter

Frame_Points_10:	spriteHeader
	spritePiece	-4, -8, 1, 2, 0, 0, 0, 0, 0
	spriteFooter

Frame_Points_10K:	spriteHeader
	spritePiece	-$10, -8, 2, 2, 2, 0, 0, 0, 0
	spritePiece	0, -8, 2, 2, $E, 0, 0, 0, 0
	spriteFooter

Frame_Points_50K:	spriteHeader
	spritePiece	-$10, -8, 2, 2, $A, 0, 0, 0, 0
	spritePiece	0, -8, 2, 2, $E, 0, 0, 0, 0
	spriteFooter

	even
