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
		piece	-$48, 0, 4, 4, 0, 0, 0, 1, 1
		piece	-$28, 0, 2, 4, $10, 0, 0, 1, 1
		piece	-$18, 0, 2, 4, $18, 0, 0, 1, 1
		piece	-8, 0, 2, 4, $20, 0, 0, 1, 1
		piece	8, 0, 2, 4, $28, 0, 0, 1, 1
		piece	$18, 0, 2, 4, $18, 0, 0, 1, 1
		piece	$28, 0, 4, 4, 0, 1, 0, 1, 1
		endsprite

Frame_SpecStartBan_FlagLeft:	spritemap
		piece	-$48, 0, 4, 4, 0, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_S:	spritemap
		piece	-$28, 0, 2, 4, $10, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_T_Left:	spritemap
		piece	-$18, 0, 2, 4, $18, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_A:	spritemap
		piece	-8, 0, 2, 4, $20, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_R:	spritemap
		piece	8, 0, 2, 4, $28, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_T_Right:	spritemap
		piece	$18, 0, 2, 4, $18, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_FlagRight:	spritemap
		piece	$28, 0, 4, 4, 0, 1, 0, 1, 1
		endsprite

		even
