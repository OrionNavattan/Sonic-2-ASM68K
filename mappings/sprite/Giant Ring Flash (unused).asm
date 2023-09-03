; ---------------------------------------------------------------------------
; Sprite mappings - flash effect when you collect the giant ring
; (unused Sonic 1 leftover)
; ---------------------------------------------------------------------------

Map_RingFlash:	index offset(*)
		ptr	Map_obj37_c_0010
		ptr	Map_obj37_c_0022
		ptr	Map_obj37_c_0044
		ptr	Map_obj37_c_0066
		ptr	Map_obj37_c_0088
		ptr	Map_obj37_c_00AA
		ptr	Map_obj37_c_00CC
		ptr	Map_obj37_c_00DE

Map_obj37_c_0010:	spritemap
		piece	0, -$20, 4, 4, 0, 0, 0, 0, 0
		piece	0, 0, 4, 4, 0, 0, 1, 0, 0
		endsprite

Map_obj37_c_0022:	spritemap
		piece	-$10, -$20, 4, 4, $10, 0, 0, 0, 0
		piece	$10, -$20, 2, 4, $20, 0, 0, 0, 0
		piece	-$10, 0, 4, 4, $10, 0, 1, 0, 0
		piece	$10, 0, 2, 4, $20, 0, 1, 0, 0
		endsprite

Map_obj37_c_0044:	spritemap
		piece	-$18, -$20, 4, 4, $28, 0, 0, 0, 0
		piece	8, -$20, 3, 4, $38, 0, 0, 0, 0
		piece	-$18, 0, 4, 4, $28, 0, 1, 0, 0
		piece	8, 0, 3, 4, $38, 0, 1, 0, 0
		endsprite

Map_obj37_c_0066:	spritemap
		piece	-$20, -$20, 4, 4, $34, 1, 0, 0, 0
		piece	0, -$20, 4, 4, $34, 0, 0, 0, 0
		piece	-$20, 0, 4, 4, $34, 1, 1, 0, 0
		piece	0, 0, 4, 4, $34, 0, 1, 0, 0
		endsprite

Map_obj37_c_0088:	spritemap
		piece	-$20, -$20, 3, 4, $38, 1, 0, 0, 0
		piece	-8, -$20, 4, 4, $28, 1, 0, 0, 0
		piece	-$20, 0, 3, 4, $38, 1, 1, 0, 0
		piece	-8, 0, 4, 4, $28, 1, 1, 0, 0
		endsprite

Map_obj37_c_00AA:	spritemap
		piece	-$20, -$20, 2, 4, $20, 1, 0, 0, 0
		piece	-$10, -$20, 4, 4, $10, 1, 0, 0, 0
		piece	-$20, 0, 2, 4, $20, 1, 1, 0, 0
		piece	-$10, 0, 4, 4, $10, 1, 1, 0, 0
		endsprite

Map_obj37_c_00CC:	spritemap
		piece	-$20, -$20, 4, 4, 0, 1, 0, 0, 0
		piece	-$20, 0, 4, 4, 0, 1, 1, 0, 0
		endsprite

Map_obj37_c_00DE:	spritemap
		piece	-$20, -$20, 4, 4, $44, 0, 0, 0, 0
		piece	0, -$20, 4, 4, $44, 1, 0, 0, 0
		piece	-$20, 0, 4, 4, $44, 0, 1, 0, 0
		piece	0, 0, 4, 4, $44, 1, 1, 0, 0
		endsprite

		even
