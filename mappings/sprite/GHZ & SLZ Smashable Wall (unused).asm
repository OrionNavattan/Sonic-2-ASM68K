; ---------------------------------------------------------------------------
; Sprite mappings - GHZ and SLZ smashable walls (unused Sonic 1 leftover)
; ---------------------------------------------------------------------------

Map_Smash:	index offset(*)
		ptr	Map_obj3C_0006
		ptr	Map_obj3C_0048
		ptr	Map_obj3C_008A

Map_obj3C_0006:	spritemap
		piece	-$10, -$20, 2x2, 0
		piece	-$10, -$10, 2x2, 0
		piece	-$10, 0, 2x2, 0
		piece	-$10, $10, 2x2, 0
		piece	0, -$20, 2x2, 4
		piece	0, -$10, 2x2, 4
		piece	0, 0, 2x2, 4
		piece	0, $10, 2x2, 4
		endsprite

Map_obj3C_0048:	spritemap
		piece	-$10, -$20, 2x2, 4
		piece	-$10, -$10, 2x2, 4
		piece	-$10, 0, 2x2, 4
		piece	-$10, $10, 2x2, 4
		piece	0, -$20, 2x2, 4
		piece	0, -$10, 2x2, 4
		piece	0, 0, 2x2, 4
		piece	0, $10, 2x2, 4
		endsprite

Map_obj3C_008A:	spritemap
		piece	-$10, -$20, 2x2, 4
		piece	-$10, -$10, 2x2, 4
		piece	-$10, 0, 2x2, 4
		piece	-$10, $10, 2x2, 4
		piece	0, -$20, 2x2, 8
		piece	0, -$10, 2x2, 8
		piece	0, 0, 2x2, 8
		piece	0, $10, 2x2, 8
		endsprite

		even
