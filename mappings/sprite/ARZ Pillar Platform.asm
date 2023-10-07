; -------------------------------------------------------------------------------
; Sprite mappings - Aquatic Ruin pillar platform
; -------------------------------------------------------------------------------

Map_PillPlat:	index offset(*)
		ptr	Frame_PillPlat_Unused
		ptr	Frame_PillPlat

Frame_PillPlat_Unused:	spritemap
		piece	-$20, -8, 4x2, $55, pal4
		piece	0, -8, 4x2, $55, pal4
		endsprite

Frame_PillPlat:	spritemap
		piece	-$20, -$30, 2x2, $5D, pal2
		piece	$10, -$30, 2x2, $5D, xflip, pal2
		piece	-$10, -$30, 4x2, $61, pal2
		piece	-$10, -$20, 4x2, $69, pal2
		piece	-$10, -$10, 4x2, $69, pal2
		piece	-$10, 0, 4x2, $71, pal2
		piece	-$10, $10, 4x2, $69, pal2
		piece	-$10, $20, 4x2, $79, pal2
		piece	-$10, $30, 2x1, $81, pal2
		endsprite

		even
