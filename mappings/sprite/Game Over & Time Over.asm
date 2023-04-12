; ---------------------------------------------------------------------------
; Sprite mappings - "GAME OVER"	and "TIME OVER"
; ---------------------------------------------------------------------------

Map_Over:	index offset(*)
	ptr	Frame_GameOver_Game
	ptr	Frame_GameOver_Over
	ptr	Frame_GameOver_Time
	ptr	Frame_GameOver_Over2

Frame_GameOver_Game:	spritemap
	piece	-$48, -8, 4, 2, 0, 0, 0, 0, 0
	piece	-$28, -8, 4, 2, 8, 0, 0, 0, 0
	endsprite

Frame_GameOver_Over:	spritemap
	piece	8, -8, 4, 2, $14, 0, 0, 0, 0
	piece	$28, -8, 4, 2, $C, 0, 0, 0, 0
	endsprite

Frame_GameOver_Time:	spritemap
	piece	-$3C, -8, 3, 2, $1C, 0, 0, 0, 0
	piece	-$24, -8, 4, 2, 8, 0, 0, 0, 0
	endsprite

Frame_GameOver_Over2:	spritemap
	piece	$C, -8, 4, 2, $14, 0, 0, 0, 0
	piece	$2C, -8, 4, 2, $C, 0, 0, 0, 0
	endsprite

	even
