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

;level_max_width:	equ $40
;level_max_height:	equ 8
;sizeof_levelrow:	equ level_max_width*2			; level row, followed by background row
;sizeof_level:       equ sizeof_levelrow*level_max_height
sizeof_level:       equ $1000

sizeof_ram:			equ $10000
sizeof_vram:		equ $10000
sizeof_vsram:		equ $50
sizeof_vram_hscroll: equ $380

sizeof_cell:		equ $20					; single 8x8 tile
sizeof_vram_fg:		equ sizeof_vram_row*32			; fg nametable, assuming 64x32 ($1000 bytes)
sizeof_vram_bg:		equ sizeof_vram_row*32			; bg nametable, assuming 64x32 ($1000 bytes)
sizeof_vram_sonic:	equ $17*sizeof_cell			; Sonic's graphics ($2E0 bytes)
sizeof_sprite:		equ 8					; one sprite in sprite table
countof_max_sprites:	equ $50					; max number of sprites that can be displayed
sizeof_vram_sprites:	equ sizeof_sprite*countof_max_sprites	; sprite table ($280 bytes)
sizeof_vram_hscroll:	equ $380
sizeof_vram_hscroll_padded:	equ $400
sizeof_vram_row:	equ 64*2				; single row of fg/bg nametable, assuming 64 wide

countof_color:		equ 16					; colors per palette line
;countof_colour:	equ countof_color		; silly Brits. :P
countof_pal:		equ 4					; total palette lines
sizeof_pal:		equ countof_color*2			; total bytes in 1 palette line (32 bytes)
sizeof_pal_all:		equ sizeof_pal*countof_pal		; bytes in all palette lines (128 bytes)
palfade_line2:		equ sizeof_pal<<8
palfade_line3:		equ (sizeof_pal*2)<<8
palfade_line4:		equ (sizeof_pal*3)<<8
palfade_1:		equ countof_color-1
palfade_2:		equ (countof_color*2)-1
palfade_3:		equ (countof_color*3)-1
palfade_all:		equ (countof_color*4)-1