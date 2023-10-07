; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean transporter ball
; -------------------------------------------------------------------------------

Map_TransBall:	index offset(*)
		ptr	Map_obj48_0010
		ptr	Map_obj48_0052
		ptr	Map_obj48_0084
		ptr	Map_obj48_00A6
		ptr	Map_obj48_00C8
		ptr	Map_obj48_00EA
		ptr	Map_obj48_010C
		ptr	Map_obj48_013E

Map_obj48_0010:	spritemap
		piece	-$10, -$28, 2x1, 0
		piece	0, -$28, 2x1, 0, xflip
		piece	-$10, -$20, 2x1, 2
		piece	0, -$20, 2x1, 2, xflip
		piece	-$18, -$18, 3x3, $11
		piece	0, -$18, 3x3, $11, xflip
		piece	-$18, 0, 3x3, 8, yflip
		piece	0, 0, 3x3, 8, xflip, yflip
		endsprite

Map_obj48_0052:	spritemap
		piece	-$10, -$20, 2x1, 0
		piece	0, -$20, 2x1, 0, xflip
		piece	-$18, -$18, 3x3, $11
		piece	0, -$18, 3x3, $11, xflip
		piece	-$18, 0, 3x3, 8, yflip
		piece	0, 0, 3x3, 8, xflip, yflip
		endsprite

Map_obj48_0084:	spritemap
		piece	-$18, -$18, 3x3, $11
		piece	0, -$18, 3x3, $11, xflip
		piece	-$18, 0, 3x3, 8, yflip
		piece	0, 0, 3x3, 8, xflip, yflip
		endsprite

Map_obj48_00A6:	spritemap
		piece	-$18, -$18, 3x3, $1A
		piece	0, -$18, 3x3, $23, xflip, yflip
		piece	-$18, 0, 3x3, $23
		piece	0, 0, 3x3, $1A, xflip, yflip
		endsprite

Map_obj48_00C8:	spritemap
		piece	-$18, -$18, 3x3, $23, yflip
		piece	0, -$18, 3x3, $1A, xflip
		piece	-$18, 0, 3x3, $1A, yflip
		piece	0, 0, 3x3, $23, xflip
		endsprite

Map_obj48_00EA:	spritemap
		piece	-$18, -$18, 3x3, 8
		piece	0, -$18, 3x3, $2C, yflip
		piece	-$18, 0, 3x3, 8, yflip
		piece	0, 0, 3x3, $2C
		endsprite

Map_obj48_010C:	spritemap
		piece	-$18, -$18, 3x3, 8
		piece	0, -$18, 3x3, $2C, yflip
		piece	-$18, 0, 3x3, 8, yflip
		piece	0, 0, 3x3, $2C
		piece	$18, -$10, 1x2, 6
		piece	$18, 0, 1x2, 6, yflip
		endsprite

Map_obj48_013E:	spritemap
		piece	-$18, -$18, 3x3, 8
		piece	0, -$18, 3x3, $2C, yflip
		piece	-$18, 0, 3x3, 8, yflip
		piece	0, 0, 3x3, $2C
		piece	$18, -$10, 1x2, 4
		piece	$18, 0, 1x2, 4, yflip
		piece	$20, -$10, 1x2, 6
		piece	$20, 0, 1x2, 6, yflip
		endsprite

		even
