; ---------------------------------------------------------------------------
; Sprite mappings - title screen menu
; ---------------------------------------------------------------------------

Map_TitleMenu:	index offset(*)
		ptr	Map_obj0F_0006
		ptr	Map_obj0F_0048
		ptr	Map_obj0F_008A

Map_obj0F_0006:	spritemap
		piece	-$2C, -$C, 1x1, $402, pal4
		piece	-$1C, -$C, 4x1, $403, pal4
		piece	4, -$C, 2x1, $407, pal4
		piece	-$2C, 4, 1x1, $409
		piece	-$1C, 4, 4x1, $403
		piece	4, 4, 2x1, $407
		piece	$1C, 4, 2x1, $40A
		piece	-$44, -$C, 2x1, $3FA, pal4
		endsprite

Map_obj0F_0048:	spritemap
		piece	-$2C, -$C, 1x1, $402
		piece	-$1C, -$C, 4x1, $403
		piece	4, -$C, 2x1, $407
		piece	-$2C, 4, 1x1, $409, pal4
		piece	-$1C, 4, 4x1, $403, pal4
		piece	4, 4, 2x1, $407, pal4
		piece	$1C, 4, 2x1, $40A, pal4
		piece	-$44, 4, 2x1, $3FA, pal4
		endsprite

Map_obj0F_008A:	spritemap
		piece	-$24, -8, 1x1, $69C, pal4
		piece	-$1C, -8, 1x1, $69D, pal4
		piece	-$14, -8, 1x1, $6A1, pal4
		piece	-$C, -8, 1x1, $696, pal4
		piece	-4, -8, 1x1, $69C, pal4
		piece	4, -8, 1x1, $69B, pal4
		piece	$C, -8, 1x1, $6A0, pal4
		piece	-$44, -8, 2x1, $3FA, pal4
		endsprite

		even
