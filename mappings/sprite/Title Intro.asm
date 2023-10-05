; -----------------------------------------------------------------------------
; Sprite mappings - Sonic, Tails, flashing/falling stars, logo top, masking 
; sprite, and TM symbol on Title Screen
; -----------------------------------------------------------------------------

Map_TitleIntro:	index offset(*)
		ptr	Frame_IntroTails_0			; 0
		ptr	Frame_IntroTails_1			; 1
		ptr	Frame_IntroTails_2			; 2
		ptr	Frame_IntroTails_3			; 3
		ptr	Frame_IntroTails_4			; 4
		ptr	Frame_IntroSonic_0			; 5
		ptr	Frame_IntroSonic_1			; 6
		ptr	Frame_IntroSonic_2			; 7
		ptr	Frame_IntroSonic_BetaLeftover		; 8; erroneously used duplicate of Frame_IntroSonic_NoArm
		ptr	Frame_IntroSonic_Hand			; 9
		ptr	Frame_LogoTop_NoTM			; $A
		ptr	Frame_LogoTop_TM			; $B
		ptr	Frame_IntroStar_0			; $C
		ptr	Frame_IntroStar_1			; $D
		ptr	Frame_IntroStar_2			; $E 
		ptr	Frame_IntroStar_3			; $F
		ptr	Frame_IntroTM				; $10
		ptr	Frame_MaskingSprite			; $11
		ptr	Frame_IntroSonic_NoArm			; $12
		ptr	Frame_IntroTails_Hand			; $13

Frame_IntroTails_0:	spritemap
		piece	$30, $10, 4x1, 0, pal2, hi
		piece	$18, $18, 4x4, 4, pal2, hi
		piece	$38, $18, 3x4, $14, pal2, hi
		piece	$20, $38, 2x1, $20, pal2, hi
		piece	$28, $40, 1x1, $22, pal2, hi
		piece	$30, $38, 4x3, $23, pal2, hi
		endsprite

Frame_IntroTails_1:	spritemap
		piece	$48, $10, 2x1, $2F, pal2, hi
		piece	$20, $18, 4x4, $31, pal2, hi
		piece	$40, $18, 3x4, $41, pal2, hi
		piece	$58, $18, 1x2, $4D, pal2, hi
		piece	0, $38, 1x2, $4F, pal2, hi
		piece	8, $38, 4x3, $51, pal2, hi
		piece	$28, $38, 3x3, $5D, pal2, hi
		piece	$40, $38, 2x2, $66, pal2, hi
		piece	$50, $38, 1x1, $6A, pal2, hi
		endsprite

Frame_IntroTails_2:	spritemap
		piece	$28, $10, 3x3, $6B, pal2, hi
		piece	$40, $18, 4x2, $74, pal2, hi
		piece	8, $28, 4x4, $7C, pal2, hi
		piece	$28, $28, 4x4, $8C, pal2, hi
		piece	$48, $28, 2x4, $9C, pal2, hi
		piece	$58, $28, 1x2, $A4, pal2, hi
		piece	$10, $48, 4x1, $A6, pal2, hi
		piece	$30, $48, 2x1, $AA, pal2, hi
		endsprite

Frame_IntroTails_3:	spritemap
		piece	$20, $10, 1x1, $AC, pal2, hi
		piece	$28, $10, 4x3, $AD, pal2, hi
		piece	$48, $10, 1x1, $B9, pal2, hi
		piece	$48, $18, 3x2, $BA, pal2, hi
		piece	$10, $20, 2x1, $C0, pal2, hi
		piece	0, $38, 1x1, $C2, pal2, hi
		piece	8, $28, 4x3, $C3, pal2, hi
		piece	$28, $28, 4x3, $CF, pal2, hi
		piece	$48, $28, 2x3, $DB, pal2, hi
		piece	$58, $28, 1x1, $E1, pal2, hi
		piece	$10, $40, 4x2, $E2, pal2, hi
		piece	$30, $40, 2x2, $EA, pal2, hi
		piece	$40, $40, 3x1, $EE, pal2, hi
		endsprite

Frame_IntroTails_4:	spritemap
		piece	$40, 8, 2x1, $F1, pal2, hi
		piece	$18, $10, 1x1, $AC, yflip, pal2, hi
		piece	$20, $10, 4x3, $F3, pal2, hi
		piece	$40, $10, 4x2, $FF, pal2, hi
		piece	$58, $20, 1x1, $107, pal2, hi
		piece	$40, $20, 2x1, $108, pal2, hi
		piece	8, $28, 1x1, $10A, pal2, hi
		piece	$10, $28, 4x4, $10B, pal2, hi
		piece	0, $38, 2x2, $11B, pal2, hi
		piece	$30, $28, 4x4, $11F, pal2, hi
		piece	$50, $28, 1x2, $12F, pal2, hi
		piece	$10, $48, 4x1, $131, pal2, hi
		piece	$30, $48, 2x1, $135, pal2, hi
		endsprite

Frame_IntroSonic_0:	spritemap
		piece	$20, 8, 4x1, $137, hi
		piece	$40, $10, 1x1, $13B, hi
		piece	8, $10, 4x4, $13C, hi
		piece	0, $30, 4x2, $14C, hi
		piece	0, $18, 1x3, $154, hi
		piece	$28, $10, 3x4, $157, hi
		piece	$40, $28, 1x1, $163, hi
		piece	$48, $30, 1x1, $164, hi
		piece	$20, $30, 4x2, $165, hi
		piece	8, $40, 1x1, $16D, hi
		piece	$10, $40, 4x2, $16E, hi
		piece	$30, $40, 2x2, $176, hi
		piece	$40, $30, 1x3, $17A, hi
		endsprite

Frame_IntroSonic_1:	spritemap
		piece	$18, 8, 4x1, $17D, hi
		piece	$38, 8, 2x4, $181, hi
		piece	$48, $10, 1x1, $189, hi
		piece	0, $20, 4x4, $18A, hi
		piece	8, $18, 1x1, $19A, hi
		piece	$10, $10, 2x2, $19B, hi
		piece	$20, $10, 3x3, $19F, hi
		piece	$20, $28, 4x4, $1A8, hi
		piece	$40, $28, 2x4, $1B8, hi
		piece	8, $40, 3x1, $1C0, hi
		piece	8, $50, 1x2, $1C3, hi
		piece	$10, $48, 3x3, $1C5, hi
		piece	$28, $48, 4x2, $1CE, hi
		endsprite

Frame_IntroSonic_2:	spritemap
		piece	$28, 8, 4x1, $1D6, hi
		piece	$48, 8, 1x1, $1DA, hi
		piece	$10, $18, 1x4, $1DB, hi
		piece	$18, $10, 4x4, $1DF, hi
		piece	$38, $10, 4x4, $1EF, hi
		piece	$58, $10, 1x1, $1FF, hi
		piece	$58, $28, 1x1, $200, hi
		piece	$10, $38, 1x1, $201, hi
		piece	$18, $30, 4x2, $202, hi
		piece	$38, $30, 4x2, $20A, hi
		piece	$20, $40, 1x1, $212, hi
		piece	$28, $40, 1x2, $213, hi
		piece	$30, $40, 4x3, $215, hi
		piece	$50, $40, 1x3, $221, hi
		piece	$58, $38, 1x2, $224, hi
		endsprite

Frame_IntroSonic_BetaLeftover:	spritemap
		piece	$28, 8, 4x4, $226, hi
		piece	$20, $10, 1x1, $236, hi
		piece	$18, $18, 2x4, $237, hi
		piece	$48, 8, 2x4, $23F, hi
		piece	$58, $10, 1x1, $247, hi
		piece	$18, $38, 2x1, $248, hi
		piece	$28, $28, 4x4, $24A, hi
		piece	$48, $28, 3x2, $25A, hi
		piece	$48, $38, 2x2, $260, hi
		piece	$58, $40, 1x2, $264, hi
		piece	$28, $48, 2x1, $266, hi
		piece	$30, $50, 1x1, $268, hi
		piece	$38, $48, 4x2, $269, hi
		endsprite

Frame_IntroSonic_Hand:	spritemap
		piece	8, 0, 4x2, $271, hi
		piece	8, $10, 3x2, $279, hi
		piece	$10, $20, 2x2, $27F, hi
		endsprite

Frame_LogoTop_NoTM:	spritemap
		piece	-$50, 0, 4x1, $283, pal4, hi
		piece	-$30, 0, 3x1, $287, pal4, hi
		piece	$18, 0, 3x1, $28A, pal4, hi
		piece	$30, 0, 4x1, $28D, pal4, hi
		piece	-$18, 0, 4x1, $10
		piece	8, 0, 2x1, $10
		endsprite

Frame_LogoTop_TM:	spritemap
		piece	-$50, 0, 4x1, $283, pal4, hi
		piece	-$30, 0, 3x1, $287, pal4, hi
		piece	$18, 0, 3x1, $28A, pal4, hi
		piece	$30, 0, 4x1, $28D, pal4, hi
		piece	-$18, 0, 4x1, $10
		piece	8, 0, 2x1, $10
		piece	$58, 8, 2x1, $2A0, pal4, hi
		endsprite

Frame_IntroStar_0:	spritemap
		piece	-4, -4, 1x1, $291, pal2
		endsprite

Frame_IntroStar_1:	spritemap
		piece	-8, -8, 2x2, $292, pal2
		endsprite

Frame_IntroStar_2:	spritemap
		piece	-$C, -$C, 3x3, $296, pal2
		endsprite

Frame_IntroStar_3:	spritemap
		piece	-4, -4, 1x1, $29F, pal2
		endsprite

Frame_IntroTM:	spritemap
		piece	-8, -4, 2x1, $2A0, hi
		endsprite

Frame_MaskingSprite:	spritemap
		piece	8, 0, 1x4, 0
		piece	0, 0, 1x4, 0
		piece	8, $20, 1x4, 0
		piece	0, $20, 1x4, 0
		endsprite

Frame_IntroSonic_NoArm:	spritemap
		piece	$28, 8, 4x4, $226, hi
		piece	$20, $10, 1x1, $236, hi
		piece	$18, $18, 2x4, $237, hi
		piece	$48, 8, 2x4, $23F, hi
		piece	$58, $10, 1x1, $247, hi
		piece	$18, $38, 2x1, $248, hi
		piece	$28, $28, 4x4, $24A, hi
		piece	$48, $28, 3x2, $25A, hi
		piece	$48, $38, 2x2, $260, hi
		piece	$58, $40, 1x2, $264, hi
		piece	$28, $48, 2x1, $266, hi
		piece	$30, $50, 1x1, $268, hi
		piece	$38, $48, 4x2, $269, hi
		piece	$20, $48, 2x1, $2A2, hi
		endsprite

Frame_IntroTails_Hand:	spritemap
		piece	8, 0, 2x3, $2A4, pal2, hi
		endsprite

		even