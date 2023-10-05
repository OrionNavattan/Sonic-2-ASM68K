; ----------------------------------------------------------------------------
; Sprite mapping pointers - red springs
; ----------------------------------------------------------------------------

Map_RedSpring:	index offset(*)
		ptr	word_19048
		ptr	word_1905A
		ptr	word_19064
		ptr	word_19076
		ptr	word_19088
		ptr	word_19092
		ptr	word_190A4
		ptr	word_190B6
		ptr	word_190D8
		ptr	word_190F2
		ptr	word_19114
		
; -------------------------------------------------------------------------------
; Sprite mapping pointers - yellow springs
; -------------------------------------------------------------------------------

Map_YellowSpring:	index offset(*)
		ptr	word_19048
		ptr	word_1905A
		ptr	word_19064
		ptr	word_19076
		ptr	word_19088
		ptr	word_19092
		ptr	word_190A4
		ptr	word_19136
		ptr	word_19158
		ptr	word_19172
		ptr	word_19194

; ----------------------------------------------------------------------------
; Sprite mappings - springs
; ----------------------------------------------------------------------------

word_19048:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	-8, 0, 2x2, 8
		endsprite

word_1905A:	spritemap
		piece	-$10, -8, 4x2, 0
		endsprite

word_19064:	spritemap
		piece	-$10, -$20, 4x2, 0
		piece	-8, -$10, 2x4, $C
		endsprite

word_19076:	spritemap
		piece	0, -$10, 1x4, 0
		piece	-8, -8, 1x2, 4
		endsprite

word_19088:	spritemap
		piece	-8, -$10, 1x4, 0
		endsprite

word_19092:	spritemap
		piece	$10, -$10, 1x4, 0
		piece	-8, -8, 3x2, 6
		endsprite

word_190A4:	spritemap
		piece	-$10, 0, 4x2, 0, yflip
		piece	-8, -$10, 2x2, 8, yflip
		endsprite

word_190B6:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	0, 0, 2x2, 8
		piece	-$A, -5, 2x2, $C
		piece	-$10, 0, 2x2, $1C, pal2
		endsprite

word_190D8:	spritemap
		piece	-$16, -$A, 4x2, 0
		piece	-6, 6, 2x2, 8
		piece	-$10, 0, 2x2, $1C, pal2
		endsprite

word_190F2:	spritemap
		piece	-5, -$1A, 4x2, 0
		piece	$B, -$A, 2x2, 8
		piece	-$A, -$D, 3x4, $10
		piece	-$10, 0, 2x2, $1C, pal2
		endsprite

word_19114:	spritemap
		piece	-$10, 0, 4x2, 0, yflip
		piece	0, -$10, 2x2, 8, yflip
		piece	-$A, -$B, 2x2, $C, yflip
		piece	-$10, -$10, 2x2, $1C, yflip, pal2
		endsprite

word_19136:	spritemap
		piece	-$10, -$10, 4x2, 0
		piece	0, 0, 2x2, 8
		piece	-$A, -5, 2x2, $C
		piece	-$10, 0, 2x2, $1C
		endsprite

word_19158:	spritemap
		piece	-$16, -$A, 4x2, 0
		piece	-6, 6, 2x2, 8
		piece	-$10, 0, 2x2, $1C
		endsprite

word_19172:	spritemap
		piece	-5, -$1A, 4x2, 0
		piece	$B, -$A, 2x2, 8
		piece	-$A, -$D, 3x4, $10
		piece	-$10, 0, 2x2, $1C
		endsprite

word_19194:	spritemap
		piece	-$10, 0, 4x2, 0, yflip
		piece	0, -$10, 2x2, 8, yflip
		piece	-$A, -$B, 2x2, $C, yflip
		piece	-$10, -$10, 2x2, $1C, yflip
		endsprite

		even