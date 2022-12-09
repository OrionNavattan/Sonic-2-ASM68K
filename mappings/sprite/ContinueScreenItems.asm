; -------------------------------------------------------------------------------
; Sprite Mappings - text, countdown, stars, and Tails on the continue screen
; Art starts at $A000 in VRAM
; -------------------------------------------------------------------------------

Map_ContinueScreenItems:	index offset(*)
	ptr	Map_objDA_000C
	ptr	Map_objDA_000C
	ptr	Map_objDA_0066
	ptr	Map_objDA_0070
	ptr	Map_objDA_007A
	ptr	Map_objDA_0084

Map_objDA_000C:	spriteHeader
	spritePiece	-$3C, -8, 2, 2, $90, 0, 0, 0, 0
	spritePiece	-$2C, -8, 2, 2, $88, 0, 0, 0, 0
	spritePiece	-$1C, -8, 2, 2, $84, 0, 0, 0, 0
	spritePiece	-$C, -8, 2, 2, $94, 0, 0, 0, 0
	spritePiece	4, -8, 1, 2, $98, 0, 0, 0, 0
	spritePiece	$C, -8, 2, 2, $84, 0, 0, 0, 0
	spritePiece	$1C, -8, 2, 2, $9A, 0, 0, 0, 0
	spritePiece	$2C, -8, 2, 2, $80, 0, 0, 0, 0
	spritePiece	-$18, $38, 2, 2, $20, 0, 0, 1, 0
	spritePiece	8, $38, 2, 2, $20, 0, 0, 1, 0
	spritePiece	-8, $36, 2, 2, $1FC, 0, 0, 0, 0
	spriteFooter

Map_objDA_0066:	spriteHeader
	spritePiece	-$10, -$10, 4, 4, 0, 0, 0, 0, 0
	spriteFooter

Map_objDA_0070:	spriteHeader
	spritePiece	-$10, -$10, 4, 4, $10, 0, 0, 0, 0
	spriteFooter

Map_objDA_007A:	spriteHeader
	spritePiece	0, 0, 2, 3, 0, 0, 0, 0, 0
	spriteFooter

Map_objDA_0084:	spriteHeader
	spritePiece	0, 0, 2, 3, 6, 0, 0, 0, 0
	spriteFooter

	even
