; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress vertical propeller shaft (unused)
; -------------------------------------------------------------------------------

Map_PropShaft:	index offset(*)
		ptr	Map_objBF_0006
		ptr	Map_objBF_0010
		ptr	Map_objBF_001A

Map_objBF_0006:	spritemap
		piece	-4, -$10, 1x4, 0
		endsprite

Map_objBF_0010:	spritemap
		piece	-4, -$10, 1x4, 4
		endsprite

Map_objBF_001A:	spritemap
		piece	-4, -$10, 1x4, 8
		endsprite

		even