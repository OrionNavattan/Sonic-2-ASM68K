; -------------------------------------------------------------------------------
; Sprite mappings - Hidden Palace orb (unused)
; -------------------------------------------------------------------------------

Map_HiddenPalaceOrb:	index offset(*)
		ptr	Map_obj71_a_0008
		ptr	Map_obj71_a_0012
		ptr	Map_obj71_a_001C
		ptr	Map_obj71_a_002E

Map_obj71_a_0008:	spritemap
		piece	-$C, -$C, 3, 3, 0, 0, 0, 0, 0
		endsprite

Map_obj71_a_0012:	spritemap
		piece	-$C, -$C, 3, 3, 9, 0, 0, 0, 0
		endsprite

Map_obj71_a_001C:	spritemap
		piece	-$10, -$10, 4, 2, $12, 0, 0, 0, 0
		piece	-$10, 0, 4, 2, $12, 1, 1, 0, 0
		endsprite

Map_obj71_a_002E:	spritemap
		piece	-$10, -$10, 4, 2, $1A, 0, 0, 0, 0
		piece	-$10, 0, 4, 2, $1A, 1, 1, 0, 0
		endsprite

		even
