; -------------------------------------------------------------------------------
; Sprite mappings - buttons
; -------------------------------------------------------------------------------

Map_But:	index offset(*)
		ptr	Map_obj47_0006
		ptr	Map_obj47_0010
		ptr	Map_obj47_001A

Map_obj47_0006:	spritemap
		piece	-$10, -$C, 4x2, 0
		endsprite

Map_obj47_0010:	spritemap
		piece	-$10, -$C, 4x2, 8
		endsprite

Map_obj47_001A:	spritemap
		piece	-$10, -8, 4x2, 0
		endsprite

		even
