; -------------------------------------------------------------------------------
; Sprite mappings - MTZ stomping pistons
; -------------------------------------------------------------------------------

Map_Stomp:	index offset(*)
		ptr	Map_obj64_0004
		ptr	Map_obj64_0056

Map_obj64_0004:	spritemap
		piece	-$40, -$C, 4x3, 1
		piece	-$20, -$C, 4x3, 1, xflip
		piece	0, -$C, 4x3, 1
		piece	$20, -$C, 4x3, 1, xflip
		piece	-$28, $C, 2x4, $D
		piece	-$28, $2C, 2x4, $D
		piece	-$28, $4C, 2x4, $D
		piece	$18, $C, 2x4, $D
		piece	$18, $2C, 2x4, $D
		piece	$18, $4C, 2x4, $D
		endsprite

Map_obj64_0056:	spritemap
		piece	-$10, -$20, 2x4, $57
		piece	0, -$20, 2x4, $57, xflip
		piece	-$10, 0, 2x4, $57, yflip
		piece	0, 0, 2x4, $57, xflip, yflip
		endsprite

		even