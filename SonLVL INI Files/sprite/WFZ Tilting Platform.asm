; -------------------------------------------------------------------------------
; Sprite mappings - Wing Fortress tilting platforms
; -------------------------------------------------------------------------------

Map_TiltPlat:	index offset(*)
		ptr	Frame_TlitPlat_Horiz
		ptr	Frame_TlitPlat_RightDown
		ptr	Frame_TlitPlat_Vert
		ptr	Frame_TlitPlat_LeftDown

Frame_TlitPlat_Horiz:	spriteHeader
		spritePiece	-$18, -4, 3, 1, 0, 0, 0, 0, 0
		spritePiece	0, -4, 3, 1, 0, 1, 0, 0, 0
		endsprite

Frame_TlitPlat_RightDown:	spriteHeader
		spritePiece	-$10, -$14, 2, 3, 3, 0, 0, 0, 0
		spritePiece	0, -4, 2, 3, 3, 1, 1, 0, 0
		endsprite

Frame_TlitPlat_Vert:	spriteHeader
		spritePiece	-4, -$18, 1, 3, 9, 0, 0, 0, 0
		spritePiece	-4, 0, 1, 3, 9, 0, 1, 0, 0
		endsprite

Frame_TlitPlat_LeftDown:	spriteHeader
		spritePiece	0, -$14, 2, 3, 3, 1, 0, 0, 0
		spritePiece	-$10, -4, 2, 3, 3, 0, 1, 0, 0
		endsprite

		even
