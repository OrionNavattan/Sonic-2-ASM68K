; ---------------------------------------------------------------------------
; Sprite mappings - round pinball bumper
; ---------------------------------------------------------------------------

Map_RoundBump:	index offset(*)
		ptr	Map_obj44_0004
		ptr	Map_obj44_0016

Map_obj44_0004:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 0, xflip
		endsprite

Map_obj44_0016:	spritemap
		piece	-$18, -$14, 3x4, 8
		piece	0, -$14, 3x4, 8, xflip
		piece	-$10, $C, 2x2, $14
		piece	0, $C, 2x2, $14, xflip
		endsprite

		even
