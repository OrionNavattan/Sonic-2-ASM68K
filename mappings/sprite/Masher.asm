; -------------------------------------------------------------------------------
; Sprite mappings - Masher enemy (EHZ)
; -------------------------------------------------------------------------------

Map_Mash:	index offset(*)
		ptr	Map_obj5C_0004
		ptr	Map_obj5C_001E

Map_obj5C_0004:	spritemap
		piece	-$C, -$10, 2x2, 0
		piece	4, -$10, 1x2, 4
		piece	-$C, 0, 3x2, $A
		endsprite

Map_obj5C_001E:	spritemap
		piece	-$C, -$10, 2x2, 0
		piece	2, -$10, 2x2, 6
		piece	-$C, 0, 3x2, $10
		endsprite

		even