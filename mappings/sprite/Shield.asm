; ---------------------------------------------------------------------------
; Sprite mappings - shield
; ---------------------------------------------------------------------------

Map_Shield:	index offset(*)
	ptr	Map_obj38_000C
	ptr	Map_obj38_002E
	ptr	Map_obj38_0050
	ptr	Map_obj38_0072
	ptr	Map_obj38_0094
	ptr	Map_obj38_00B6

Map_obj38_000C:	spriteHeader
	spritePiece	-$10, -$10, 2, 2, 0, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, 0, 1, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, 0, 0, 1, 0, 0
	spritePiece	0, 0, 2, 2, 0, 1, 1, 0, 0
	spriteFooter

Map_obj38_002E:	spriteHeader
	spritePiece	-$10, -$10, 2, 2, 4, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, 4, 1, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, 4, 0, 1, 0, 0
	spritePiece	0, 0, 2, 2, 4, 1, 1, 0, 0
	spriteFooter

Map_obj38_0050:	spriteHeader
	spritePiece	-$10, -$10, 2, 2, 8, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, 8, 1, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, 8, 0, 1, 0, 0
	spritePiece	0, 0, 2, 2, 8, 1, 1, 0, 0
	spriteFooter

Map_obj38_0072:	spriteHeader
	spritePiece	-$10, -$10, 2, 2, $C, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, $C, 1, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, $C, 0, 1, 0, 0
	spritePiece	0, 0, 2, 2, $C, 1, 1, 0, 0
	spriteFooter

Map_obj38_0094:	spriteHeader
	spritePiece	-$10, -$10, 2, 2, $10, 0, 0, 0, 0
	spritePiece	0, -$10, 2, 2, $10, 1, 0, 0, 0
	spritePiece	-$10, 0, 2, 2, $10, 0, 1, 0, 0
	spritePiece	0, 0, 2, 2, $10, 1, 1, 0, 0
	spriteFooter

Map_obj38_00B6:	spriteHeader
	spritePiece	-$18, -$20, 3, 4, $14, 0, 0, 0, 0
	spritePiece	0, -$20, 3, 4, $14, 1, 0, 0, 0
	spritePiece	-$18, 0, 3, 4, $14, 0, 1, 0, 0
	spritePiece	0, 0, 3, 4, $14, 1, 1, 0, 0
	spriteFooter

	even
