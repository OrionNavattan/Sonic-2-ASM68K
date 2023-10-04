; -------------------------------------------------------------------------------
; Sprite mappings - Grabber enemy and subobjects (CPZ)
; -------------------------------------------------------------------------------

Map_Grab:	index offset(*)
		ptr	Frame_Grab_Idle
		ptr	Frame_Grab_HoldingPlayer
		ptr	Frame_GrabBox
		ptr	Frame_GrabLegs_Idle
		ptr	Frame_GrabLegs_HoldingPlayer
		ptr	Frame_Grab_Unused1
		ptr	Frame_Grab_Unused2

Map_GrabString:	index offset(*)
		ptr	Frame_GrabString1
		ptr	Frame_GrabString2
		ptr	Frame_GrabString3
		ptr	Frame_GrabString4
		ptr	Frame_GrabString5
		
		; The following entries are unused, as the Grabber never goes down far enough
		; for them to be used.
		ptr	Frame_GrabString7
		ptr	Frame_GrabString6
		ptr	Frame_GrabString8
		ptr	Frame_GrabString8

Frame_Grab_Idle:	spriteHeader
		spritePiece	-$1B, -8, 1, 2, 0, 0, 0, 0, 0
		spritePiece	-$13, -8, 4, 2, 2, 0, 0, 0, 0
		spritePiece	-$F, 8, 3, 2, $1D, 0, 0, 0, 0
		endsprite

Frame_Grab_HoldingPlayer:	spriteHeader
		spritePiece	-$1B, -8, 1, 2, 0, 0, 0, 0, 0
		spritePiece	-$13, -8, 4, 2, 2, 0, 0, 0, 0
		spritePiece	-$F, 8, 4, 2, $23, 0, 0, 0, 0
		endsprite

Frame_GrabBox:	spriteHeader
		spritePiece	-4, -4, 1, 1, $A, 0, 0, 0, 0
		endsprite

Frame_GrabLegs_Idle:	spriteHeader
		spritePiece	-7, -8, 3, 2, $F, 0, 0, 0, 0
		endsprite

Frame_GrabLegs_HoldingPlayer:	spriteHeader
		spritePiece	-7, -8, 4, 2, $15, 0, 0, 0, 0
		endsprite

Frame_Grab_Unused1:	spriteHeader
		spritePiece	-4, -4, 1, 1, $2B, 0, 0, 0, 0
		endsprite

Frame_Grab_Unused2:	spriteHeader
		spritePiece	-4, -4, 1, 1, $2C, 0, 0, 0, 0
		endsprite

Frame_GrabString1:	spriteHeader
		spritePiece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString2:	spriteHeader
		spritePiece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString3:	spriteHeader
		spritePiece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString4:	spriteHeader
		spritePiece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $20, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString5:	spriteHeader
		spritePiece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $30, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString6:	spriteHeader
		spritePiece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $20, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $40, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString7:	spriteHeader		
		spritePiece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $30, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $50, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString8:	spriteHeader
		spritePiece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $20, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $40, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $60, 1, 4, $B, 0, 0, 0, 0
		endsprite
		
Frame_GrabString9:	spriteHeader
		spritePiece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		spritePiece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $30, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $50, 1, 4, $B, 0, 0, 0, 0
		spritePiece	-4, $70, 1, 4, $B, 0, 0, 0, 0
		endsprite		

		even
