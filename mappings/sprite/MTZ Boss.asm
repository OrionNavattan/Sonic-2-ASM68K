; -------------------------------------------------------------------------------
; Sprite mappings - MTZ Eggman, Eggpod, and orbs
; -------------------------------------------------------------------------------

Map_BMTZ:	index offset(*)
		ptr	Map_obj54_002A
		ptr	Map_obj54_0034
		ptr	Map_obj54_003E
		ptr	Map_obj54_0068
		ptr	Map_obj54_0072
		ptr	Map_obj54_007C
		ptr	Map_obj54_0086
		ptr	Map_obj54_0090
		ptr	Map_obj54_009A
		ptr	Map_obj54_00A4
		ptr	Map_obj54_00AE
		ptr	Map_obj54_00B8
		ptr	Map_obj54_00DA
		ptr	Map_obj54_00EC
		ptr	Map_obj54_00FE
		ptr	Map_obj54_0110
		ptr	Map_obj54_0122
		ptr	Map_obj54_0134
		ptr	Map_obj54_0146
		ptr	Map_obj54_0158
		ptr	Map_obj54_0162

Map_obj54_002A:	spritemap
		piece	$1C, 0, 2x2, $1E4
		endsprite

Map_obj54_0034:	spritemap
		piece	$1C, 0, 2x2, $1E8
		endsprite

Map_obj54_003E:	spritemap
		piece	2, -$28, 2x2, $1A4
		piece	$10, -$18, 2x2, $1A8
		piece	-$10, -8, 4x4, $18C, pal2
		piece	$10, -8, 2x4, $19C, pal2
		piece	-$18, -8, 1x3, 3, pal2
		endsprite

Map_obj54_0068:	spritemap
		piece	-$C, -$C, 3x3, $E, pal2
		endsprite

Map_obj54_0072:	spritemap
		piece	-$C, -$C, 3x3, $6F, pal2
		endsprite

Map_obj54_007C:	spritemap
		piece	-8, -8, 2x2, $78, pal2
		endsprite

Map_obj54_0086:	spritemap
		piece	-8, -$C, 2x3, $17, pal2
		endsprite

Map_obj54_0090:	spritemap
		piece	-$C, -8, 3x2, $1D, pal2
		endsprite

Map_obj54_009A:	spritemap
		piece	-8, -$C, 2x3, $23, pal2
		endsprite

Map_obj54_00A4:	spritemap
		piece	-$C, -$C, 3x3, $29
		endsprite

Map_obj54_00AE:	spritemap
		piece	-$10, -$10, 4x4, $32
		endsprite

Map_obj54_00B8:	spritemap
		piece	-$18, -$18, 3x3, $42
		piece	0, -$18, 3x3, $4B
		piece	-$18, 0, 3x3, $54
		piece	0, 0, 3x3, $5D
		endsprite

Map_obj54_00DA:	spritemap
		piece	-$10, -$18, 4x2, $1B4
		piece	-$20, -$18, 2x2, $1AC
		endsprite

Map_obj54_00EC:	spritemap
		piece	-$10, -$18, 4x2, $1BC
		piece	-$20, -$18, 2x2, $1AC
		endsprite

Map_obj54_00FE:	spritemap
		piece	-$10, -$18, 4x2, $1C4
		piece	-$20, -$18, 2x2, $1B0
		endsprite

Map_obj54_0110:	spritemap
		piece	-$10, -$18, 4x2, $1CC
		piece	-$20, -$18, 2x2, $1B0
		endsprite

Map_obj54_0122:	spritemap
		piece	-$10, -$18, 4x2, $1D4
		piece	-$20, -$18, 2x2, $1B0
		endsprite

Map_obj54_0134:	spritemap
		piece	-$10, -$18, 4x2, $1DC
		piece	-$20, -$18, 2x2, $1B0
		endsprite

Map_obj54_0146:	spritemap
		piece	-$20, -8, 4x2, 6, pal2
		piece	0, -8, 4x2, 6, xflip, pal2
		endsprite

Map_obj54_0158:	spritemap
		piece	-$20, -8, 1x3, 0, pal2
		endsprite

Map_obj54_0162:	spritemap
		piece	-$18, -$18, 3x3, $66
		piece	0, -$18, 3x3, $66, xflip
		piece	-$18, 0, 3x3, $66, yflip
		piece	0, 0, 3x3, $66, xflip, yflip
		endsprite

		dc.w 0

		even