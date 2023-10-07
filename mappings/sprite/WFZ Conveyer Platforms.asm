; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress conveyer platforms
; -------------------------------------------------------------------------------

Map_ConvPlat:	index offset(*)
		ptr	Map_objBD_0006
		ptr	Map_objBD_0018
		ptr	Map_objBD_002A

Map_objBD_0006:	spritemap
		piece	-$18, -4, 3x1, 0
		piece	0, -4, 3x1, 3
		endsprite

Map_objBD_0018:	spritemap
		piece	-$18, -4, 3x1, 6
		piece	0, -4, 3x1, 6, xflip
		endsprite

Map_objBD_002A:	spritemap
		piece	-$18, -4, 3x1, 9
		piece	0, -4, 3x1, 9, xflip
		endsprite

		even
