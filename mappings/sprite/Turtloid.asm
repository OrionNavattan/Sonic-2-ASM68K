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
		piece	-$1C, -$10, 3x2, 0, pal2, hi
		piece	-4, -$10, 4x4, 6, pal2, hi
		piece	-$1C, 0, 3x2, $16, pal2, hi
		endsprite

Frame_Turt_FireProj:	spritemap
		piece	-$1C, -$10, 3x2, 0, pal2, hi
		piece	-$1C, 0, 3x2, $1C, pal2, hi
		piece	-4, -$10, 4x4, 6, pal2, hi
		endsprite

Frame_TRider_Normal:	spritemap
		piece	-$C, -$C, 3x3, $22, pal2, hi
		endsprite

Frame_TRider_FireProj:	spritemap
		piece	-$C, -$C, 3x3, $2B, pal2, hi
		endsprite

Frame_Turt_Proj1:	spritemap
		piece	-4, -4, 1x1, $34, hi
		endsprite

Frame_Turt_Proj2:	spritemap
		piece	-4, -4, 1x1, $35, hi
		endsprite

Frame_TurtJet1:	spritemap
		piece	$1C, 6, 2x1, $36, hi
		endsprite

Frame_TurtJet2:	spritemap
		piece	$1C, 6, 1x1, $38, hi
		endsprite

Frame_BalkJet1:	spritemap
		piece	$1B, -5, 2x1, $36, hi
		endsprite

Frame_BalkJet2:	spritemap
		piece	$1B, -5, 1x1, $38, hi
		endsprite

		even
