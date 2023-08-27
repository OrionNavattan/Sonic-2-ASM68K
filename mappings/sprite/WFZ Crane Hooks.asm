; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress crane hooks

; These mappings are slightly bugged: they are built using +4 from the start of 
; the object's tiles in VRAM as the base, rather than the start of the tiles.
; -------------------------------------------------------------------------------

Map_Hook:	index offset(*)
	ptr	Map_obj80_b_001A
	ptr	Map_obj80_b_002C
	ptr	Map_obj80_b_003E
	ptr	Map_obj80_b_0058
	ptr	Map_obj80_b_0072
	ptr	Map_obj80_b_0094
	ptr	Map_obj80_b_00B6
	ptr	Map_obj80_b_00E0
	ptr	Map_obj80_b_010A
	ptr	Map_obj80_b_013C
	ptr	Map_obj80_b_016E
	ptr	Map_obj80_b_01A8
	ptr	Map_obj80_b_01E2

Map_obj80_b_001A:	spritemap
	piece	-4, $50, 1, 2, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_002C:	spritemap
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_003E:	spritemap
	piece	-4, $30, 1, 2, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_0058:	spritemap
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_0072:	spritemap
	piece	-4, $10, 1, 2, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_0094:	spritemap
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_00B6:	spritemap
	piece	-4, -$10, 1, 2, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_00E0:	spritemap
	piece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_010A:	spritemap
	piece	-4, -$30, 1, 2, 0, 0, 0, 0, 0
	piece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_013C:	spritemap
	piece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
	piece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_016E:	spritemap
	piece	-4, -$50, 1, 2, 0, 0, 0, 0, 0
	piece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
	piece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_01A8:	spritemap
	piece	-4, -$60, 1, 4, 0, 0, 0, 0, 0
	piece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
	piece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj80_b_01E2:	spritemap
	piece	-4, -$70, 1, 2, 0, 0, 0, 0, 0
	piece	-4, -$60, 1, 4, 0, 0, 0, 0, 0
	piece	-4, -$40, 1, 4, 0, 0, 0, 0, 0
	piece	-4, -$20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, 0, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $20, 1, 4, 0, 0, 0, 0, 0
	piece	-4, $40, 1, 4, 0, 0, 0, 0, 0
	piece	-$C, $60, 3, 4, 4, 0, 0, 0, 0
	endsprite

	even