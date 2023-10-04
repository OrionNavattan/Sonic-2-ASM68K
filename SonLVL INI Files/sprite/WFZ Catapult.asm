; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress catapult
; -------------------------------------------------------------------------------

Map_CPult:	index offset(*)
		ptr	Frame_CPult

Frame_CPult:	spriteHeader
		spritePiece	-$10, -$17, 3, 1, 0, 0, 0, 0, 0
		spritePiece	8, -$1F, 1, 2, 3, 0, 0, 0, 0
		endsprite

		even
