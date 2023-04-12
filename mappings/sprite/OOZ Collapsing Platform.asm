; -------------------------------------------------------------------------------
; Sprite Mappings - Oil Ocean collapsing platform
; -------------------------------------------------------------------------------

Map_CFlo_OOZ:	index offset(*)
	ptr	Map_obj1F_b_0006
	ptr	Map_obj1F_b_0006
	ptr	Map_obj1F_b_0006

Map_obj1F_b_0006:	spritemap
	piece	-$40, -$10, 4, 4, $10, 1, 0, 0, 0
	piece	-$20, -$10, 4, 4, $10, 1, 0, 0, 0
	piece	0, -$10, 4, 4, $10, 1, 0, 0, 0
	piece	$20, -$10, 4, 4, 0, 1, 0, 0, 0
	piece	-$40, $10, 4, 2, $20, 1, 0, 0, 0
	piece	-$20, $10, 4, 2, $20, 1, 0, 0, 0
	piece	0, $10, 4, 2, $20, 1, 0, 0, 0
	endsprite

	even
