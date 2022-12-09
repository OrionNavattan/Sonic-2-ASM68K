; -------------------------------------------------------------------------------
; Sprite Mappings - Rings
; Custom mappings format. Compare to Obj25_MapUnc_12382.

; Differences include...
;  No 'sprite pieces per frame' value (hardcoded to 1)

; This was customised even further in Sonic 3 & Knuckles.
; -------------------------------------------------------------------------------

Map_Rings:	index offset(*)
	ptr	MapUnc_Rings_1
	ptr	MapUnc_Rings_2
	ptr	MapUnc_Rings_3
	ptr	MapUnc_Rings_4
	ptr	MapUnc_Rings_5
	ptr	MapUnc_Rings_6
	ptr	MapUnc_Rings_7
	ptr	MapUnc_Rings_8

MapUnc_Rings_1:
	spritePiece	-8, -8, 2, 2, 0, 0, 0, 0, 0

MapUnc_Rings_2:
	spritePiece	-8, -8, 2, 2, 4, 0, 0, 0, 0

MapUnc_Rings_3:
	spritePiece	-4, -8, 1, 2, 8, 0, 0, 0, 0

MapUnc_Rings_4:
	spritePiece	-8, -8, 2, 2, 4, 1, 0, 0, 0

MapUnc_Rings_5:
	spritePiece	-8, -8, 2, 2, $A, 0, 0, 0, 0

MapUnc_Rings_6:
	spritePiece	-8, -8, 2, 2, $A, 1, 1, 0, 0

MapUnc_Rings_7:
	spritePiece	-8, -8, 2, 2, $A, 1, 0, 0, 0

MapUnc_Rings_8:
	spritePiece	-8, -8, 2, 2, $A, 0, 1, 0, 0

	dc.w 0
	even
