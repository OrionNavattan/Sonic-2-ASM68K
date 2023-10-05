; -------------------------------------------------------------------------------
; Sprite mappings - Turtloid enemy (SCZ)
; Also includes Turtloid's rider, Turtloid's projectile, and Turtloid's jet
; (the last also being used by Balkiry)
; -------------------------------------------------------------------------------

Map_Turt:	index offset(*)
		ptr	Frame_Turt_Normal			; normal
		ptr	Frame_Turt_FireProj			; firing projectile
		ptr	Frame_TRider_Normal
		ptr	Frame_TRider_FireProj
		ptr	Frame_Turt_Proj1
		ptr	Frame_Turt_Proj2
		ptr	Frame_TurtJet1
		ptr	Frame_TurtJet2
		ptr	Frame_BalkJet1
		ptr	Frame_BalkJet2

Frame_Turt_Normal:	spritemap
		spritePiece	-$1C, -$10, 3, 2, 0, 0, 0, 1, 1
		spritePiece	-4, -$10, 4, 4, 6, 0, 0, 1, 1
		spritePiece	-$1C, 0, 3, 2, $16, 0, 0, 1, 1
		endsprite

Frame_Turt_FireProj:	spritemap
		spritePiece	-$1C, -$10, 3, 2, 0, 0, 0, 1, 1
		spritePiece	-$1C, 0, 3, 2, $1C, 0, 0, 1, 1
		spritePiece	-4, -$10, 4, 4, 6, 0, 0, 1, 1
		endsprite

Frame_TRider_Normal:	spritemap
		spritePiece	-$C, -$C, 3, 3, $22, 0, 0, 1, 1
		endsprite

Frame_TRider_FireProj:	spritemap
		spritePiece	-$C, -$C, 3, 3, $2B, 0, 0, 1, 1
		endsprite

Frame_Turt_Proj1:	spritemap
		spritePiece	-4, -4, 1, 1, $34, 0, 0, 0, 1
		endsprite

Frame_Turt_Proj2:	spritemap
		spritePiece	-4, -4, 1, 1, $35, 0, 0, 0, 1
		endsprite

Frame_TurtJet1:	spritemap
		spritePiece	$1C, 6, 2, 1, $36, 0, 0, 0, 1
		endsprite

Frame_TurtJet2:	spritemap
		spritePiece	$1C, 6, 1, 1, $38, 0, 0, 0, 1
		endsprite

Frame_BalkJet1:	spritemap
		spritePiece	$1B, -5, 2, 1, $36, 0, 0, 0, 1
		endsprite

Frame_BalkJet2:	spritemap
		spritePiece	$1B, -5, 1, 1, $38, 0, 0, 0, 1
		endsprite

		even
