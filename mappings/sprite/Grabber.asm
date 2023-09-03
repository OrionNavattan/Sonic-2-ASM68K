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

Frame_Grab_Idle:	spritemap
		piece	-$1B, -8, 1, 2, 0, 0, 0, 0, 0
		piece	-$13, -8, 4, 2, 2, 0, 0, 0, 0
		piece	-$F, 8, 3, 2, $1D, 0, 0, 0, 0
		endsprite

Frame_Grab_HoldingPlayer:	spritemap
		piece	-$1B, -8, 1, 2, 0, 0, 0, 0, 0
		piece	-$13, -8, 4, 2, 2, 0, 0, 0, 0
		piece	-$F, 8, 4, 2, $23, 0, 0, 0, 0
		endsprite

Frame_GrabBox:	spritemap
		piece	-4, -4, 1, 1, $A, 0, 0, 0, 0
		endsprite

Frame_GrabLegs_Idle:	spritemap
		piece	-7, -8, 3, 2, $F, 0, 0, 0, 0
		endsprite

Frame_GrabLegs_HoldingPlayer:	spritemap
		piece	-7, -8, 4, 2, $15, 0, 0, 0, 0
		endsprite

Frame_Grab_Unused1:	spritemap
		piece	-4, -4, 1, 1, $2B, 0, 0, 0, 0
		endsprite

Frame_Grab_Unused2:	spritemap
		piece	-4, -4, 1, 1, $2C, 0, 0, 0, 0
		endsprite

Frame_GrabString1:	spritemap
		piece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString2:	spritemap
		piece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString3:	spritemap
		piece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		piece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString4:	spritemap
		piece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $20, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString5:	spritemap
		piece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		piece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $30, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString6:	spritemap
		piece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $20, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $40, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString7:	spritemap		
		piece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		piece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $30, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $50, 1, 4, $B, 0, 0, 0, 0
		endsprite

Frame_GrabString8:	spritemap
		piece	-4, 0, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $20, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $40, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $60, 1, 4, $B, 0, 0, 0, 0
		endsprite
		
Frame_GrabString9:	spritemap
		piece	-4, 0, 1, 2, $B, 0, 0, 0, 0
		piece	-4, $10, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $30, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $50, 1, 4, $B, 0, 0, 0, 0
		piece	-4, $70, 1, 4, $B, 0, 0, 0, 0
		endsprite		

		even