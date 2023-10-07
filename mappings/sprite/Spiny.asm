; -------------------------------------------------------------------------------
; Sprite mappings - Spiny enemy (CPZ)
; -------------------------------------------------------------------------------

Map_Spiny:	index offset(*)
		ptr	Frame_FloorSpiny_Move1
		ptr	Frame_FloorSpiny_Move2
		ptr	Frame_FloorSpiny_Fire
		ptr	Frame_WallSpiny_Move1
		ptr	Frame_WallSpiny_Move2
		ptr	Frame_WallSpiny_Fire
		ptr	Frame_Spiny_Proj1
		ptr	Frame_Spiny_Proj2

Frame_FloorSpiny_Move1:	spritemap
		piece	-8, -$C, 1x1, 0
		piece	-$18, -4, 3x2, 1
		piece	0, -$C, 1x1, 0, xflip
		piece	0, -4, 3x2, 1, xflip
		endsprite

Frame_FloorSpiny_Move2:	spritemap
		piece	-8, -$C, 1x1, 0
		piece	-$18, -4, 3x2, 7
		piece	0, -$C, 1x1, 0, xflip
		piece	0, -4, 3x2, 7, xflip
		endsprite

Frame_FloorSpiny_Fire:	spritemap
		piece	-$10, -$C, 2x1, $D
		piece	-$18, -4, 3x2, 1
		piece	0, -$C, 2x1, $D, xflip
		piece	0, -4, 3x2, 1, xflip
		endsprite

Frame_WallSpiny_Move1:	spritemap
		piece	-$C, -$18, 2x3, $F
		piece	4, -8, 1x1, $15
		piece	-$C, 0, 2x3, $F, yflip
		piece	4, 0, 1x1, $15, yflip
		endsprite

Frame_WallSpiny_Move2:	spritemap
		piece	-$C, -$18, 2x3, $16
		piece	4, -8, 1x1, $15
		piece	-$C, 0, 2x3, $16, yflip
		piece	4, 0, 1x1, $15, yflip
		endsprite

Frame_WallSpiny_Fire:	spritemap
		piece	-$C, -$18, 2x3, $F
		piece	4, -$10, 1x2, $1C
		piece	-$C, 0, 2x3, $F, yflip
		piece	4, 0, 1x2, $1C, yflip
		endsprite

Frame_Spiny_Proj1:	spritemap
		piece	-4, -4, 1x1, $1E
		endsprite

Frame_Spiny_Proj2:	spritemap
		piece	-4, -4, 1x1, $1F
		endsprite

		even
