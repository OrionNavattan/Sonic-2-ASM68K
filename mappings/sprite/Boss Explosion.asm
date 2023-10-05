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
		piece	-8, -8, 2x2, 0
		endsprite

Map_obj58_0018:	spritemap
		piece	-$10, -$10, 4x4, 4
		endsprite

Map_obj58_0022:	spritemap
		piece	-$10, -$10, 4x4, $14
		endsprite

Map_obj58_002C:	spritemap
		piece	-$10, -$10, 4x4, $24
		endsprite

Map_obj58_0036:	spritemap
		piece	-$10, -$10, 4x4, $34
		endsprite

Map_obj58_0040:	spritemap
		piece	-$10, -$10, 4x4, $44
		endsprite

Map_obj58_004A:	spritemap
		piece	-$10, -$10, 4x4, $54
		endsprite

		even