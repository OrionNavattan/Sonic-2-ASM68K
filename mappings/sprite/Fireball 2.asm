; -------------------------------------------------------------------------------
; Sprite mappings - Fireball 2 (Hill Top boss weapon)
; -------------------------------------------------------------------------------

Map_FireBall2:	index offset(*)
		ptr	Map_obj20_a_000C
		ptr	Map_obj20_a_0016
		ptr	Map_obj20_a_0020
		ptr	Map_obj20_a_002A
		ptr	Map_obj20_a_0034
		ptr	Map_obj20_a_003E

Map_obj20_a_000C:	spritemap
		piece	-8, -8, 2x2, 0
		endsprite

Map_obj20_a_0016:	spritemap
		piece	-8, -8, 2x2, 4
		endsprite

Map_obj20_a_0020:	spritemap
		piece	-8, -7, 2x2, 8
		endsprite

Map_obj20_a_002A:	spritemap
		piece	-8, -$A, 2x2, 8
		endsprite

Map_obj20_a_0034:	spritemap
		piece	-8, -$A, 2x2, $C
		endsprite

Map_obj20_a_003E:	spritemap
		endsprite

		even