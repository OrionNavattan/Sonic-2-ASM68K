; -------------------------------------------------------------------------------
; Sprite mappings - MTZ stomping pistons
; -------------------------------------------------------------------------------

Map_Stomp:	index offset(*)
		ptr	Map_obj64_0004
		ptr	Map_obj64_0056

Map_obj64_0004:	spriteHeader
		spritePiece	-$40, -$C, 4, 3, 1, 0, 0, 0, 0
		spritePiece	-$20, -$C, 4, 3, 1, 1, 0, 0, 0
		spritePiece	0, -$C, 4, 3, 1, 0, 0, 0, 0
		spritePiece	$20, -$C, 4, 3, 1, 1, 0, 0, 0
		spritePiece	-$28, $C, 2, 4, $D, 0, 0, 0, 0
		spritePiece	-$28, $2C, 2, 4, $D, 0, 0, 0, 0
		spritePiece	-$28, $4C, 2, 4, $D, 0, 0, 0, 0
		spritePiece	$18, $C, 2, 4, $D, 0, 0, 0, 0
		spritePiece	$18, $2C, 2, 4, $D, 0, 0, 0, 0
		spritePiece	$18, $4C, 2, 4, $D, 0, 0, 0, 0
		endsprite

Map_obj64_0056:	spriteHeader
		spritePiece	-$10, -$20, 2, 4, $57, 0, 0, 0, 0
		spritePiece	0, -$20, 2, 4, $57, 1, 0, 0, 0
		spritePiece	-$10, 0, 2, 4, $57, 0, 1, 0, 0
		spritePiece	0, 0, 2, 4, $57, 1, 1, 0, 0
		endsprite

		even
