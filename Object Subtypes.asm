; ---------------------------------------------------------------------------
; Object subtypes and subtype bit definitions
; ---------------------------------------------------------------------------

; DrownCount
type_drowncount_manager:			equ	$81	; invisible object that manages air count, triggers all relates events including drowning, and spawns numbers and small bubbles

; TitleIntro
; These match each of this object's routines.
type_titlintr_sonic: 			equ id_TitlIntr_Sonic	; 2
type_titlintr_tails:			equ	id_TitlIntr_Tails ; 4
type_titlintr_logotop:		equ	id_TitlIntr_LogoTop	; 6
type_titlintr_flashingstar:	equ	id_TitlIntr_FlashingStar ; 8
type_titlintr_sonichand:		equ	id_TitlIntr_SonicHand ; $A
type_titlintr_fallingstar:	equ	id_TitlIntr_FallingStar	; $C
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


; PressureSpring
; Subtype is bitfield with following definitions
pspring_tumbleplayer_bit:		equ 0			; if set, make player tumble after launch (unused)
pspring_strength_bit:			equ 1			; 0 = strong spring, 1 = weak spring
pspring_plane0_bit:				equ 2		; if set, move player to collision plane 0 on launch (unused)
pspring_plane1_bit:				equ 3		; if set, move player to collision plane 1 on launch (unused)
pspring_direction_bit:			equ 4			; 0 = vertical, 1 = horizontal
pspring_killtransverse_bit:		equ 7			; if set, cancel transverse velocity on launch (unused)

pspring_tumbleplayer:		equ 1<<pspring_tumbleplayer_bit
pspring_strength:			equ 1<<pspring_strength_bit
pspring_plane0:				equ 1<<pspring_plane0_bit
pspring_plane1:				equ 1<<pspring_plane1_bit
pspring_direction:			equ 1<<pspring_direction_bit
pspring_killtransverse:		equ 1<<pspring_killtransverse_bit

; PlaneSwitcher
; Subtype is bitfield with following definitions:
pswtch_xy_bit:			equ 2				; 0 if x-switcher (horizontal movement), 1 if y-switcher (vertical movement)
pswtch_downright_bit:	equ 3					; if set, moves player to plane 1 when touching left or top, otherwise moves them to plane 0
pswtch_upleft_bit:		equ 4				; if set, moves player to plane 1 when touching right or bottom, otherwise moves them to plane 0
pswtch_downright_hi_bit:	equ 5				; if set, sets player's priority to low when moving up or left and high when moving down or right
pswtch_upleft_hi_bit:	equ 6					; if set, sets player's priority to low when moving down or right and high when moving up or left
pswtch_ignore_air_bit:	equ 7					; if set, switcher will ignore player if they are airborne

pswtch_priority_only:	equ render_xflip_bit			; if xflip is set in objpos definition, this switcher only changes player's sprite priority

pswtch_size:			equ 3				; bits 0-1 : size of switcher, 4-32 blocks
pswtch_xy:				equ 1<<pswtch_xy_bit
