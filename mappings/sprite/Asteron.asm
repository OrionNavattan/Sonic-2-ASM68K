; -------------------------------------------------------------------------------
; Sprite mappings - Asteron enemy (MTZ)
; -------------------------------------------------------------------------------

Map_Ast:	index offset(*)
		ptr	Frame_Ast_EyeRed
		ptr	Frame_Ast_EyeYellow
		ptr	Frame_Ast_Spike_Up
		ptr	Frame_Ast_Spike_AngleUp
		ptr	Frame_Ast_Spike_AngleDown

Frame_Ast_EyeRed:	spritemap
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 0, xflip
		endsprite

Frame_Ast_EyeYellow:	spritemap
		piece	-4, -3, 1x1, $E, pal2
		piece	-$10, -$10, 2x4, 0
		piece	0, -$10, 2x4, 0, xflip
		endsprite

Frame_Ast_Spike_Up:	spritemap
		piece	-4, -8, 1x2, 8
		endsprite

Frame_Ast_Spike_AngleUp:	spritemap
		piece	-8, -4, 2x1, $A
		endsprite

Frame_Ast_Spike_AngleDown:	spritemap
		piece	-4, -8, 1x2, $C
		endsprite

		even
