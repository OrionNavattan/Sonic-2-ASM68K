; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis small cog (part of moving platform)
; -------------------------------------------------------------------------------

Map_SmallCog:	index offset(*)
	ptr	Map_obj65_b_0006
	ptr	Map_obj65_b_0018
	ptr	Map_obj65_b_002A

Map_obj65_b_0006:	spritemap
	piece	-$10, -$C, 2, 3, 0, 0, 0, 0, 0
	piece	0, -$C, 2, 3, 0, 1, 0, 0, 0
	endsprite

Map_obj65_b_0018:	spritemap
	piece	-$10, -$C, 2, 3, 6, 0, 0, 0, 0
	piece	0, -$C, 2, 3, 6, 1, 1, 0, 0
	endsprite

Map_obj65_b_002A:	spritemap
	piece	-$10, -$C, 2, 3, 6, 0, 1, 0, 0
	piece	0, -$C, 2, 3, 6, 1, 0, 0, 0
	endsprite

	even
