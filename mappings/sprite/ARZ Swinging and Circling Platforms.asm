; -------------------------------------------------------------------------------
; Sprite Mappings - Aquatic Ruin swinging and circling platforms
; -------------------------------------------------------------------------------

Map_Swing_Circle_ARZ:	index offset(*)
	ptr	Map_obj83_0008
	ptr	Map_obj83_001A
	ptr	Map_obj83_0024
	ptr	Map_obj83_0036

Map_obj83_0008:	spriteHeader
	spritePiece	-$20, -8, 4, 2, $55, 0, 0, 3, 0
	spritePiece	0, -8, 4, 2, $55, 0, 0, 3, 0
	spriteFooter

Map_obj83_001A:	spriteHeader
	spritePiece	-8, -8, 2, 2, $51, 0, 0, 1, 0
	spriteFooter

Map_obj83_0024:	spriteHeader
	spritePiece	-$10, -$10, 4, 3, $45, 0, 0, 2, 0
	spritePiece	-8, -8, 2, 2, $51, 0, 0, 1, 0
	spriteFooter

Map_obj83_0036:	spriteHeader
	spriteFooter

	even
