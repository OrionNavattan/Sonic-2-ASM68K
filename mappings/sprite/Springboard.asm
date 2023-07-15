; -------------------------------------------------------------------------------
; Sprite mappings - springboard (aka, the diving board spring)
; -------------------------------------------------------------------------------

Map_SprngBrd:	index offset(*)
	ptr	Map_obj40_0004
	ptr	Map_obj40_0016

Map_obj40_0004:	spritemap
	piece	-$1C, -$18, 3, 2, 0, 0, 0, 0, 0
	piece	-4, -$18, 4, 2, 6, 0, 0, 0, 0
	endsprite

Map_obj40_0016:	spritemap
	piece	-$1C, -$18, 3, 2, $E, 0, 0, 0, 0
	piece	-4, -$18, 4, 2, $14, 0, 0, 0, 0
	endsprite

	even
