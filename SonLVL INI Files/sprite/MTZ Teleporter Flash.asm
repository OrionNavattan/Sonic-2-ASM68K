; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis teleporter flash
; -------------------------------------------------------------------------------

Map_TelptrFlash:	index offset(*)
		ptr	Frame_TelptrFlash_Blank
		ptr	Frame_TelptrFlash_Flash

Frame_TelptrFlash_Blank:	spriteHeader
		endsprite

Frame_TelptrFlash_Flash:	spriteHeader
		spritePiece	-$14, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$14, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-$14, 0, 2, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 0, 0, 0, 0, 0
		endsprite

		even
