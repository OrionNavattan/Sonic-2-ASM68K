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

Frame_SpecStartBan_Full:	spriteHeader
		spritePiece	-$48, 0, 4, 4, 0, 0, 0, 1, 1
		spritePiece	-$28, 0, 2, 4, $10, 0, 0, 1, 1
		spritePiece	-$18, 0, 2, 4, $18, 0, 0, 1, 1
		spritePiece	-8, 0, 2, 4, $20, 0, 0, 1, 1
		spritePiece	8, 0, 2, 4, $28, 0, 0, 1, 1
		spritePiece	$18, 0, 2, 4, $18, 0, 0, 1, 1
		spritePiece	$28, 0, 4, 4, 0, 1, 0, 1, 1
		endsprite

Frame_SpecStartBan_FlagLeft:	spriteHeader
		spritePiece	-$48, 0, 4, 4, 0, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_S:	spriteHeader
		spritePiece	-$28, 0, 2, 4, $10, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_T_Left:	spriteHeader
		spritePiece	-$18, 0, 2, 4, $18, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_A:	spriteHeader
		spritePiece	-8, 0, 2, 4, $20, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_R:	spriteHeader
		spritePiece	8, 0, 2, 4, $28, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_T_Right:	spriteHeader
		spritePiece	$18, 0, 2, 4, $18, 0, 0, 1, 1
		endsprite

Frame_SpecStartBan_FlagRight:	spriteHeader
		spritePiece	$28, 0, 4, 4, 0, 1, 0, 1, 1
		endsprite

		even
