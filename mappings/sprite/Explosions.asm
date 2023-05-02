; ---------------------------------------------------------------------------
; Sprite mappings - explosion from a badnik or monitor
; ---------------------------------------------------------------------------

Map_ExplodeItem:	index offset(*)
	ptr	Map_obj27_000A
	ptr	Map_obj27_0014
	ptr	Map_obj27_001E
	ptr	Map_obj27_0028
	ptr	Map_obj27_0032

Map_obj27_000A:	spritemap
	piece	-8, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj27_0014:	spritemap
	piece	-$10, -$10, 4, 4, 4, 0, 0, 1, 0
	endsprite

Map_obj27_001E:	spritemap
	piece	-$10, -$10, 4, 4, $14, 0, 0, 1, 0
	endsprite

Map_obj27_0028:	spritemap
	piece	-$10, -$10, 4, 4, $24, 0, 0, 1, 0
	endsprite

Map_obj27_0032:	spritemap
	piece	-$10, -$10, 4, 4, $34, 0, 0, 1, 0
	endsprite

	even
