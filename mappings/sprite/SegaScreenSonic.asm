; ------------------------------------------------------------------------------
; Sprite mappings - Sonic on Sega Screen and sprite that hides TM on Japanese 
; and Korean consoles
; ------------------------------------------------------------------------------

Map_SegaScreenSonic:	index offset(*)
		ptr	Map_objB1_000A
		ptr	Map_objB1_003C
		ptr	Map_objB1_006E
		ptr	Map_objB1_00A0
		ptr	Frame_HideTM

Map_objB1_000A:	spritemap
		piece	-$10, -$28, 4x4, 0
		piece	$10, -$28, 2x4, $10
		piece	-$20, -8, 4x4, $18
		piece	-$20, $18, 4x4, $28
		piece	0, -8, 4x4, $38
		piece	0, $18, 4x4, $48
		endsprite

Map_objB1_003C:	spritemap
		piece	-$10, -$28, 4x4, $58
		piece	$10, -$28, 2x4, $68
		piece	-$20, -8, 4x4, $70
		piece	-$20, $18, 4x4, $80
		piece	0, -8, 4x4, $90
		piece	0, $18, 4x4, $A0
		endsprite

Map_objB1_006E:	spritemap
		piece	-$10, -$28, 4x4, $B0
		piece	$10, -$28, 2x4, $C0
		piece	-$20, -8, 4x4, $C8
		piece	-$20, $18, 4x4, $D8
		piece	0, -8, 4x4, $E8
		piece	0, $18, 4x4, $F8
		endsprite

Map_objB1_00A0:	spritemap
		piece	-$10, -$28, 4x4, $108
		piece	$10, -$28, 2x4, $118
		piece	-$20, -8, 4x4, $120
		piece	-$20, $18, 4x4, $130
		piece	0, -8, 4x4, $140
		piece	0, $18, 4x4, $150
		endsprite

Frame_HideTM:	spritemap
		piece	-8, -4, 1x1, 0
		piece	0, -4, 1x1, 0
		endsprite

		even