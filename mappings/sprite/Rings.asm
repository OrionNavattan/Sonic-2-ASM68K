; -------------------------------------------------------------------------------
; Sprite mappings - Rings
; Custom mappings format. Compare to Obj25_MapUnc_12382.

; Differences include...
;  No 'sprite pieces per frame' value (hardcoded to 1)

; This was customised even further in Sonic 3 & Knuckles.

; CNZ prize rings and rings placed in debug mode use Map_Ring instead.
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
		piece	-8, -8, 2, 2, 0, 0, 0, 0, 0

MapUnc_Rings_2:
		piece	-8, -8, 2, 2, 4, 0, 0, 0, 0

MapUnc_Rings_3:
		piece	-4, -8, 1, 2, 8, 0, 0, 0, 0

MapUnc_Rings_4:
		piece	-8, -8, 2, 2, 4, 1, 0, 0, 0

MapUnc_Rings_5:
		piece	-8, -8, 2, 2, $A, 0, 0, 0, 0

MapUnc_Rings_6:
		piece	-8, -8, 2, 2, $A, 1, 1, 0, 0

MapUnc_Rings_7:
		piece	-8, -8, 2, 2, $A, 1, 0, 0, 0

MapUnc_Rings_8:
		piece	-8, -8, 2, 2, $A, 0, 1, 0, 0

		;dc.w 0
		even
