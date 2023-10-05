; ---------------------------------------------------------------------------
; Sprite mappings - Hill Top seesaws
; ---------------------------------------------------------------------------

Map_Seesaw:	index offset(*)
		ptr	Map_obj14_a_0008
		ptr	Map_obj14_a_004A
		ptr	Map_obj14_a_0008
		ptr	Map_obj14_a_004A

Map_obj14_a_0008:	spritemap
		piece	-8, -4, 2x2, $14, pal3
		piece	-4, $C, 1x2, $12, pal2
		piece	-$30, -$1C, 2x2, 6, pal3
		piece	-$20, -$14, 2x2, $A, pal3
		piece	-$10, -$C, 2x2, $A, pal3
		piece	0, -4, 2x2, $A, pal3
		piece	$10, 4, 2x2, $A, pal3
		piece	$20, $C, 2x2, $E, pal3
		endsprite

Map_obj14_a_004A:	spritemap
		piece	-8, -4, 2x2, $14, pal3
		piece	-4, $C, 1x2, $12, pal2
		piece	-$30, -$C, 2x2, 0, pal3
		piece	-$20, -$C, 2x2, 2, pal3
		piece	-$10, -$C, 2x2, 2, pal3
		piece	0, -$C, 2x2, 2, pal3
		piece	$10, -$C, 2x2, 2, pal3
		piece	$20, -$C, 2x2, 0, xflip, pal3
		endsprite

		even