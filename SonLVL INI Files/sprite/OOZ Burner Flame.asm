; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean burner flame
; -------------------------------------------------------------------------------

Map_Burner:	index offset(*)
		ptr	Map_obj33_b_0006
		ptr	Map_obj33_b_0018
		ptr	Map_obj33_b_002A

Map_obj33_b_0006:	spriteHeader
		spritePiece	-$10, -8, 2, 3, 0, 0, 0, 0, 0
		spritePiece	0, -8, 2, 3, 0, 1, 0, 0, 0
		endsprite

Map_obj33_b_0018:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 6, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, 6, 1, 0, 0, 0
		endsprite

Map_obj33_b_002A:	spriteHeader
		spritePiece	-$10, 0, 2, 2, $E, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, $E, 1, 0, 0, 0
		endsprite

		even
