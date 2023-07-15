; -------------------------------------------------------------------------------
; Sprite mappings - Chemical Plant spintube exit lid and spring
; -------------------------------------------------------------------------------

Map_TubeLid:	index offset(*)
	ptr	Map_obj7B_000A
	ptr	Map_obj7B_0014
	ptr	Map_obj7B_0026
	ptr	Map_obj7B_0038
	ptr	Map_obj7B_0014

Map_obj7B_000A:	spritemap
	piece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj7B_0014:	spritemap
	piece	-$10, -$20, 2, 4, 8, 0, 0, 0, 0
	piece	0, -$20, 2, 4, 8, 1, 0, 0, 0
	endsprite

Map_obj7B_0026:	spritemap
	piece	-$10, -$20, 2, 4, $10, 0, 0, 0, 0
	piece	0, -$20, 2, 4, $10, 1, 0, 0, 0
	endsprite

Map_obj7B_0038:	spritemap
	piece	-$10, -$10, 4, 2, $18, 0, 0, 0, 0
	endsprite

	even
