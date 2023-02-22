; ---------------------------------------------------------------------------
; Object subtypes
; ---------------------------------------------------------------------------

; DrownCount
type_drowncount_manager:			equ	$81	; invisible object that manages air count, triggers all relates events including drowning, and spawns numbers and small bubbles

; TitleIntro
; These match each of this object's routines.
type_titleintro_sonic: 			equ id_TitleIntro_Sonic	; 2
type_titleintro_tails:			equ	id_TitleIntro_Tails ; 4
type_titleintro_logotop:		equ	id_TitleIntro_LogoTop ; 6
type_titleintro_flashingstar:	equ	id_TitleIntro_FlashingStar ; 8
type_titleintro_sonichand:		equ	id_TitleIntro_SonicHand ; $A
type_titleintro_fallingstar:	equ	id_TitleIntro_FallingStar ; $C
type_titleintro_maskingsprite:	equ	id_TitleIntro_MaskingSprite ; $E
type_titleintro_tailshand:		equ	id_TitleIntro_TailsHand ; $10

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
