; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin falling pillar
; -------------------------------------------------------------------------------

Map_FallPillar:	index offset(*)
		ptr	Map_obj23_0006
		ptr	Map_obj23_0038
		ptr	Map_obj23_0052

Map_obj23_0006:	spriteHeader
		spritePiece	-$20, -$20, 2, 2, $5D, 0, 0, 0, 0
		spritePiece	$10, -$20, 2, 2, $5D, 1, 0, 0, 0
		spritePiece	-$10, -$20, 4, 2, $61, 0, 0, 0, 0
		spritePiece	-$10, -$10, 4, 2, $69, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, $69, 0, 0, 0, 0
		spritePiece	-$10, $10, 4, 2, $71, 0, 0, 0, 0
		endsprite

Map_obj23_0038:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, $69, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, $79, 0, 0, 0, 0
		spritePiece	-$10, $10, 2, 1, $81, 0, 0, 0, 0
		endsprite

Map_obj23_0052:	spriteHeader
		spritePiece	-$10, 9, 4, 2, $8B, 0, 0, 1, 0
		spritePiece	-$10, -$10, 4, 2, $69, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, $79, 0, 0, 0, 0
		spritePiece	-$10, $10, 2, 1, $81, 0, 0, 0, 0
		endsprite

		even
