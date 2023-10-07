; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress giant vertical laser (unused)
; -------------------------------------------------------------------------------

Map_VertLaser:	index offset(*)
		ptr	Map_objB7_0002

Map_objB7_0002:	spritemap
		piece	-$18, -$70, 3x4, 0
		piece	0, -$70, 3x4, 0, xflip
		piece	-$18, -$50, 3x4, 0
		piece	0, -$50, 3x4, 0, xflip
		piece	-$18, -$30, 3x4, 0
		piece	0, -$30, 3x4, 0, xflip
		piece	-$18, -$10, 3x4, 0
		piece	0, -$10, 3x4, 0, xflip
		piece	-$18, $10, 3x4, 0
		piece	0, $10, 3x4, 0, xflip
		piece	-$18, $30, 3x4, 0
		piece	0, $30, 3x4, 0, xflip
		piece	-$18, $50, 3x4, 0
		piece	0, $50, 3x4, 0, xflip
		piece	-$18, $70, 3x4, 0
		piece	0, $70, 3x4, 0, xflip
		endsprite

		even
