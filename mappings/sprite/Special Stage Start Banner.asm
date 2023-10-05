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
		spritePiece	-$48, 0, 4, 4, 0, 0, 0, 1, 1
		spritePiece	-$28, 0, 2, 4, $10, 0, 0, 1, 1
		spritePiece	-$18, 0, 2, 4, $18, 0, 0, 1, 1
		spritePiece	-8, 0, 2, 4, $20, 0, 0, 1, 1
		spritePiece	8, 0, 2, 4, $28, 0, 0, 1, 1
		spritePiece	$18, 0, 2, 4, $18, 0, 0, 1, 1
		spritePiece	$28, 0, 4, 4, 0, 1, 0, 1, 1
		endsprite

Frame_SpecStartBan_FlagLeft:	spritemap
		spritePiece	-$48, 0, 4, 4, 0, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_S:	spritemap
		spritePiece	-$28, 0, 2, 4, $10, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_T_Left:	spritemap
		spritePiece	-$18, 0, 2, 4, $18, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_A:	spritemap
		spritePiece	-8, 0, 2, 4, $20, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_R:	spritemap
		spritePiece	8, 0, 2, 4, $28, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_T_Right:	spritemap
		spritePiece	$18, 0, 2, 4, $18, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_FlagRight:	spritemap
		spritePiece	$28, 0, 4, 4, 0, 1, 0, 1, 1
		endsprite

		even
