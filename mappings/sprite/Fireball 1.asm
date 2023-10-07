; -------------------------------------------------------------------------------
; Sprite mappings - Fireball 1 (Hill Top boss weapon)
; -------------------------------------------------------------------------------

Map_FireBall1:	index offset(*)
		ptr	Map_obj20_b_000C
		ptr	Map_obj20_b_0016
		ptr	Map_obj20_b_0020
		ptr	Map_obj20_b_002A
		ptr	Map_obj20_b_0034
		ptr	Map_obj20_b_003E

Map_obj20_b_000C:	spritemap
		piece	-8, -$10, 2x4, 0
		endsprite

Map_obj20_b_0016:	spritemap
		piece	-8, -$10, 2x4, 0, xflip
		endsprite

Map_obj20_b_0020:	spritemap
		piece	-8, -$10, 2x4, 8
		endsprite

Map_obj20_b_002A:	spritemap
		piece	-8, -$10, 2x4, 8, xflip
		endsprite

Map_obj20_b_0034:	spritemap
		piece	-8, 0, 2x2, $10
		endsprite

Map_obj20_b_003E:	spritemap
		piece	-8, 0, 2x2, $10, xflip
		endsprite

		even
