; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress vertical propeller shaft (unused)
; -------------------------------------------------------------------------------

Map_PropShaft:	index offset(*)
		ptr	Map_objBF_0006
		ptr	Map_objBF_0010
		ptr	Map_objBF_001A

Map_objBF_0006:	spritemap
		spritePiece	-4, -$10, 1, 4, 0, 0, 0, 0, 0
		endsprite

Map_objBF_0010:	spritemap
		spritePiece	-4, -$10, 1, 4, 4, 0, 0, 0, 0
		endsprite

Map_objBF_001A:	spritemap
		spritePiece	-4, -$10, 1, 4, 8, 0, 0, 0, 0
		endsprite

		even
