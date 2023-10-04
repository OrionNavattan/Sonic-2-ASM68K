; -------------------------------------------------------------------------------
; Sprite mappings - Mystic Cave spikeball on chain
; -------------------------------------------------------------------------------

Map_BrckSpkChn:	index offset(*)
		ptr	Frame_Spikeball
		ptr	Frame_Link
		ptr	Frame_Bricks

Frame_Spikeball:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, $7A, 0, 0, 0, 0
		spritePiece	-$10, 0, 4, 2, $7A, 1, 1, 0, 0
		endsprite

Frame_Link:	spriteHeader
		spritePiece	-8, -8, 2, 2, $66, 0, 0, 2, 0
		endsprite

Frame_Bricks:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, $40, 0, 0, 2, 0
		spritePiece	0, -$10, 2, 4, $40, 1, 0, 2, 0
		endsprite

		even
