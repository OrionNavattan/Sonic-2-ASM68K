; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_ARZ:	index offset(*)
		ptr	Map_obj1F_d_0004
		ptr	Map_obj1F_d_0026

Map_obj1F_d_0004:	spriteHeader
		spritePiece	-$20, -$10, 4, 2, $55, 0, 0, 0, 0
		spritePiece	0, -$10, 4, 2, $55, 1, 0, 0, 0
		spritePiece	-$20, 0, 4, 2, $A3, 0, 0, 0, 0
		spritePiece	0, 0, 4, 2, $A3, 1, 0, 0, 0
		endsprite

Map_obj1F_d_0026:	spriteHeader
		spritePiece	-$20, -$10, 2, 2, $55, 0, 0, 0, 0
		spritePiece	-$10, -$10, 2, 2, $59, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 2, $59, 1, 0, 0, 0
		spritePiece	$10, -$10, 2, 2, $55, 1, 0, 0, 0
		spritePiece	-$20, 0, 2, 2, $A3, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $A7, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, $A7, 1, 0, 0, 0
		spritePiece	$10, 0, 2, 2, $A3, 1, 0, 0, 0
		endsprite

		even
