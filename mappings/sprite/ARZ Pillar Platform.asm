; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin pillar platform
; -------------------------------------------------------------------------------

Map_PillPlat:	index offset(*)
		ptr	Frame_PillPlat_Unused
		ptr	Frame_PillPlat

Frame_PillPlat_Unused:	spriteHeader
		piece	-$20, -8, 4x2, $55, pal4
		spritePiece	0, -8, 4, 2, $55, 0, 0, 3, 0
		endsprite

Frame_PillPlat:	spriteHeader
		spritePiece	-$20, -$30, 2, 2, $5D, 0, 0, 1, 0
		spritePiece	$10, -$30, 2, 2, $5D, 1, 0, 1, 0
		spritePiece	-$10, -$30, 4, 2, $61, 0, 0, 1, 0
		spritePiece	-$10, -$20, 4, 2, $69, 0, 0, 1, 0
		spritePiece	-$10, -$10, 4, 2, $69, 0, 0, 1, 0
		spritePiece	-$10, 0, 4, 2, $71, 0, 0, 1, 0
		spritePiece	-$10, $10, 4, 2, $69, 0, 0, 1, 0
		spritePiece	-$10, $20, 4, 2, $79, 0, 0, 1, 0
		spritePiece	-$10, $30, 2, 1, $81, 0, 0, 1, 0
		endsprite

		even
