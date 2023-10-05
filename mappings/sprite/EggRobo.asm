; -------------------------------------------------------------------------------
; Sprite mappings - EggRobo (final boss)
; -------------------------------------------------------------------------------

Map_EggRobo:	index offset(*)
		ptr	Map_objC7_002E
		ptr	Map_objC7_0038
		ptr	Map_objC7_0052
		ptr	Map_objC7_006C
		ptr	Map_objC7_00BE
		ptr	Map_objC7_00C8
		ptr	Map_objC7_00D2
		ptr	Map_objC7_00E4
		ptr	Map_objC7_00E4
		ptr	Map_objC7_00E4
		ptr	Map_objC7_00E4
		ptr	Map_objC7_00EE
		ptr	Map_objC7_0120
		ptr	Map_objC7_012A
		ptr	Map_objC7_0134
		ptr	Map_objC7_013E
		ptr	Map_objC7_0148
		ptr	Map_objC7_018A
		ptr	Map_objC7_01CC
		ptr	Map_objC7_020E
		ptr	Map_objC7_0250
		ptr	Map_objC7_025A
		ptr	Map_objC7_0264

Map_objC7_002E:	spritemap
		piece	$C, -$10, 3x4, 0
		endsprite

Map_objC7_0038:	spritemap
		piece	-$14, -$10, 4x2, $C
		piece	-$C, 0, 3x2, $14
		piece	$C, -8, 3x3, $1A
		endsprite

Map_objC7_0052:	spritemap
		piece	-$24, 8, 1x1, $23
		piece	-$1C, -8, 4x3, $24
		piece	4, -8, 4x3, $30
		endsprite

Map_objC7_006C:	spritemap
		piece	-$2C, -$24, 4x4, $3C, pal2
		piece	-$C, -$24, 4x4, $4C, pal2
		piece	$14, -$24, 3x4, $5C, pal2
		piece	$2C, -$24, 3x4, $68, pal2
		piece	-$2C, -4, 4x4, $74, pal2
		piece	-$C, -4, 4x4, $84, pal2
		piece	$14, -4, 3x4, $94, pal2
		piece	$2C, -4, 3x2, $A0, pal2
		piece	-$1C, $1C, 4x1, $A6, pal2
		piece	4, $1C, 4x1, $AA, pal2
		endsprite

Map_objC7_00BE:	spritemap
		piece	-$10, -$10, 4x4, $AE, pal2
		endsprite

Map_objC7_00C8:	spritemap
		piece	-$C, -$C, 3x3, $BE, pal2
		endsprite

Map_objC7_00D2:	spritemap
		piece	0, -$C, 4x3, $C7, pal2
		piece	-$20, -$C, 4x3, $D3, pal2
		endsprite

Map_objC7_00E4:	spritemap
		piece	-$10, -$10, 4x4, $E2, pal2
		endsprite

Map_objC7_00EE:	spritemap
		piece	-$15, -$20, 2x3, $F2, pal2
		piece	-5, -$18, 3x2, $F8, pal2
		piece	-$12, -8, 2x3, $FE, pal2
		piece	-$20, $10, 4x2, $104, pal2
		piece	-2, -8, 4x3, $10C, pal2
		piece	0, $10, 4x2, $118, pal2
		endsprite

Map_objC7_0120:	spritemap
		piece	-8, -$C, 2x3, $120, pal2
		endsprite

Map_objC7_012A:	spritemap
		piece	-8, -$C, 2x2, $126, pal2
		endsprite

Map_objC7_0134:	spritemap
		piece	-$10, -$10, 4x4, $12B
		endsprite

Map_objC7_013E:	spritemap
		piece	-4, -4, 1x1, $13B
		endsprite

Map_objC7_0148:	spritemap
		piece	-$10, -$10, 2x2, $13C, pal2
		piece	0, -$10, 2x2, $13C, xflip, pal2
		piece	-$10, 0, 2x2, $13C, yflip, pal2
		piece	0, 0, 2x2, $13C, xflip, yflip, pal2
		piece	-$20, -$20, 1x1, $144, pal2
		piece	$18, -$20, 1x1, $144, xflip, pal2
		piece	-$20, $18, 1x1, $144, yflip, pal2
		piece	$18, $18, 1x1, $144, xflip, yflip, pal2
		endsprite

Map_objC7_018A:	spritemap
		piece	-$10, -$10, 2x2, $13C, pal2
		piece	0, -$10, 2x2, $13C, xflip, pal2
		piece	-$10, 0, 2x2, $13C, yflip, pal2
		piece	0, 0, 2x2, $13C, xflip, yflip, pal2
		piece	-$28, -$28, 1x1, $145, pal2
		piece	$20, -$28, 1x1, $145, xflip, pal2
		piece	-$28, $20, 1x1, $145, yflip, pal2
		piece	$20, $20, 1x1, $145, xflip, yflip, pal2
		endsprite

Map_objC7_01CC:	spritemap
		piece	-$10, -$10, 2x2, $13C, pal2
		piece	0, -$10, 2x2, $13C, xflip, pal2
		piece	-$10, 0, 2x2, $13C, yflip, pal2
		piece	0, 0, 2x2, $13C, xflip, yflip, pal2
		piece	-$30, -$30, 1x1, $146, pal2
		piece	$28, -$30, 1x1, $146, xflip, pal2
		piece	-$30, $28, 1x1, $146, yflip, pal2
		piece	$28, $28, 1x1, $146, xflip, yflip, pal2
		endsprite

Map_objC7_020E:	spritemap
		piece	-$10, -$10, 2x2, $13C, pal2
		piece	0, -$10, 2x2, $13C, xflip, pal2
		piece	-$10, 0, 2x2, $13C, yflip, pal2
		piece	0, 0, 2x2, $13C, xflip, yflip, pal2
		piece	-$38, -$38, 1x1, $12A, pal2
		piece	$30, -$38, 1x1, $12A, xflip, pal2
		piece	-$38, $30, 1x1, $12A, yflip, pal2
		piece	$30, $30, 1x1, $12A, xflip, yflip, pal2
		endsprite

Map_objC7_0250:	spritemap
		piece	-8, -8, 2x2, $140
		endsprite

Map_objC7_025A:	spritemap
		piece	0, 0, 1x1, 4
		endsprite

Map_objC7_0264:	spritemap
		piece	-$10, -$10, 2x2, $13C, pal2
		piece	0, -$10, 2x2, $13C, xflip, pal2
		piece	-$10, 0, 2x2, $13C, yflip, pal2
		piece	0, 0, 2x2, $13C, xflip, yflip, pal2
		piece	-$18, -$18, 1x1, $144, pal2
		piece	$10, -$18, 1x1, $144, xflip, pal2
		piece	-$18, $10, 1x1, $144, yflip, pal2
		piece	$10, $10, 1x1, $144, xflip, yflip, pal2
		endsprite

		even