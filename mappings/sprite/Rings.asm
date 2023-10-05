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
		piece	-8, -8, 2x2, 0

MapUnc_Rings_2:
		piece	-8, -8, 2x2, 4

MapUnc_Rings_3:
		piece	-4, -8, 1x2, 8

MapUnc_Rings_4:
		piece	-8, -8, 2x2, 4, xflip

MapUnc_Rings_5:
		piece	-8, -8, 2x2, $A

MapUnc_Rings_6:
		piece	-8, -8, 2x2, $A, xflip, yflip

MapUnc_Rings_7:
		piece	-8, -8, 2x2, $A, xflip

MapUnc_Rings_8:
		piece	-8, -8, 2x2, $A, yflip

		;dc.w 0
		even