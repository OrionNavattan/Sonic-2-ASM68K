; -------------------------------------------------------------------------------
; Sprite mappings - Special Stage HUD
; -------------------------------------------------------------------------------

Map_SpecialHUD:	index offset(*)
		ptr	Map_obj5E_0008
		ptr	Map_obj5E_002A
		ptr	Map_obj5E_004C
		ptr	Map_obj5E_006E

Map_obj5E_0008:	spritemap
		piece	-$60, $10, 4x1, 0, pal2, hi
		piece	-$40, $10, 1x1, 4, pal2, hi
		piece	-$68, $18, 4x2, $A, pal3, hi
		piece	-$48, $18, 1x2, $3C, pal3, hi
		endsprite

Map_obj5E_002A:	spritemap
		piece	$38, $10, 4x1, 5, pal3, hi
		piece	$58, $10, 1x1, 9, pal3, hi
		piece	$30, $18, 4x2, $A, pal3, hi
		piece	$50, $18, 1x2, $3C, pal3, hi
		endsprite

Map_obj5E_004C:	spritemap
		piece	$38, $10, 4x1, $5AA, pal3, hi
		piece	$58, $10, 1x1, $5AE, pal3, hi
		piece	$30, $18, 4x2, $A, pal3, hi
		piece	$50, $18, 1x2, $3C, pal3, hi
		endsprite

Map_obj5E_006E:	spritemap
		piece	-$14, $10, 4x4, $26, pal3, hi
		piece	$C, $10, 1x4, $36, pal3, hi
		endsprite

		even
