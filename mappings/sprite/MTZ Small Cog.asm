; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis small cog (part of moving platform)
; -------------------------------------------------------------------------------

Map_SmallCog:	index offset(*)
		ptr	Map_obj65_b_0006
		ptr	Map_obj65_b_0018
		ptr	Map_obj65_b_002A

Map_obj65_b_0006:	spritemap
		piece	-$10, -$C, 2x3, 0
		piece	0, -$C, 2x3, 0, xflip
		endsprite

Map_obj65_b_0018:	spritemap
		piece	-$10, -$C, 2x3, 6
		piece	0, -$C, 2x3, 6, xflip, yflip
		endsprite

Map_obj65_b_002A:	spritemap
		piece	-$10, -$C, 2x3, 6, yflip
		piece	0, -$C, 2x3, 6, xflip
		endsprite

		even