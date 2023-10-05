; -------------------------------------------------------------------------------
; Sprite mappings - CNZ Eggman and Eggpod

; These mappings use a non-standard tile base address(-$60).
; -------------------------------------------------------------------------------

Map_BCNZ:	index offset(*)
		ptr	Map_BCNZ
		ptr	Map_obj51_002A
		ptr	Map_obj51_0054
		ptr	Map_obj51_005E
		ptr	Map_obj51_0068
		ptr	Map_obj51_0072
		ptr	Map_obj51_0084
		ptr	Map_obj51_0096
		ptr	Map_obj51_00A8
		ptr	Map_obj51_00BA
		ptr	Map_obj51_00CC
		ptr	Map_obj51_00DE
		ptr	Map_obj51_00F0
		ptr	Map_obj51_00FA
		ptr	Map_obj51_0104
		ptr	Map_obj51_010E
		ptr	Map_obj51_0120
		ptr	Map_obj51_0132
		ptr	Map_obj51_0144
		ptr	Map_obj51_014E
		ptr	Map_obj51_0158

Map_obj51_002A:	spritemap
		piece	$10, -$10, 2x2, $17D
		piece	-7, -$28, 4x3, $60, pal2
		piece	-$28, 0, 4x4, $6C, pal2
		piece	-8, 0, 4x4, $7C, pal2
		piece	$18, 0, 2x3, $8C, pal2
		endsprite

Map_obj51_0054:	spritemap
		piece	-$1C, $18, 2x3, $AA, pal2
		endsprite

Map_obj51_005E:	spritemap
		piece	-$25, $10, 2x3, $B0, pal2
		endsprite

Map_obj51_0068:	spritemap
		piece	8, $10, 3x4, $92, pal2
		endsprite

Map_obj51_0072:	spritemap
		piece	8, $10, 3x2, $9E, pal2
		piece	$20, $10, 2x3, $A4, pal2
		endsprite

Map_obj51_0084:	spritemap
		piece	-$10, -$10, 4x2, $189
		piece	-$20, -$10, 2x2, $181
		endsprite

Map_obj51_0096:	spritemap
		piece	-$10, -$10, 4x2, $191
		piece	-$20, -$10, 2x2, $181
		endsprite

Map_obj51_00A8:	spritemap
		piece	-$10, -$10, 4x2, $199
		piece	-$20, -$10, 2x2, $185
		endsprite

Map_obj51_00BA:	spritemap
		piece	-$10, -$10, 4x2, $1A1
		piece	-$20, -$10, 2x2, $185
		endsprite

Map_obj51_00CC:	spritemap
		piece	-$10, -$10, 4x2, $1A9
		piece	-$20, -$10, 2x2, $185
		endsprite

Map_obj51_00DE:	spritemap
		piece	-$10, -$10, 4x2, $1B1
		piece	-$20, -$10, 2x2, $185
		endsprite

Map_obj51_00F0:	spritemap
		piece	-$10, $28, 4x1, $B6, pal2
		endsprite

Map_obj51_00FA:	spritemap
		piece	-$10, $28, 4x1, $BA, pal2
		endsprite

Map_obj51_0104:	spritemap
		piece	-$10, $28, 4x1, $BE, pal2
		endsprite

Map_obj51_010E:	spritemap
		piece	-$1C, $20, 4x1, $C2, pal2
		piece	4, $20, 4x1, $C6, pal2
		endsprite

Map_obj51_0120:	spritemap
		piece	-$1C, $20, 4x1, $CA, pal2
		piece	4, $20, 4x1, $CE, pal2
		endsprite

Map_obj51_0132:	spritemap
		piece	-$1C, $20, 4x1, $D2, pal2
		piece	4, $20, 4x1, $D6, pal2
		endsprite

Map_obj51_0144:	spritemap
		piece	-$C, -$C, 3x3, $DA
		endsprite

Map_obj51_014E:	spritemap
		piece	-4, -4, 1x1, $E3
		endsprite

Map_obj51_0158:	spritemap
		piece	-4, -4, 1x1, $E4
		endsprite

		even