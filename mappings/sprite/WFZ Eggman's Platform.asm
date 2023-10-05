; -------------------------------------------------------------------------------
; Sprite mappings - Eggman's platform in Wing Fortress boss arena
; -------------------------------------------------------------------------------

Map_BWFZ_EggPlat:	index offset(*)
		ptr	Frame_BWFZ_EggPlat

Frame_BWFZ_EggPlat:	spritemap
		piece	-$20, -$C, 4x3, 0
		piece	0, -$C, 4x3, 0, xflip
		endsprite

		even