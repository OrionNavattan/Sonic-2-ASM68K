; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night pinball cages
; -------------------------------------------------------------------------------

Map_Cage:	index offset(*)
		ptr	Frame_Cage_Dark
		ptr	Frame_Cage_Lit

Frame_Cage_Dark:	spritemap
		piece	-$18, -$14, 3x2, 0
		piece	0, -$14, 3x2, 0, xflip
		piece	-$18, -4, 3x2, 0
		piece	0, -4, 3x2, 0, xflip
		piece	-$18, $C, 3x2, 0
		piece	0, $C, 3x2, 0, xflip
		endsprite

Frame_Cage_Lit:	spritemap
		piece	-$18, -$14, 3x2, 6, pal2
		piece	0, -$14, 3x2, 6, xflip, pal2
		piece	-$18, -4, 3x2, 6, pal2
		piece	0, -4, 3x2, 6, xflip, pal2
		piece	-$18, $C, 3x2, 6, pal2
		piece	0, $C, 3x2, 6, xflip, pal2
		endsprite

		even
