; -------------------------------------------------------------------------------
; Sprite mappings - Hidden Palace orb (unused)
; -------------------------------------------------------------------------------

Map_HiddenPalaceOrb:	index offset(*)
		ptr	Map_obj71_a_0008
		ptr	Map_obj71_a_0012
		ptr	Map_obj71_a_001C
		ptr	Map_obj71_a_002E

Map_obj71_a_0008:	spritemap
		piece	-$C, -$C, 3x3, 0
		endsprite

Map_obj71_a_0012:	spritemap
		piece	-$C, -$C, 3x3, 9
		endsprite

Map_obj71_a_001C:	spritemap
		piece	-$10, -$10, 4x2, $12
		piece	-$10, 0, 4x2, $12, xflip, yflip
		endsprite

Map_obj71_a_002E:	spritemap
		piece	-$10, -$10, 4x2, $1A
		piece	-$10, 0, 4x2, $1A, xflip, yflip
		endsprite

		even