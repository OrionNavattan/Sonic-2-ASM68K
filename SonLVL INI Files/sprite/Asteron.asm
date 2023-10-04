; -------------------------------------------------------------------------------
; Sprite mappings - Asteron enemy (MTZ)
; -------------------------------------------------------------------------------

Map_Ast:	index offset(*)
		ptr	Frame_Ast_EyeRed
		ptr	Frame_Ast_EyeYellow
		ptr	Frame_Ast_Spike_Up
		ptr	Frame_Ast_Spike_AngleUp
		ptr	Frame_Ast_Spike_AngleDown

Frame_Ast_EyeRed:	spriteHeader
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, 0, 1, 0, 0, 0
		endsprite

Frame_Ast_EyeYellow:	spriteHeader
		spritePiece	-4, -3, 1, 1, $E, 0, 0, 1, 0
		spritePiece	-$10, -$10, 2, 4, 0, 0, 0, 0, 0
		spritePiece	0, -$10, 2, 4, 0, 1, 0, 0, 0
		endsprite

Frame_Ast_Spike_Up:	spriteHeader
		spritePiece	-4, -8, 1, 2, 8, 0, 0, 0, 0
		endsprite

Frame_Ast_Spike_AngleUp:	spriteHeader
		spritePiece	-8, -4, 2, 1, $A, 0, 0, 0, 0
		endsprite

Frame_Ast_Spike_AngleDown:	spriteHeader
		spritePiece	-4, -8, 1, 2, $C, 0, 0, 0, 0
		endsprite

		even
