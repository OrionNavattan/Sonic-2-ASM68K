; ---------------------------------------------------------------------------
; Sprite mappings - invisible solid blocks (visible in debug mode)
; ---------------------------------------------------------------------------

Map_Invis:	index offset(*)
		ptr	Map_obj74_0006
		ptr	Map_obj74_0028
		ptr	Map_obj74_004A

Map_obj74_0006:	spritemap
		piece	-$10, -$10, 2x2, $1C
		piece	0, -$10, 2x2, $1C
		piece	-$10, 0, 2x2, $1C
		piece	0, 0, 2x2, $1C
		endsprite

Map_obj74_0028:	spritemap
		piece	-$40, -$20, 2x2, $1C
		piece	$30, -$20, 2x2, $1C
		piece	-$40, $10, 2x2, $1C
		piece	$30, $10, 2x2, $1C
		endsprite

Map_obj74_004A:	spritemap
		piece	-$80, -$20, 2x2, $1C
		piece	$70, -$20, 2x2, $1C
		piece	-$80, $10, 2x2, $1C
		piece	$70, $10, 2x2, $1C
		endsprite

		even