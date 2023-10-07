; ---------------------------------------------------------------------------
; Sprite mappings - Super Sonic's stars
; ---------------------------------------------------------------------------

Map_SuperStars:	index offset(*)
		ptr	Map_obj7E_000C
		ptr	Map_obj7E_002E
		ptr	Map_obj7E_0050
		ptr	Map_obj7E_002E
		ptr	Map_obj7E_000C
		ptr	Map_obj7E_0072

Map_obj7E_000C:	spritemap
		piece	-8, -8, 1x1, 0
		piece	0, -8, 1x1, 0, xflip
		piece	-8, 0, 1x1, 0, yflip
		piece	0, 0, 1x1, 0, xflip, yflip
		endsprite

Map_obj7E_002E:	spritemap
		piece	-$10, -$10, 2x2, 1
		piece	0, -$10, 2x2, 1, xflip
		piece	-$10, 0, 2x2, 1, yflip
		piece	0, 0, 2x2, 1, xflip, yflip
		endsprite

Map_obj7E_0050:	spritemap
		piece	-$18, -$18, 3x3, 5
		piece	0, -$18, 3x3, 5, xflip
		piece	-$18, 0, 3x3, 5, yflip
		piece	0, 0, 3x3, 5, xflip, yflip
		endsprite

Map_obj7E_0072:	spritemap
		endsprite

		even
