; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave double leaf drawbridge
; -------------------------------------------------------------------------------

Map_DBridge:	index offset(*)
		ptr	Frame_DBridge_Closed
		ptr	Frame_DBridge_Opening1
		ptr	Frame_DBridge_Opening2
		ptr	Frame_DBridge_Opening3
		ptr	Frame_DBridge_Open

Frame_DBridge_Closed:	spriteHeader
		spritePiece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$30, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DBridge_Opening1:	spriteHeader
		spritePiece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$32, -2, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$23, 4, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$14, $A, 2, 2, 0, 0, 0, 0, 0
		spritePiece	4, $A, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$13, 4, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$22, -2, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DBridge_Opening2:	spriteHeader
		spritePiece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$35, 3, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$2A, $E, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$1F, $19, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$F, $19, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$1A, $E, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$25, 3, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DBridge_Opening3:	spriteHeader
		spritePiece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$3A, 6, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$34, $15, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$2E, $24, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$1E, $24, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$24, $15, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$2A, 6, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Frame_DBridge_Open:	spriteHeader
		spritePiece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$40, 8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$40, $18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$40, $28, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, 8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, $18, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$30, $28, 2, 2, 0, 0, 0, 0, 0
		endsprite

		even
