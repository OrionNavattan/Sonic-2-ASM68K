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
		spritePiece	$1C, 0, 2, 2, $1E4, 0, 0, 0, 0
		endsprite

Map_obj54_0034:	spritemap
		spritePiece	$1C, 0, 2, 2, $1E8, 0, 0, 0, 0
		endsprite

Map_obj54_003E:	spritemap
		spritePiece	2, -$28, 2, 2, $1A4, 0, 0, 0, 0
		spritePiece	$10, -$18, 2, 2, $1A8, 0, 0, 0, 0
		spritePiece	-$10, -8, 4, 4, $18C, 0, 0, 1, 0
		spritePiece	$10, -8, 2, 4, $19C, 0, 0, 1, 0
		spritePiece	-$18, -8, 1, 3, 3, 0, 0, 1, 0
		endsprite

Map_obj54_0068:	spritemap
		spritePiece	-$C, -$C, 3, 3, $E, 0, 0, 1, 0
		endsprite

Map_obj54_0072:	spritemap
		spritePiece	-$C, -$C, 3, 3, $6F, 0, 0, 1, 0
		endsprite

Map_obj54_007C:	spritemap
		spritePiece	-8, -8, 2, 2, $78, 0, 0, 1, 0
		endsprite

Map_obj54_0086:	spritemap
		spritePiece	-8, -$C, 2, 3, $17, 0, 0, 1, 0
		endsprite

Map_obj54_0090:	spritemap
		spritePiece	-$C, -8, 3, 2, $1D, 0, 0, 1, 0
		endsprite

Map_obj54_009A:	spritemap
		spritePiece	-8, -$C, 2, 3, $23, 0, 0, 1, 0
		endsprite

Map_obj54_00A4:	spritemap
		spritePiece	-$C, -$C, 3, 3, $29, 0, 0, 0, 0
		endsprite

Map_obj54_00AE:	spritemap
		spritePiece	-$10, -$10, 4, 4, $32, 0, 0, 0, 0
		endsprite

Map_obj54_00B8:	spritemap
		spritePiece	-$18, -$18, 3, 3, $42, 0, 0, 0, 0
		spritePiece	0, -$18, 3, 3, $4B, 0, 0, 0, 0
		spritePiece	-$18, 0, 3, 3, $54, 0, 0, 0, 0
		spritePiece	0, 0, 3, 3, $5D, 0, 0, 0, 0
		endsprite

Map_obj54_00DA:	spritemap
		spritePiece	-$10, -$18, 4, 2, $1B4, 0, 0, 0, 0
		spritePiece	-$20, -$18, 2, 2, $1AC, 0, 0, 0, 0
		endsprite

Map_obj54_00EC:	spritemap
		spritePiece	-$10, -$18, 4, 2, $1BC, 0, 0, 0, 0
		spritePiece	-$20, -$18, 2, 2, $1AC, 0, 0, 0, 0
		endsprite

Map_obj54_00FE:	spritemap
		spritePiece	-$10, -$18, 4, 2, $1C4, 0, 0, 0, 0
		spritePiece	-$20, -$18, 2, 2, $1B0, 0, 0, 0, 0
		endsprite

Map_obj54_0110:	spritemap
		spritePiece	-$10, -$18, 4, 2, $1CC, 0, 0, 0, 0
		spritePiece	-$20, -$18, 2, 2, $1B0, 0, 0, 0, 0
		endsprite

Map_obj54_0122:	spritemap
		spritePiece	-$10, -$18, 4, 2, $1D4, 0, 0, 0, 0
		spritePiece	-$20, -$18, 2, 2, $1B0, 0, 0, 0, 0
		endsprite

Map_obj54_0134:	spritemap
		spritePiece	-$10, -$18, 4, 2, $1DC, 0, 0, 0, 0
		spritePiece	-$20, -$18, 2, 2, $1B0, 0, 0, 0, 0
		endsprite

Map_obj54_0146:	spritemap
		spritePiece	-$20, -8, 4, 2, 6, 0, 0, 1, 0
		spritePiece	0, -8, 4, 2, 6, 1, 0, 1, 0
		endsprite

Map_obj54_0158:	spritemap
		spritePiece	-$20, -8, 1, 3, 0, 0, 0, 1, 0
		endsprite

Map_obj54_0162:	spritemap
		spritePiece	-$18, -$18, 3, 3, $66, 0, 0, 0, 0
		spritePiece	0, -$18, 3, 3, $66, 1, 0, 0, 0
		spritePiece	-$18, 0, 3, 3, $66, 0, 1, 0, 0
		spritePiece	0, 0, 3, 3, $66, 1, 1, 0, 0
		endsprite

		dc.w 0

		even
