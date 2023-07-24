; -------------------------------------------------------------------------------
; Sprite mappings - Turtloid enemy (SCZ)
; Also includes Turtloid's rider, Turtloid's projectile, and Balkiry's jet
; -------------------------------------------------------------------------------

Map_Turt:	index offset(*)
	ptr	Frame_Turt1					; normal
	ptr	Frame_Turt2					; firing projectile
	ptr	Frame_TRider1
	ptr	Frame_TRider2
	ptr	Map_obj9C_005C
	ptr	Map_obj9C_0066
	ptr	Map_obj9C_0070
	ptr	Map_obj9C_007A
	ptr	Map_obj9C_0084
	ptr	Map_obj9C_008E

Frame_Turt1:	spritemap
	piece	-$1C, -$10, 3, 2, 0, 0, 0, 1, 1
	piece	-4, -$10, 4, 4, 6, 0, 0, 1, 1
	piece	-$1C, 0, 3, 2, $16, 0, 0, 1, 1
	endsprite

Frame_Turt2:	spritemap
	piece	-$1C, -$10, 3, 2, 0, 0, 0, 1, 1
	piece	-$1C, 0, 3, 2, $1C, 0, 0, 1, 1
	piece	-4, -$10, 4, 4, 6, 0, 0, 1, 1
	endsprite

Frame_TRider1:	spritemap
	piece	-$C, -$C, 3, 3, $22, 0, 0, 1, 1
	endsprite

Frame_TRider2:	spritemap
	piece	-$C, -$C, 3, 3, $2B, 0, 0, 1, 1
	endsprite

Map_obj9C_005C:	spritemap
	piece	-4, -4, 1, 1, $34, 0, 0, 0, 1
	endsprite

Map_obj9C_0066:	spritemap
	piece	-4, -4, 1, 1, $35, 0, 0, 0, 1
	endsprite

Map_obj9C_0070:	spritemap
	piece	$1C, 6, 2, 1, $36, 0, 0, 0, 1
	endsprite

Map_obj9C_007A:	spritemap
	piece	$1C, 6, 1, 1, $38, 0, 0, 0, 1
	endsprite

Map_obj9C_0084:	spritemap
	piece	$1B, -5, 2, 1, $36, 0, 0, 0, 1
	endsprite

Map_obj9C_008E:	spritemap
	piece	$1B, -5, 1, 1, $38, 0, 0, 0, 1
	endsprite

	even
