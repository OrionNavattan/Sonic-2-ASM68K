; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress giant horizontal laser
; -------------------------------------------------------------------------------

Map_HorizLaser:	index offset(*)
		ptr	Map_objB9_0002

Map_objB9_0002:	spritemap
		piece	-$48, -8, 1x2, 0
		piece	-$40, -8, 4x2, 2
		piece	-$20, -8, 4x2, 2
		piece	0, -8, 4x2, 2
		piece	$20, -8, 4x2, 2
		piece	$40, -8, 1x2, 0, xflip
		endsprite

		even