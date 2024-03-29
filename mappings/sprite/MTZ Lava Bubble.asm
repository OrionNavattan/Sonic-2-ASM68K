; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis lava bubble
; -------------------------------------------------------------------------------

Map_LavaBubble:	index offset(*)
		ptr	Map_obj71_b_000E
		ptr	Map_obj71_b_0018
		ptr	Map_obj71_b_0022
		ptr	Map_obj71_b_002C
		ptr	Map_obj71_b_0036
		ptr	Map_obj71_b_0040
		ptr	Map_obj71_b_004A

Map_obj71_b_000E:	spritemap
		piece	-8, 2, 2x1, 0
		endsprite

Map_obj71_b_0018:	spritemap
		piece	-8, 0, 2x1, 0
		endsprite

Map_obj71_b_0022:	spritemap
		piece	-8, -2, 2x1, 0
		endsprite

Map_obj71_b_002C:	spritemap
		piece	-8, -4, 2x1, 0
		endsprite

Map_obj71_b_0036:	spritemap
		piece	-$C, -4, 3x1, 2
		endsprite

Map_obj71_b_0040:	spritemap
		piece	-$10, -4, 4x1, 5
		endsprite

Map_obj71_b_004A:	spritemap
		endsprite

		even
