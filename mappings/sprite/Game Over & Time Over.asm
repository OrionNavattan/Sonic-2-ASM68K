; ---------------------------------------------------------------------------
; Sprite mappings - "GAME OVER"	and "TIME OVER"
; ---------------------------------------------------------------------------

Map_Over:	index offset(*)
		ptr	Frame_GameOver_Game
		ptr	Frame_GameOver_Over
		ptr	Frame_GameOver_Time
		ptr	Frame_GameOver_Over2

Frame_GameOver_Game:	spritemap
		piece	-$48, -8, 4x2, 0
		piece	-$28, -8, 4x2, 8
		endsprite

Frame_GameOver_Over:	spritemap
		piece	8, -8, 4x2, $14
		piece	$28, -8, 4x2, $C
		endsprite

Frame_GameOver_Time:	spritemap
		piece	-$3C, -8, 3x2, $1C
		piece	-$24, -8, 4x2, 8
		endsprite

Frame_GameOver_Over2:	spritemap
		piece	$C, -8, 4x2, $14
		piece	$2C, -8, 4x2, $C
		endsprite

		even