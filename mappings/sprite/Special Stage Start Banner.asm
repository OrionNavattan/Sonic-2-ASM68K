; ---------------------------------------------------------------------------
; Sprite mappings - Special stage 'START' text and checkered flag
; ---------------------------------------------------------------------------

Map_SpecStartBan:	index offset(*)
		ptr	Frame_SpecStartBan_Full
		ptr	Frame_SpecStartBan_FlagLeft
		ptr	Frame_SpecStartBan_FlagLeft
		ptr	Frame_SpecStartBan_S
		ptr	Frame_SpecStartBan_T_Left
		ptr	Frame_SpecStartBan_A
		ptr	Frame_SpecStartBan_R
		ptr	Frame_SpecStartBan_T_Right
		ptr	Frame_SpecStartBan_FlagRight

Frame_SpecStartBan_Full:	spritemap
		piece	-$48, 0, 4x4, 0, pal2, hi
		piece	-$28, 0, 2x4, $10, pal2, hi
		piece	-$18, 0, 2x4, $18, pal2, hi
		piece	-8, 0, 2x4, $20, pal2, hi
		piece	8, 0, 2x4, $28, pal2, hi
		piece	$18, 0, 2x4, $18, pal2, hi
		piece	$28, 0, 4x4, 0, xflip, pal2, hi
		endsprite

Frame_SpecStartBan_FlagLeft:	spritemap
		piece	-$48, 0, 4x4, 0, pal2, hi
		endsprite

Frame_SpecStartBan_S:	spritemap
		piece	-$28, 0, 2x4, $10, pal2, hi
		endsprite

Frame_SpecStartBan_T_Left:	spritemap
		piece	-$18, 0, 2x4, $18, pal2, hi
		endsprite

Frame_SpecStartBan_A:	spritemap
		piece	-8, 0, 2x4, $20, pal2, hi
		endsprite

Frame_SpecStartBan_R:	spritemap
		piece	8, 0, 2x4, $28, pal2, hi
		endsprite

Frame_SpecStartBan_T_Right:	spritemap
		piece	$18, 0, 2x4, $18, pal2, hi
		endsprite

Frame_SpecStartBan_FlagRight:	spritemap
		piece	$28, 0, 4x4, 0, xflip, pal2, hi
		endsprite

		even
