; -------------------------------------------------------------------------------
; Sprite mappings - explosion when a boss is destroyed
; -------------------------------------------------------------------------------

Map_ExplodeBomb:	index offset(*)
	ptr	Map_obj58_000E
	ptr	Map_obj58_0018
	ptr	Map_obj58_0022
	ptr	Map_obj58_002C
	ptr	Map_obj58_0036
	ptr	Map_obj58_0040
	ptr	Map_obj58_004A

Map_obj58_000E:	spritemap
	piece	-8, -8, 2, 2, 0, 0, 0, 0, 0
	endsprite

Map_obj58_0018:	spritemap
	piece	-$10, -$10, 4, 4, 4, 0, 0, 0, 0
	endsprite

Map_obj58_0022:	spritemap
	piece	-$10, -$10, 4, 4, $14, 0, 0, 0, 0
	endsprite

Map_obj58_002C:	spritemap
	piece	-$10, -$10, 4, 4, $24, 0, 0, 0, 0
	endsprite

Map_obj58_0036:	spritemap
	piece	-$10, -$10, 4, 4, $34, 0, 0, 0, 0
	endsprite

Map_obj58_0040:	spritemap
	piece	-$10, -$10, 4, 4, $44, 0, 0, 0, 0
	endsprite

Map_obj58_004A:	spritemap
	piece	-$10, -$10, 4, 4, $54, 0, 0, 0, 0
	endsprite

	even
