; -------------------------------------------------------------------------------
; Sprite mappings - Metropolis platforms
; -------------------------------------------------------------------------------

Map_MTZPlats:	index offset(*)
		ptr	Map_obj65_a_0008
		ptr	Map_obj65_a_002A
		ptr	Map_obj65_a_0008
		ptr	Map_obj65_a_0008

Map_obj65_a_0008:	spritemap
		piece	-$40, -$C, 4x3, $4B
		piece	-$20, -$C, 4x3, $4B
		piece	0, -$C, 4x3, $4B
		piece	$20, -$C, 4x3, $4B
		endsprite

Map_obj65_a_002A:	spritemap
		piece	-$20, -$C, 4x3, $39
		piece	0, -$C, 4x3, $39, xflip
		endsprite

		even
