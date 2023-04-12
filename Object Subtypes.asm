; ---------------------------------------------------------------------------
; Object subtypes
; ---------------------------------------------------------------------------

; DrownCount
type_drowncount_manager:			equ	$81	; invisible object that manages air count, triggers all relates events including drowning, and spawns numbers and small bubbles

; TitleIntro
; These match each of this object's routines.
type_titlintr_sonic: 			equ id_TitlIntr_Sonic	; 2
type_titlintr_tails:			equ	id_TitlIntr_Tails ; 4
type_titlintr_logotop:		equ	id_TitlIntr_LogoTop ; 6
type_titlintr_flashingstar:	equ	id_TitlIntr_FlashingStar ; 8
type_titlintr_sonichand:		equ	id_TitlIntr_SonicHand ; $A
type_titlintr_fallingstar:	equ	id_TitlIntr_FallingStar ; $C
type_titlintr_maskingsprite:	equ	id_TitlIntr_MaskingSprite ; $E
type_titlintr_tailshand:		equ	id_TitlIntr_TailsHand ; $10

; PalChanger
; These match each of the entries in this object's data array.
type_palchngr_titlelogo:				equ id_PalChngrData_TitleLogo ; 0 			
type_palchngr_titlebackground:			equ id_PalChngrData_TitleBackground ; 2
type_palchngr_endingstillfirst:			equ id_PalChngrData_EndingStillFirst ; 4
type_palchngr_endingstillnext:			equ id_PalChngrData_EndingStillNext ; 6
type_palchngr_endingsonic:				equ id_PalChngrData_EndingSonic ; 8
type_palchngr_endingcharacterdescend:	equ id_PalChngrData_EndingCharacterDescend ; $A
type_palchngr_endingsupersonic:			equ id_PalChngrData_EndingSuperSonic ; $C
type_palchngr_endingtails:				equ id_PalChngrData_EndingTails ; $E
