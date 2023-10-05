; -------------------------------------------------------------------------------
; Sprite mappings - invisible lava tag
; -------------------------------------------------------------------------------

Map_LTag:	index offset(*)
		ptr	Map_obj31_b_0006
		ptr	Map_obj31_b_0028
		ptr	Map_obj31_b_004A

Map_obj31_b_0006:	spritemap
		piece	-$20, -$20, 2x2, $34
		piece	$10, -$20, 2x2, $34
		piece	-$20, $10, 2x2, $34
		piece	$10, $10, 2x2, $34
		endsprite

Map_obj31_b_0028:	spritemap
		piece	-$40, -$20, 2x2, $34
		piece	$30, -$20, 2x2, $34
		piece	-$40, $10, 2x2, $34
		piece	$30, $10, 2x2, $34
		endsprite

Map_obj31_b_004A:	spritemap
		piece	-$80, -$20, 2x2, $34
		piece	$70, -$20, 2x2, $34
		piece	-$80, $10, 2x2, $34
		piece	$70, $10, 2x2, $34
		endsprite

		even