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
		piece	0, -$20, 4x4, 0
		piece	0, 0, 4x4, 0, yflip
		endsprite

Map_obj37_c_0022:	spritemap
		piece	-$10, -$20, 4x4, $10
		piece	$10, -$20, 2x4, $20
		piece	-$10, 0, 4x4, $10, yflip
		piece	$10, 0, 2x4, $20, yflip
		endsprite

Map_obj37_c_0044:	spritemap
		piece	-$18, -$20, 4x4, $28
		piece	8, -$20, 3x4, $38
		piece	-$18, 0, 4x4, $28, yflip
		piece	8, 0, 3x4, $38, yflip
		endsprite

Map_obj37_c_0066:	spritemap
		piece	-$20, -$20, 4x4, $34, xflip
		piece	0, -$20, 4x4, $34
		piece	-$20, 0, 4x4, $34, xflip, yflip
		piece	0, 0, 4x4, $34, yflip
		endsprite

Map_obj37_c_0088:	spritemap
		piece	-$20, -$20, 3x4, $38, xflip
		piece	-8, -$20, 4x4, $28, xflip
		piece	-$20, 0, 3x4, $38, xflip, yflip
		piece	-8, 0, 4x4, $28, xflip, yflip
		endsprite

Map_obj37_c_00AA:	spritemap
		piece	-$20, -$20, 2x4, $20, xflip
		piece	-$10, -$20, 4x4, $10, xflip
		piece	-$20, 0, 2x4, $20, xflip, yflip
		piece	-$10, 0, 4x4, $10, xflip, yflip
		endsprite

Map_obj37_c_00CC:	spritemap
		piece	-$20, -$20, 4x4, 0, xflip
		piece	-$20, 0, 4x4, 0, xflip, yflip
		endsprite

Map_obj37_c_00DE:	spritemap
		piece	-$20, -$20, 4x4, $44
		piece	0, -$20, 4x4, $44, xflip
		piece	-$20, 0, 4x4, $44, yflip
		piece	0, 0, 4x4, $44, xflip, yflip
		endsprite

		even
