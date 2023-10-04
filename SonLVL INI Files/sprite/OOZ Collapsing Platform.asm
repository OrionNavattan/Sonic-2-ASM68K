; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_OOZ:	index offset(*)
		ptr	Map_obj1F_b_0006
		ptr	Map_obj1F_b_0006
		ptr	Map_obj1F_b_0006

Map_obj1F_b_0006:	spriteHeader
		spritePiece	-$40, -$10, 4, 4, $10, 1, 0, 0, 0
		spritePiece	-$20, -$10, 4, 4, $10, 1, 0, 0, 0
		spritePiece	0, -$10, 4, 4, $10, 1, 0, 0, 0
		spritePiece	$20, -$10, 4, 4, 0, 1, 0, 0, 0
		spritePiece	-$40, $10, 4, 2, $20, 1, 0, 0, 0
		spritePiece	-$20, $10, 4, 2, $20, 1, 0, 0, 0
		spritePiece	0, $10, 4, 2, $20, 1, 0, 0, 0
		endsprite

		even
