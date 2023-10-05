; ---------------------------------------------------------------------------
; Sprite mappings - Marble, Star Light, and Scrap Brain collapsing floors
; (unused Sonic 1 leftovers)
; ---------------------------------------------------------------------------

Map_CFlo_S1:	index offset(*)
		ptr	Map_obj1F_a_0008
		ptr	Map_obj1F_a_002A
		ptr	Map_obj1F_a_006C
		ptr	Map_obj1F_a_008E

Map_obj1F_a_0008:	spritemap
		spritePiece	-$20, -8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, 8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, 8, 4, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj1F_a_002A:	spritemap
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$10, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, 8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, 8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	0, 8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$10, 8, 2, 2, 0, 0, 0, 0, 0
		endsprite

Map_obj1F_a_006C:	spritemap
		spritePiece	-$20, -8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$20, 8, 4, 2, 8, 0, 0, 0, 0
		spritePiece	0, -8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, 8, 4, 2, 8, 0, 0, 0, 0
		endsprite

Map_obj1F_a_008E:	spritemap
		spritePiece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$10, -8, 2, 2, 4, 0, 0, 0, 0
		spritePiece	0, -8, 2, 2, 0, 0, 0, 0, 0
		spritePiece	$10, -8, 2, 2, 4, 0, 0, 0, 0
		spritePiece	-$20, 8, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$10, 8, 2, 2, $C, 0, 0, 0, 0
		spritePiece	0, 8, 2, 2, 8, 0, 0, 0, 0
		spritePiece	$10, 8, 2, 2, $C, 0, 0, 0, 0
		endsprite

		even
