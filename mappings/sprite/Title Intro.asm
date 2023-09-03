; -----------------------------------------------------------------------------
; Sprite mappings - Sonic, Tails, flashing/falling stars, logo top, masking 
; sprite, and TM symbol on Title Screen
; -----------------------------------------------------------------------------

Map_TitleIntro:	index offset(*)
		ptr	Frame_IntroTails_0				; 0
		ptr	Frame_IntroTails_1				; 1
		ptr	Frame_IntroTails_2				; 2
		ptr	Frame_IntroTails_3				; 3
		ptr	Frame_IntroTails_4				; 4
		ptr	Frame_IntroSonic_0				; 5
		ptr	Frame_IntroSonic_1				; 6
		ptr	Frame_IntroSonic_2				; 7
		ptr	Frame_IntroSonic_BetaLeftover			; 8; erroneously used duplicate of Frame_IntroSonic_NoArm
		ptr	Frame_IntroSonic_Hand				; 9
		ptr	Frame_LogoTop_NoTM				; $A
		ptr	Frame_LogoTop_TM				; $B
		ptr	Frame_IntroStar_0				; $C
		ptr	Frame_IntroStar_1				; $D
		ptr	Frame_IntroStar_2				; $E 
		ptr	Frame_IntroStar_3				; $F
		ptr	Frame_IntroTM					; $10
		ptr	Frame_MaskingSprite				; $11
		ptr	Frame_IntroSonic_NoArm				; $12
		ptr	Frame_IntroTails_Hand				; $13

Frame_IntroTails_0:	spritemap
		piece	$30, $10, 4, 1, 0, 0, 0, 1, 1
		piece	$18, $18, 4, 4, 4, 0, 0, 1, 1
		piece	$38, $18, 3, 4, $14, 0, 0, 1, 1
		piece	$20, $38, 2, 1, $20, 0, 0, 1, 1
		piece	$28, $40, 1, 1, $22, 0, 0, 1, 1
		piece	$30, $38, 4, 3, $23, 0, 0, 1, 1
		endsprite

Frame_IntroTails_1:	spritemap
		piece	$48, $10, 2, 1, $2F, 0, 0, 1, 1
		piece	$20, $18, 4, 4, $31, 0, 0, 1, 1
		piece	$40, $18, 3, 4, $41, 0, 0, 1, 1
		piece	$58, $18, 1, 2, $4D, 0, 0, 1, 1
		piece	0, $38, 1, 2, $4F, 0, 0, 1, 1
		piece	8, $38, 4, 3, $51, 0, 0, 1, 1
		piece	$28, $38, 3, 3, $5D, 0, 0, 1, 1
		piece	$40, $38, 2, 2, $66, 0, 0, 1, 1
		piece	$50, $38, 1, 1, $6A, 0, 0, 1, 1
		endsprite

Frame_IntroTails_2:	spritemap
		piece	$28, $10, 3, 3, $6B, 0, 0, 1, 1
		piece	$40, $18, 4, 2, $74, 0, 0, 1, 1
		piece	8, $28, 4, 4, $7C, 0, 0, 1, 1
		piece	$28, $28, 4, 4, $8C, 0, 0, 1, 1
		piece	$48, $28, 2, 4, $9C, 0, 0, 1, 1
		piece	$58, $28, 1, 2, $A4, 0, 0, 1, 1
		piece	$10, $48, 4, 1, $A6, 0, 0, 1, 1
		piece	$30, $48, 2, 1, $AA, 0, 0, 1, 1
		endsprite

Frame_IntroTails_3:	spritemap
		piece	$20, $10, 1, 1, $AC, 0, 0, 1, 1
		piece	$28, $10, 4, 3, $AD, 0, 0, 1, 1
		piece	$48, $10, 1, 1, $B9, 0, 0, 1, 1
		piece	$48, $18, 3, 2, $BA, 0, 0, 1, 1
		piece	$10, $20, 2, 1, $C0, 0, 0, 1, 1
		piece	0, $38, 1, 1, $C2, 0, 0, 1, 1
		piece	8, $28, 4, 3, $C3, 0, 0, 1, 1
		piece	$28, $28, 4, 3, $CF, 0, 0, 1, 1
		piece	$48, $28, 2, 3, $DB, 0, 0, 1, 1
		piece	$58, $28, 1, 1, $E1, 0, 0, 1, 1
		piece	$10, $40, 4, 2, $E2, 0, 0, 1, 1
		piece	$30, $40, 2, 2, $EA, 0, 0, 1, 1
		piece	$40, $40, 3, 1, $EE, 0, 0, 1, 1
		endsprite

Frame_IntroTails_4:	spritemap
		piece	$40, 8, 2, 1, $F1, 0, 0, 1, 1
		piece	$18, $10, 1, 1, $AC, 0, 1, 1, 1
		piece	$20, $10, 4, 3, $F3, 0, 0, 1, 1
		piece	$40, $10, 4, 2, $FF, 0, 0, 1, 1
		piece	$58, $20, 1, 1, $107, 0, 0, 1, 1
		piece	$40, $20, 2, 1, $108, 0, 0, 1, 1
		piece	8, $28, 1, 1, $10A, 0, 0, 1, 1
		piece	$10, $28, 4, 4, $10B, 0, 0, 1, 1
		piece	0, $38, 2, 2, $11B, 0, 0, 1, 1
		piece	$30, $28, 4, 4, $11F, 0, 0, 1, 1
		piece	$50, $28, 1, 2, $12F, 0, 0, 1, 1
		piece	$10, $48, 4, 1, $131, 0, 0, 1, 1
		piece	$30, $48, 2, 1, $135, 0, 0, 1, 1
		endsprite

Frame_IntroSonic_0:	spritemap
		piece	$20, 8, 4, 1, $137, 0, 0, 0, 1
		piece	$40, $10, 1, 1, $13B, 0, 0, 0, 1
		piece	8, $10, 4, 4, $13C, 0, 0, 0, 1
		piece	0, $30, 4, 2, $14C, 0, 0, 0, 1
		piece	0, $18, 1, 3, $154, 0, 0, 0, 1
		piece	$28, $10, 3, 4, $157, 0, 0, 0, 1
		piece	$40, $28, 1, 1, $163, 0, 0, 0, 1
		piece	$48, $30, 1, 1, $164, 0, 0, 0, 1
		piece	$20, $30, 4, 2, $165, 0, 0, 0, 1
		piece	8, $40, 1, 1, $16D, 0, 0, 0, 1
		piece	$10, $40, 4, 2, $16E, 0, 0, 0, 1
		piece	$30, $40, 2, 2, $176, 0, 0, 0, 1
		piece	$40, $30, 1, 3, $17A, 0, 0, 0, 1
		endsprite

Frame_IntroSonic_1:	spritemap
		piece	$18, 8, 4, 1, $17D, 0, 0, 0, 1
		piece	$38, 8, 2, 4, $181, 0, 0, 0, 1
		piece	$48, $10, 1, 1, $189, 0, 0, 0, 1
		piece	0, $20, 4, 4, $18A, 0, 0, 0, 1
		piece	8, $18, 1, 1, $19A, 0, 0, 0, 1
		piece	$10, $10, 2, 2, $19B, 0, 0, 0, 1
		piece	$20, $10, 3, 3, $19F, 0, 0, 0, 1
		piece	$20, $28, 4, 4, $1A8, 0, 0, 0, 1
		piece	$40, $28, 2, 4, $1B8, 0, 0, 0, 1
		piece	8, $40, 3, 1, $1C0, 0, 0, 0, 1
		piece	8, $50, 1, 2, $1C3, 0, 0, 0, 1
		piece	$10, $48, 3, 3, $1C5, 0, 0, 0, 1
		piece	$28, $48, 4, 2, $1CE, 0, 0, 0, 1
		endsprite

Frame_IntroSonic_2:	spritemap
		piece	$28, 8, 4, 1, $1D6, 0, 0, 0, 1
		piece	$48, 8, 1, 1, $1DA, 0, 0, 0, 1
		piece	$10, $18, 1, 4, $1DB, 0, 0, 0, 1
		piece	$18, $10, 4, 4, $1DF, 0, 0, 0, 1
		piece	$38, $10, 4, 4, $1EF, 0, 0, 0, 1
		piece	$58, $10, 1, 1, $1FF, 0, 0, 0, 1
		piece	$58, $28, 1, 1, $200, 0, 0, 0, 1
		piece	$10, $38, 1, 1, $201, 0, 0, 0, 1
		piece	$18, $30, 4, 2, $202, 0, 0, 0, 1
		piece	$38, $30, 4, 2, $20A, 0, 0, 0, 1
		piece	$20, $40, 1, 1, $212, 0, 0, 0, 1
		piece	$28, $40, 1, 2, $213, 0, 0, 0, 1
		piece	$30, $40, 4, 3, $215, 0, 0, 0, 1
		piece	$50, $40, 1, 3, $221, 0, 0, 0, 1
		piece	$58, $38, 1, 2, $224, 0, 0, 0, 1
		endsprite

Frame_IntroSonic_BetaLeftover:	spritemap
		piece	$28, 8, 4, 4, $226, 0, 0, 0, 1
		piece	$20, $10, 1, 1, $236, 0, 0, 0, 1
		piece	$18, $18, 2, 4, $237, 0, 0, 0, 1
		piece	$48, 8, 2, 4, $23F, 0, 0, 0, 1
		piece	$58, $10, 1, 1, $247, 0, 0, 0, 1
		piece	$18, $38, 2, 1, $248, 0, 0, 0, 1
		piece	$28, $28, 4, 4, $24A, 0, 0, 0, 1
		piece	$48, $28, 3, 2, $25A, 0, 0, 0, 1
		piece	$48, $38, 2, 2, $260, 0, 0, 0, 1
		piece	$58, $40, 1, 2, $264, 0, 0, 0, 1
		piece	$28, $48, 2, 1, $266, 0, 0, 0, 1
		piece	$30, $50, 1, 1, $268, 0, 0, 0, 1
		piece	$38, $48, 4, 2, $269, 0, 0, 0, 1
		endsprite

Frame_IntroSonic_Hand:	spritemap
		piece	8, 0, 4, 2, $271, 0, 0, 0, 1
		piece	8, $10, 3, 2, $279, 0, 0, 0, 1
		piece	$10, $20, 2, 2, $27F, 0, 0, 0, 1
		endsprite

Frame_LogoTop_NoTM:	spritemap
		piece	-$50, 0, 4, 1, $283, 0, 0, 3, 1
		piece	-$30, 0, 3, 1, $287, 0, 0, 3, 1
		piece	$18, 0, 3, 1, $28A, 0, 0, 3, 1
		piece	$30, 0, 4, 1, $28D, 0, 0, 3, 1
		piece	-$18, 0, 4, 1, $10, 0, 0, 0, 0
		piece	8, 0, 2, 1, $10, 0, 0, 0, 0
		endsprite

Frame_LogoTop_TM:	spritemap
		piece	-$50, 0, 4, 1, $283, 0, 0, 3, 1
		piece	-$30, 0, 3, 1, $287, 0, 0, 3, 1
		piece	$18, 0, 3, 1, $28A, 0, 0, 3, 1
		piece	$30, 0, 4, 1, $28D, 0, 0, 3, 1
		piece	-$18, 0, 4, 1, $10, 0, 0, 0, 0
		piece	8, 0, 2, 1, $10, 0, 0, 0, 0
		piece	$58, 8, 2, 1, $2A0, 0, 0, 3, 1
		endsprite

Frame_IntroStar_0:	spritemap
		piece	-4, -4, 1, 1, $291, 0, 0, 1, 0
		endsprite

Frame_IntroStar_1:	spritemap
		piece	-8, -8, 2, 2, $292, 0, 0, 1, 0
		endsprite

Frame_IntroStar_2:	spritemap
		piece	-$C, -$C, 3, 3, $296, 0, 0, 1, 0
		endsprite

Frame_IntroStar_3:	spritemap
		piece	-4, -4, 1, 1, $29F, 0, 0, 1, 0
		endsprite

Frame_IntroTM:	spritemap
		piece	-8, -4, 2, 1, $2A0, 0, 0, 0, 1
		endsprite

Frame_MaskingSprite:	spritemap
		piece	8, 0, 1, 4, 0, 0, 0, 0, 0
		piece	0, 0, 1, 4, 0, 0, 0, 0, 0
		piece	8, $20, 1, 4, 0, 0, 0, 0, 0
		piece	0, $20, 1, 4, 0, 0, 0, 0, 0
		endsprite

Frame_IntroSonic_NoArm:	spritemap
		piece	$28, 8, 4, 4, $226, 0, 0, 0, 1
		piece	$20, $10, 1, 1, $236, 0, 0, 0, 1
		piece	$18, $18, 2, 4, $237, 0, 0, 0, 1
		piece	$48, 8, 2, 4, $23F, 0, 0, 0, 1
		piece	$58, $10, 1, 1, $247, 0, 0, 0, 1
		piece	$18, $38, 2, 1, $248, 0, 0, 0, 1
		piece	$28, $28, 4, 4, $24A, 0, 0, 0, 1
		piece	$48, $28, 3, 2, $25A, 0, 0, 0, 1
		piece	$48, $38, 2, 2, $260, 0, 0, 0, 1
		piece	$58, $40, 1, 2, $264, 0, 0, 0, 1
		piece	$28, $48, 2, 1, $266, 0, 0, 0, 1
		piece	$30, $50, 1, 1, $268, 0, 0, 0, 1
		piece	$38, $48, 4, 2, $269, 0, 0, 0, 1
		piece	$20, $48, 2, 1, $2A2, 0, 0, 0, 1
		endsprite

Frame_IntroTails_Hand:	spritemap
		piece	8, 0, 2, 3, $2A4, 0, 0, 1, 1
		endsprite

		even
