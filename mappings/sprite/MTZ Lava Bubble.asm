; -------------------------------------------------------------------------------
; Sprite Mappings - Metropolis lava bubble
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
	piece	-8, 2, 2, 1, 0, 0, 0, 0, 0
	endsprite

Map_obj71_b_0018:	spritemap
	piece	-8, 0, 2, 1, 0, 0, 0, 0, 0
	endsprite

Map_obj71_b_0022:	spritemap
	piece	-8, -2, 2, 1, 0, 0, 0, 0, 0
	endsprite

Map_obj71_b_002C:	spritemap
	piece	-8, -4, 2, 1, 0, 0, 0, 0, 0
	endsprite

Map_obj71_b_0036:	spritemap
	piece	-$C, -4, 3, 1, 2, 0, 0, 0, 0
	endsprite

Map_obj71_b_0040:	spritemap
	piece	-$10, -4, 4, 1, 5, 0, 0, 0, 0
	endsprite

Map_obj71_b_004A:	spritemap
	endsprite

	even
