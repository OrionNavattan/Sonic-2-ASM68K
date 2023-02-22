; ---------------------------------------------------------------------------
; Sprite mappings - points that appear when player destroys something
; ---------------------------------------------------------------------------

Map_Points:	index offset(*)
	ptr	Map_obj29_000E
	ptr	Map_obj29_0018
	ptr	Map_obj29_0022
	ptr	Map_obj29_002C
	ptr	Map_obj29_003E
	ptr	Map_obj29_0048
	ptr	Map_obj29_005A

Map_obj29_000E:	spriteHeader
	spritePiece	-8, -8, 2, 2, 2, 0, 0, 0, 0
	spriteFooter

Map_obj29_0018:	spriteHeader
	spritePiece	-8, -8, 2, 2, 6, 0, 0, 0, 0
	spriteFooter

Map_obj29_0022:	spriteHeader
	spritePiece	-8, -8, 2, 2, $A, 0, 0, 0, 0
	spriteFooter

Map_obj29_002C:	spriteHeader
	spritePiece	-8, -8, 1, 2, 0, 0, 0, 0, 0
	spritePiece	0, -8, 2, 2, $E, 0, 0, 0, 0
	spriteFooter

Map_obj29_003E:	spriteHeader
	spritePiece	-4, -8, 1, 2, 0, 0, 0, 0, 0
	spriteFooter

Map_obj29_0048:	spriteHeader
	spritePiece	-$10, -8, 2, 2, 2, 0, 0, 0, 0
	spritePiece	0, -8, 2, 2, $E, 0, 0, 0, 0
	spriteFooter

Map_obj29_005A:	spriteHeader
	spritePiece	-$10, -8, 2, 2, $A, 0, 0, 0, 0
	spritePiece	0, -8, 2, 2, $E, 0, 0, 0, 0
	spriteFooter

	even
