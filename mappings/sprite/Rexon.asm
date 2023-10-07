; -----------------------------------------------------------------------------
; Sprite mappings - Rexon enemy (HTZ)
; -----------------------------------------------------------------------------

Map_Rex:	index offset(*)
		ptr	Frame_Rexon_Head
		ptr	Frame_Rexon_Neck
		ptr	Frame_Rexon_Body
		ptr	Frame_Rexon_Proj

Frame_Rexon_Head:	spritemap
		piece	-$14, -6, 3x2, 0
		endsprite

Frame_Rexon_Neck:	spritemap
		piece	-8, -8, 2x2, 6
		endsprite

Frame_Rexon_Body:	spritemap
		piece	-$10, -8, 4x2, $A
		endsprite

Frame_Rexon_Proj:	spritemap
		piece	-4, -4, 1x1, $12
		endsprite

		even
