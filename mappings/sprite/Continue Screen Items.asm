; -------------------------------------------------------------------------------
; Sprite mappings - text, countdown, stars, and Tails on the continue screen
; Art starts at $A000 in VRAM
; -------------------------------------------------------------------------------

Map_ContinueScreenItems:	index offset(*)
		ptr	Map_objDA_000C
		ptr	Map_objDA_000C
		ptr	Map_objDA_0066
		ptr	Map_objDA_0070
		ptr	Map_objDA_007A
		ptr	Map_objDA_0084

Map_objDA_000C:	spritemap
		piece	-$3C, -8, 2x2, $90
		piece	-$2C, -8, 2x2, $88
		piece	-$1C, -8, 2x2, $84
		piece	-$C, -8, 2x2, $94
		piece	4, -8, 1x2, $98
		piece	$C, -8, 2x2, $84
		piece	$1C, -8, 2x2, $9A
		piece	$2C, -8, 2x2, $80
		piece	-$18, $38, 2x2, $20, pal2
		piece	8, $38, 2x2, $20, pal2
		piece	-8, $36, 2x2, $1FC
		endsprite

Map_objDA_0066:	spritemap
		piece	-$10, -$10, 4x4, 0
		endsprite

Map_objDA_0070:	spritemap
		piece	-$10, -$10, 4x4, $10
		endsprite

Map_objDA_007A:	spritemap
		piece	0, 0, 2x3, 0
		endsprite

Map_objDA_0084:	spritemap
		piece	0, 0, 2x3, 6
		endsprite

		even