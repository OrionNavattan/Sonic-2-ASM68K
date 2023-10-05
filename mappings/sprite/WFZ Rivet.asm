; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress rivet
; -------------------------------------------------------------------------------

Map_Rivet:	index offset(*)
		ptr	Frame_Rivet

Frame_Rivet:	spritemap
		piece	-$10, -8, 2x2, 0
		piece	0, -8, 2x2, 0, xflip
		endsprite

		even