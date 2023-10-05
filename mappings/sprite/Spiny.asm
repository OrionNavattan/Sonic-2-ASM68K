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
		spritePiece	-8, -$C, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-$18, -4, 3, 2, 1, 0, 0, 0, 0
		spritePiece	0, -$C, 1, 1, 0, 1, 0, 0, 0
		spritePiece	0, -4, 3, 2, 1, 1, 0, 0, 0
		endsprite

Frame_FloorSpiny_Move2:	spritemap
		spritePiece	-8, -$C, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-$18, -4, 3, 2, 7, 0, 0, 0, 0
		spritePiece	0, -$C, 1, 1, 0, 1, 0, 0, 0
		spritePiece	0, -4, 3, 2, 7, 1, 0, 0, 0
		endsprite

Frame_FloorSpiny_Fire:	spritemap
		spritePiece	-$10, -$C, 2, 1, $D, 0, 0, 0, 0
		spritePiece	-$18, -4, 3, 2, 1, 0, 0, 0, 0
		spritePiece	0, -$C, 2, 1, $D, 1, 0, 0, 0
		spritePiece	0, -4, 3, 2, 1, 1, 0, 0, 0
		endsprite

Frame_WallSpiny_Move1:	spritemap
		spritePiece	-$C, -$18, 2, 3, $F, 0, 0, 0, 0
		spritePiece	4, -8, 1, 1, $15, 0, 0, 0, 0
		spritePiece	-$C, 0, 2, 3, $F, 0, 1, 0, 0
		spritePiece	4, 0, 1, 1, $15, 0, 1, 0, 0
		endsprite

Frame_WallSpiny_Move2:	spritemap
		spritePiece	-$C, -$18, 2, 3, $16, 0, 0, 0, 0
		spritePiece	4, -8, 1, 1, $15, 0, 0, 0, 0
		spritePiece	-$C, 0, 2, 3, $16, 0, 1, 0, 0
		spritePiece	4, 0, 1, 1, $15, 0, 1, 0, 0
		endsprite

Frame_WallSpiny_Fire:	spritemap
		spritePiece	-$C, -$18, 2, 3, $F, 0, 0, 0, 0
		spritePiece	4, -$10, 1, 2, $1C, 0, 0, 0, 0
		spritePiece	-$C, 0, 2, 3, $F, 0, 1, 0, 0
		spritePiece	4, 0, 1, 2, $1C, 0, 1, 0, 0
		endsprite

Frame_Spiny_Proj1:	spritemap
		spritePiece	-4, -4, 1, 1, $1E, 0, 0, 0, 0
		endsprite

Frame_Spiny_Proj2:	spritemap
		spritePiece	-4, -4, 1, 1, $1F, 0, 0, 0, 0
		endsprite

		even
