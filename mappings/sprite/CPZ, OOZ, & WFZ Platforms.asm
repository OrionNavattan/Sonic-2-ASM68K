; ---------------------------------------------------------------------------
; Sprite mappings - Chemical Plant, Oil Ocean, and Wing Fortress platforms
; ---------------------------------------------------------------------------

Map_Plat2:	index offset(*)
		ptr	Map_obj19_0008
		ptr	Map_obj19_001A
		ptr	Map_obj19_002C
		ptr	Map_obj19_004E

Map_obj19_0008:	spritemap
		piece	-$20, -$10, 4x4, 0
		piece	0, -$10, 4x4, 0, xflip
		endsprite

Map_obj19_001A:	spritemap
		piece	-$18, -$10, 3x4, 0
		piece	0, -$10, 3x4, 0, xflip
		endsprite

Map_obj19_002C:	spritemap
		piece	-$40, -$10, 4x3, 0
		piece	-$20, -$10, 4x3, $C
		piece	0, -$10, 4x3, $C, xflip
		piece	$20, -$10, 4x3, 0, xflip
		endsprite

Map_obj19_004E:	spritemap
		piece	-$20, -$10, 4x3, 0
		piece	0, -$10, 4x3, 0, xflip
		endsprite

		even