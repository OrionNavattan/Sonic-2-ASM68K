; -------------------------------------------------------------------------------
; Sprite mappings - Crawl enemy (CNobjc8\.asmZ)
; -------------------------------------------------------------------------------

Map_Crawl:	index offset(*)
		ptr	Map_objC8_0008
		ptr	Map_objC8_0022
		ptr	Map_objC8_003C
		ptr	Map_objC8_0056

Map_objC8_0008:	spritemap
		piece	0, -$10, 3x4, $10, pal2
		piece	-$10, -$10, 4x4, 0, pal2
		piece	-$18, 0, 3x2, $24, pal2
		endsprite

Map_objC8_0022:	spritemap
		piece	4, -$10, 3x4, $10, pal2
		piece	-$10, -$10, 4x4, 0, pal2
		piece	-$20, 0, 3x2, $24, pal2
		endsprite

Map_objC8_003C:	spritemap
		piece	-$18, -$10, 3x4, $10, pal2
		piece	-$10, 0, 3x2, $24, pal2
		piece	-$10, -$10, 4x4, 0, pal2
		endsprite

Map_objC8_0056:	spritemap
		piece	-$10, -$10, 4x2, $1C, pal2
		piece	-8, 0, 3x2, $24, pal2
		piece	-$20, 0, 3x2, $24, xflip, pal2
		piece	-$10, -$10, 4x4, 0, pal2
		endsprite

		even
