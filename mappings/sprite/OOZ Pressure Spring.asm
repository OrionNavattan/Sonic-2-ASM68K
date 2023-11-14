; -------------------------------------------------------------------------------
; Sprite mappings - Oil Ocean pressure spring
; -------------------------------------------------------------------------------

Map_PSpring:	index offset(*)
		ptr	Frame_PSpring_Vert1			; vertical, at rest
		ptr	Frame_PSpring_Vert2
		ptr	Frame_PSpring_Vert3
		ptr	Frame_PSpring_Vert4
		ptr	Frame_PSpring_Vert5
		ptr	Frame_PSpring_Vert6
		ptr	Frame_PSpring_Vert7
		ptr	Frame_PSpring_Vert8
		ptr	Frame_PSpring_Vert9
		ptr	Frame_PSpring_Vert10			; vertical, fully compressed
		ptr	Frame_PSpring_Horiz1			; horizontal, at rest
		ptr	Frame_PSpring_Horiz2
		ptr	Frame_PSpring_Horiz3
		ptr	Frame_PSpring_Horiz4
		ptr	Frame_PSpring_Horiz5
		ptr	Frame_PSpring_Horiz6
		ptr	Frame_PSpring_Horiz7
		ptr	Frame_PSpring_Horiz8
		ptr	Frame_PSpring_Horiz9
		ptr	Frame_PSpring_Horiz10
		ptr	Frame_PSpring_Horiz11
		ptr	Frame_PSpring_Horiz12
		ptr	Frame_PSpring_Horiz13
		ptr	Frame_PSpring_Horiz14
		ptr	Frame_PSpring_Horiz15
		ptr	Frame_PSpring_Horiz16
		ptr	Frame_PSpring_Horiz17
		ptr	Frame_PSpring_Horiz18
		ptr	Frame_PSpring_Horiz19			; horizontal, fully compressed

Frame_PSpring_Vert1:	spritemap
		piece	-$10, -$14, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 4, 3x1, 7, yflip
		piece	-$C, -4, 3x1, $A, yflip, pal2
		piece	-8, -$C, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert2:	spritemap
		piece	-$10, -$12, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 4, 3x1, 7, yflip
		piece	-$C, -4, 3x1, $A, yflip, pal2
		piece	-8, -$A, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert3:	spritemap
		piece	-$10, -$10, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 4, 3x1, 7, yflip
		piece	-$C, -2, 3x1, $A, yflip, pal2
		piece	-8, -8, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert4:	spritemap
		piece	-$10, -$E, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 6, 3x1, 7, yflip
		piece	-$C, 0, 3x1, $A, yflip, pal2
		piece	-8, -6, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert5:	spritemap
		piece	-$10, -$C, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 6, 3x1, 7, yflip
		piece	-$C, 0, 3x1, $A, yflip, pal2
		piece	-8, -4, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert6:	spritemap
		piece	-$10, -$A, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 6, 3x1, 7, yflip
		piece	-$C, 2, 3x1, $A, yflip, pal2
		piece	-8, -2, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert7:	spritemap
		piece	-$10, -8, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 8, 3x1, 7, yflip
		piece	-$C, 4, 3x1, $A, yflip, pal2
		piece	-8, 0, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert8:	spritemap
		piece	-$10, -6, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 8, 3x1, 7, yflip
		piece	-$C, 4, 3x1, $A, yflip, pal2
		piece	-8, 2, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert9:	spritemap
		piece	-$10, -4, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, 8, 3x1, 7, yflip
		piece	-$C, 6, 3x1, $A, yflip, pal2
		piece	-8, 4, 2x1, $D, yflip
		endsprite

Frame_PSpring_Vert10:	spritemap
		piece	-$10, -2, 4x1, 0, yflip, pal2
		piece	-$C, $C, 3x1, 4, yflip, pal2
		piece	-$C, $A, 3x1, 7, yflip
		piece	-$C, 8, 3x1, $A, yflip, pal2
		piece	-8, 6, 2x1, $D, yflip
		endsprite

Frame_PSpring_Horiz1:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$14, -$C, 1x3, $13, pal2
		piece	-$C, -$C, 1x3, $16
		piece	-4, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz2:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$13, -$C, 1x3, $13, pal2
		piece	-$B, -$C, 1x3, $16
		piece	-3, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz3:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$12, -$C, 1x3, $13, pal2
		piece	-$A, -$C, 1x3, $16
		piece	-2, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz4:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$11, -$C, 1x3, $13, pal2
		piece	-9, -$C, 1x3, $16
		piece	-1, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz5:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$10, -$C, 1x3, $13, pal2
		piece	-8, -$C, 1x3, $16
		piece	-2, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz6:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$F, -$C, 1x3, $13, pal2
		piece	-7, -$C, 1x3, $16
		piece	-1, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz7:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$E, -$C, 1x3, $13, pal2
		piece	-8, -$C, 1x3, $16
		piece	-2, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz8:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$D, -$C, 1x3, $13, pal2
		piece	-7, -$C, 1x3, $16
		piece	-1, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz9:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$C, -$C, 1x3, $13, pal2
		piece	-6, -$C, 1x3, $16
		piece	0, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz10:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$B, -$C, 1x3, $13, pal2
		piece	-5, -$C, 1x3, $16
		piece	1, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz11:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-$A, -$C, 1x3, $13, pal2
		piece	-4, -$C, 1x3, $16
		piece	0, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz12:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-9, -$C, 1x3, $13, pal2
		piece	-3, -$C, 1x3, $16
		piece	1, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz13:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-8, -$C, 1x3, $13, pal2
		piece	-4, -$C, 1x3, $16
		piece	0, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz14:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-7, -$C, 1x3, $13, pal2
		piece	-3, -$C, 1x3, $16
		piece	1, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz15:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-6, -$C, 1x3, $13, pal2
		piece	-2, -$C, 1x3, $16
		piece	2, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz16:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-5, -$C, 1x3, $13, pal2
		piece	-1, -$C, 1x3, $16
		piece	3, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz17:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-4, -$C, 1x3, $13, pal2
		piece	0, -$C, 1x3, $16
		piece	2, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz18:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-3, -$C, 1x3, $13, pal2
		piece	1, -$C, 1x3, $16
		piece	3, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

Frame_PSpring_Horiz19:	spritemap
		piece	$C, -$10, 1x4, $F, pal2
		piece	-2, -$C, 1x3, $13, pal2
		piece	0, -$C, 1x3, $16
		piece	2, -$C, 1x3, $19, pal2
		piece	4, -8, 1x2, $1C
		endsprite

		even
