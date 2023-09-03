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
		piece	-$10, -$28, 4, 4, 0, 0, 0, 0, 0
		piece	$10, -$28, 2, 4, $10, 0, 0, 0, 0
		piece	-$20, -8, 4, 4, $18, 0, 0, 0, 0
		piece	-$20, $18, 4, 4, $28, 0, 0, 0, 0
		piece	0, -8, 4, 4, $38, 0, 0, 0, 0
		piece	0, $18, 4, 4, $48, 0, 0, 0, 0
		endsprite

Map_objB1_003C:	spritemap
		piece	-$10, -$28, 4, 4, $58, 0, 0, 0, 0
		piece	$10, -$28, 2, 4, $68, 0, 0, 0, 0
		piece	-$20, -8, 4, 4, $70, 0, 0, 0, 0
		piece	-$20, $18, 4, 4, $80, 0, 0, 0, 0
		piece	0, -8, 4, 4, $90, 0, 0, 0, 0
		piece	0, $18, 4, 4, $A0, 0, 0, 0, 0
		endsprite

Map_objB1_006E:	spritemap
		piece	-$10, -$28, 4, 4, $B0, 0, 0, 0, 0
		piece	$10, -$28, 2, 4, $C0, 0, 0, 0, 0
		piece	-$20, -8, 4, 4, $C8, 0, 0, 0, 0
		piece	-$20, $18, 4, 4, $D8, 0, 0, 0, 0
		piece	0, -8, 4, 4, $E8, 0, 0, 0, 0
		piece	0, $18, 4, 4, $F8, 0, 0, 0, 0
		endsprite

Map_objB1_00A0:	spritemap
		piece	-$10, -$28, 4, 4, $108, 0, 0, 0, 0
		piece	$10, -$28, 2, 4, $118, 0, 0, 0, 0
		piece	-$20, -8, 4, 4, $120, 0, 0, 0, 0
		piece	-$20, $18, 4, 4, $130, 0, 0, 0, 0
		piece	0, -8, 4, 4, $140, 0, 0, 0, 0
		piece	0, $18, 4, 4, $150, 0, 0, 0, 0
		endsprite

Frame_HideTM:	spritemap
		piece	-8, -4, 1, 1, 0, 0, 0, 0, 0
		piece	0, -4, 1, 1, 0, 0, 0, 0, 0
		endsprite

		even
