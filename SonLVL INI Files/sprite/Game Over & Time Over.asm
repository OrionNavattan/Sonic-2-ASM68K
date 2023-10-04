; ---------------------------------------------------------------------------
; Sprite mappings - "GAME OVER"	and "TIME OVER"
; ---------------------------------------------------------------------------

Map_Over:	index offset(*)
		ptr	Frame_GameOver_Game
		ptr	Frame_GameOver_Over
		ptr	Frame_GameOver_Time
		ptr	Frame_GameOver_Over2

Frame_GameOver_Game:	spriteHeader
		spritePiece	-$48, -8, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-$28, -8, 4, 2, 8, 0, 0, 0, 0
		endsprite

Frame_GameOver_Over:	spriteHeader
		spritePiece	8, -8, 4, 2, $14, 0, 0, 0, 0
		spritePiece	$28, -8, 4, 2, $C, 0, 0, 0, 0
		endsprite

Frame_GameOver_Time:	spriteHeader
		spritePiece	-$3C, -8, 3, 2, $1C, 0, 0, 0, 0
		spritePiece	-$24, -8, 4, 2, 8, 0, 0, 0, 0
		endsprite

Frame_GameOver_Over2:	spriteHeader
		spritePiece	$C, -8, 4, 2, $14, 0, 0, 0, 0
		spritePiece	$2C, -8, 4, 2, $C, 0, 0, 0, 0
		endsprite

		even
