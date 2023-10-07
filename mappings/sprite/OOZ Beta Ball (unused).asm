; -------------------------------------------------------------------------------
; Sprite mappings - OOZ Ball (unused beta leftover)
; -------------------------------------------------------------------------------

Map_OOZBetaBall:	index offset(*)
		ptr	Map_obj46_0008
		ptr	Map_obj46_002A
		ptr	Map_obj46_004C
		ptr	Map_obj46_005E

Map_obj46_0008:	spritemap
		piece	-$10, -$10, 2x2, 0
		piece	0, -$10, 2x2, 4
		piece	-$10, 0, 2x2, 4, xflip, yflip
		piece	0, 0, 2x2, 4, yflip
		endsprite

Map_obj46_002A:	spritemap
		piece	-$10, -$10, 2x2, 8
		piece	0, -$10, 2x2, 8, xflip
		piece	-$10, 0, 2x2, 8, yflip
		piece	0, 0, 2x2, 8, xflip, yflip
		endsprite

Map_obj46_004C:	spritemap
		piece	-$10, -$10, 4x2, $C
		piece	-$10, 0, 4x2, $C, xflip, yflip
		endsprite

Map_obj46_005E:	spritemap
		piece	-$10, -$10, 4x2, $C, xflip
		piece	-$10, 0, 4x2, $C, yflip
		endsprite

		even
