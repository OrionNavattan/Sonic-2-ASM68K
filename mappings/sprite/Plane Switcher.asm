; -------------------------------------------------------------------------------
; Sprite mappings - Collision plane switcher
; -------------------------------------------------------------------------------

Map_PSwitch:	index offset(*)
	ptr	Map_obj03_0010
	ptr	Map_obj03_0032
	ptr	Map_obj03_0054
	ptr	Map_obj03_0054
	ptr	Map_obj03_0076
	ptr	Map_obj03_0098
	ptr	Map_obj03_00BA
	ptr	Map_obj03_00BA

Map_obj03_0010:	spritemap
	piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
	piece	-8, -$10, 2, 2, 0, 0, 0, 0, 0
	piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
	piece	-8, $10, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj03_0032:	spritemap
	piece	-8, -$40, 2, 2, 0, 0, 0, 0, 0
	piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
	piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
	piece	-8, $30, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj03_0054:	spritemap
	piece	-8, -$80, 2, 2, 0, 0, 0, 0, 0
	piece	-8, -$20, 2, 2, 0, 0, 0, 0, 0
	piece	-8, 0, 2, 2, 0, 0, 0, 0, 0
	piece	-8, $70, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj03_0076:	spritemap
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$10, -8, 2, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$10, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj03_0098:	spritemap
	piece	-$40, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$30, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj03_00BA:	spritemap
	piece	-$80, -8, 2, 2, 0, 0, 0, 0, 0
	piece	-$20, -8, 2, 2, 0, 0, 0, 0, 0
	piece	0, -8, 2, 2, 0, 0, 0, 0, 0
	piece	$70, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

	even
