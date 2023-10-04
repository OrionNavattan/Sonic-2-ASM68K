; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis platforms
; -------------------------------------------------------------------------------

Map_MTZPlats:	index offset(*)
		ptr	Map_obj65_a_0008
		ptr	Map_obj65_a_002A
		ptr	Map_obj65_a_0008
		ptr	Map_obj65_a_0008

Map_obj65_a_0008:	spriteHeader
		spritePiece	-$40, -$C, 4, 3, $4B, 0, 0, 0, 0
		spritePiece	-$20, -$C, 4, 3, $4B, 0, 0, 0, 0
		spritePiece	0, -$C, 4, 3, $4B, 0, 0, 0, 0
		spritePiece	$20, -$C, 4, 3, $4B, 0, 0, 0, 0
		endsprite

Map_obj65_a_002A:	spriteHeader
		spritePiece	-$20, -$C, 4, 3, $39, 0, 0, 0, 0
		spritePiece	0, -$C, 4, 3, $39, 1, 0, 0, 0
		endsprite

		even
