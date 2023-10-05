; -------------------------------------------------------------------------------
; Sprite mappings - springboard (aka, the diving board spring)
; -------------------------------------------------------------------------------

Map_SprngBrd:	index offset(*)
		ptr	Map_obj40_0004
		ptr	Map_obj40_0016

Map_obj40_0004:	spritemap
		piece	-$1C, -$18, 3x2, 0
		piece	-4, -$18, 4x2, 6
		endsprite

Map_obj40_0016:	spritemap
		piece	-$1C, -$18, 3x2, $E
		piece	-4, -$18, 4x2, $14
		endsprite

		even