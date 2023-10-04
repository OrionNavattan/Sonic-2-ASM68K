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

word_19048:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-8, 0, 2, 2, 8, 0, 0, 0, 0
		endsprite

word_1905A:	spriteHeader
		spritePiece	-$10, -8, 4, 2, 0, 0, 0, 0, 0
		endsprite

word_19064:	spriteHeader
		spritePiece	-$10, -$20, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-8, -$10, 2, 4, $C, 0, 0, 0, 0
		endsprite

word_19076:	spriteHeader
		spritePiece	0, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-8, -8, 1, 2, 4, 0, 0, 0, 0
		endsprite

word_19088:	spriteHeader
		spritePiece	-8, -$10, 1, 4, 0, 0, 0, 0, 0
		endsprite

word_19092:	spriteHeader
		spritePiece	$10, -$10, 1, 4, 0, 0, 0, 0, 0
		spritePiece	-8, -8, 3, 2, 6, 0, 0, 0, 0
		endsprite

word_190A4:	spriteHeader
		spritePiece	-$10, 0, 4, 2, 0, 0, 1, 0, 0
		spritePiece	-8, -$10, 2, 2, 8, 0, 1, 0, 0
		endsprite

word_190B6:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$A, -5, 2, 2, $C, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 1, 0
		endsprite

word_190D8:	spriteHeader
		spritePiece	-$16, -$A, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-6, 6, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 1, 0
		endsprite

word_190F2:	spriteHeader
		spritePiece	-5, -$1A, 4, 2, 0, 0, 0, 0, 0
		spritePiece	$B, -$A, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$A, -$D, 3, 4, $10, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 1, 0
		endsprite

word_19114:	spriteHeader
		spritePiece	-$10, 0, 4, 2, 0, 0, 1, 0, 0
		spritePiece	0, -$10, 2, 2, 8, 0, 1, 0, 0
		spritePiece	-$A, -$B, 2, 2, $C, 0, 1, 0, 0
		spritePiece	-$10, -$10, 2, 2, $1C, 0, 1, 1, 0
		endsprite

word_19136:	spriteHeader
		spritePiece	-$10, -$10, 4, 2, 0, 0, 0, 0, 0
		spritePiece	0, 0, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$A, -5, 2, 2, $C, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 0, 0
		endsprite

word_19158:	spriteHeader
		spritePiece	-$16, -$A, 4, 2, 0, 0, 0, 0, 0
		spritePiece	-6, 6, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 0, 0
		endsprite

word_19172:	spriteHeader
		spritePiece	-5, -$1A, 4, 2, 0, 0, 0, 0, 0
		spritePiece	$B, -$A, 2, 2, 8, 0, 0, 0, 0
		spritePiece	-$A, -$D, 3, 4, $10, 0, 0, 0, 0
		spritePiece	-$10, 0, 2, 2, $1C, 0, 0, 0, 0
		endsprite

word_19194:	spriteHeader
		spritePiece	-$10, 0, 4, 2, 0, 0, 1, 0, 0
		spritePiece	0, -$10, 2, 2, 8, 0, 1, 0, 0
		spritePiece	-$A, -$B, 2, 2, $C, 0, 1, 0, 0
		spritePiece	-$10, -$10, 2, 2, $1C, 0, 1, 0, 0
		endsprite

		even
