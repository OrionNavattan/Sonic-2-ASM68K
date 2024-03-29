; -----------------------------------------------------------------------------
; Sprite mappings - Grounder, Grounder's wall, and Grounder's rocks
; -----------------------------------------------------------------------------

Map_Ground:	index offset(*)
		ptr	Frame_Ground_Emerge1
		ptr	Frame_Ground_Emerge2
		ptr	Frame_Ground_Roam1
		ptr	Frame_Ground_Roam2
		ptr	Frame_Ground_Roam3
		
Map_GRock:	index offset(*)
		ptr	Frame_GRock_Large
		ptr	Frame_GRock_Medium
		ptr	Frame_GRock_Small
		
Map_GWall:	index offset(*)
		ptr	Frame_GWall

Frame_Ground_Emerge1:	spriteHeader
		spritePiece	-8, -$C, 1, 1, 0, 0, 0, 0, 0
		spritePiece	-$10, -4, 2, 3, 1, 0, 0, 0, 0
		spritePiece	0, -$C, 1, 1, 0, 1, 0, 0, 0
		spritePiece	0, -4, 2, 3, 1, 1, 0, 0, 0
		endsprite

Frame_Ground_Emerge2:	spriteHeader
		spritePiece	-8, -$14, 1, 1, 7, 0, 0, 0, 0
		spritePiece	-$10, -$C, 2, 4, 8, 0, 0, 0, 0
		spritePiece	0, -$14, 1, 1, 7, 1, 0, 0, 0
		spritePiece	0, -$C, 2, 4, 8, 1, 0, 0, 0
		endsprite

Frame_Ground_Roam1:	spriteHeader
		spritePiece	-$10, -$14, 4, 4, $10, 0, 0, 0, 0
		spritePiece	-$10, $C, 4, 1, $20, 0, 0, 0, 0
		endsprite

Frame_Ground_Roam2:	spriteHeader
		spritePiece	-$10, -$14, 4, 4, $10, 0, 0, 0, 0
		spritePiece	-$10, $C, 4, 1, $24, 0, 0, 0, 0
		endsprite

Frame_Ground_Roam3:	spriteHeader
		spritePiece	-$10, -$14, 4, 4, $10, 0, 0, 0, 0
		spritePiece	-$10, $C, 4, 1, $28, 0, 0, 0, 0
		endsprite

Frame_GRock_Large:	spriteHeader
		spritePiece	-8, -8, 2, 2, $2C, 0, 0, 0, 0
		endsprite

Frame_GRock_Medium:	spriteHeader
		spritePiece	-4, -4, 1, 1, $30, 0, 0, 0, 0
		endsprite

Frame_GRock_Small:	spriteHeader
		spritePiece	-4, -4, 1, 1, $31, 0, 0, 0, 0
		endsprite

Frame_GWall:	spriteHeader
		spritePiece	-$10, -8, 2, 2, $93, 0, 0, 2, 0
		spritePiece	0, -8, 2, 2, $97, 0, 0, 2, 0
		endsprite

		even
