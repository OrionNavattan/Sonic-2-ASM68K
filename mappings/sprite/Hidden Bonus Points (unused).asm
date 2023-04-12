; ---------------------------------------------------------------------------
; Sprite mappings - hidden points at the end of	a level (unused Sonic 1 leftover)
; ---------------------------------------------------------------------------

Map_Bonus:	index offset(*)
	ptr	Map_obj7D_0008
	ptr	Map_obj7D_000A
	ptr	Map_obj7D_0014
	ptr	Map_obj7D_001E

Map_obj7D_0008:	spritemap
	endsprite

Map_obj7D_000A:	spritemap
	piece	-$10, -$C, 4, 3, 0, 0, 0, 0, 0
	endsprite

Map_obj7D_0014:	spritemap
	piece	-$10, -$C, 4, 3, $C, 0, 0, 0, 0
	endsprite

Map_obj7D_001E:	spritemap
	piece	-$10, -$C, 4, 3, $18, 0, 0, 0, 0
	endsprite

	even
