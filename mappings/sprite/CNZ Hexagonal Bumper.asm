; -------------------------------------------------------------------------------
; Sprite mappings - Casino Night hexagonal bumper
; -------------------------------------------------------------------------------

Map_HexBump:	index offset(*)
		ptr	Map_objD7_0006
		ptr	Map_objD7_0028
		ptr	Map_objD7_004A

Map_objD7_0006:	spritemap
		piece	-$18, -$10, 3x2, 0
		piece	0, -$10, 3x2, 0, xflip
		piece	-$18, 0, 3x2, 0, yflip
		piece	0, 0, 3x2, 0, xflip, yflip
		endsprite

Map_objD7_0028:	spritemap
		piece	-$18, -$C, 3x2, 0
		piece	0, -$C, 3x2, 0, xflip
		piece	-$18, 4, 3x2, 0, yflip
		piece	0, 4, 3x2, 0, xflip, yflip
		endsprite

Map_objD7_004A:	spritemap
		piece	-$14, -$10, 3x2, 0
		piece	4, -$10, 3x2, 0, xflip
		piece	-$14, 0, 3x2, 0, yflip
		piece	4, 0, 3x2, 0, xflip, yflip
		endsprite

		even