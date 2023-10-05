; -----------------------------------------------------------------------------
; Sprite mappings - Grounder, Grounder's wall, and Grounder's rocks
; -----------------------------------------------------------------------------

Map_Ground:	index offset(*)
		ptr	Frame_Ground_Emerge1
		ptr	Frame_Ground_Emerge2
		ptr	Frame_Ground_Roam1
		ptr	Frame_Ground_Roam2
		ptr	Frame_Ground_Roam3
		
Map_GRock:	index offset(*)
		ptr	Frame_GRock_Large
		ptr	Frame_GRock_Medium
		ptr	Frame_GRock_Small
		
Map_GWall:	index offset(*)
		ptr	Frame_GWall

Frame_Ground_Emerge1:	spritemap
		piece	-8, -$C, 1x1, 0
		piece	-$10, -4, 2x3, 1
		piece	0, -$C, 1x1, 0, xflip
		piece	0, -4, 2x3, 1, xflip
		endsprite

Frame_Ground_Emerge2:	spritemap
		piece	-8, -$14, 1x1, 7
		piece	-$10, -$C, 2x4, 8
		piece	0, -$14, 1x1, 7, xflip
		piece	0, -$C, 2x4, 8, xflip
		endsprite

Frame_Ground_Roam1:	spritemap
		piece	-$10, -$14, 4x4, $10
		piece	-$10, $C, 4x1, $20
		endsprite

Frame_Ground_Roam2:	spritemap
		piece	-$10, -$14, 4x4, $10
		piece	-$10, $C, 4x1, $24
		endsprite

Frame_Ground_Roam3:	spritemap
		piece	-$10, -$14, 4x4, $10
		piece	-$10, $C, 4x1, $28
		endsprite

Frame_GRock_Large:	spritemap
		piece	-8, -8, 2x2, $2C
		endsprite

Frame_GRock_Medium:	spritemap
		piece	-4, -4, 1x1, $30
		endsprite

Frame_GRock_Small:	spritemap
		piece	-4, -4, 1x1, $31
		endsprite

Frame_GWall:	spritemap
		piece	-$10, -8, 2x2, $93, pal3
		piece	0, -8, 2x2, $97, pal3
		endsprite

		even