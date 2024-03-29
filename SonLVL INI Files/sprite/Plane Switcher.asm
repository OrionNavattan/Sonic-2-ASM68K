; -------------------------------------------------------------------------------
; Sprite mappings - Collision plane switcher
; -------------------------------------------------------------------------------

Map_PSwitch:	index offset(*)
		ptr	Map_obj03_0010
		ptr	Map_obj03_0032
		ptr	Map_obj03_0054
		ptr	Map_obj03_0054
		ptr	Map_obj03_0076
		ptr	Map_obj03_0098
		ptr	Map_obj03_00BA
		ptr	Map_obj03_00BA

Map_obj03_0010:	spriteHeader
		spritePiece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, $10, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj03_0032:	spriteHeader
		spritePiece	-8, -$40, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, $30, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj03_0054:	spriteHeader
		spritePiece	-8, -$80, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, $70, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj03_0076:	spriteHeader
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$10, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj03_0098:	spriteHeader
		spritePiece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj03_00BA:	spriteHeader
		spritePiece	-$80, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$70, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

		even
