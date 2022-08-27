; ---------------------------------------------------------------------------
; Constants
; ---------------------------------------------------------------------------

sizeof_128x128:     equ $80
countof_128x128:    equ $100
sizeof_128x128_all: equ sizeof_128x128*countof_128x128 ; ($8000 bytes)
sizeof_16x16:		equ 8					; size of one 16x16 tile
countof_16x16:		equ $180				; max number of 16x16 tiles
sizeof_16x16_all:   equ sizeof_16x16*countof_16x16 ; size of all 16x16 tiles ($C00)
sizeof_ost:		    equ $40					; size of one OST in bytes
countof_ost:		equ $80					; total OSTs in RAM
countof_ost_reserved:   equ $10             ; reserved OSTs
countof_ost_dynamic:    equ $70             ; dynamic OSTs, used for level objects 
countof_ost_level_only:  equ $10            ; additional reserved object ram for objects attached to players, and for the special stages                  
sizeof_priority:	equ $80					; size of one priority section in sprite queue

sizeof_level:       equ sizeof_levelrow*level_max_height


