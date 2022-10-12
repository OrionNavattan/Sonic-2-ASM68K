; ASM68K version of SpritePiece, pruned down to just the Sonic 2 code,
; and modified for compatibility with the section directive.

; macro to declare a mappings table (taken from Sonic 2 Hg disassembly)
mappingsTable macro
current_mappings_table: = \1 ; current location, input is offset(*)
    endm

; macro to declare an entry in a mappings table (taken from Sonic 2 Hg disassembly)
mappingsTableEntry macro ptr
	dc.\0 ptr-current_mappings_table
    endm

spriteHeader:	macro ; input is offset(*)
	if ~def(current_sprite)
	current_sprite: = 1
	endc
	sprite_start: = \1
	dc.w (sprite_\#current_sprite\-\1\-2)/8
	endm


spriteFooter:	macro ; input is offset(*)
	sprite_\#current_sprite: equ \1
	current_sprite: = current_sprite+1
	endm

spritePiece macro xpos,ypos,width,height,tile,xflip,yflip,pal,pri
	dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
	dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|(tile&$7FF)
	dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|((tile>>1)&$7FF)
	dc.w	xpos
	endm

spritePiece2P macro xpos,ypos,width,height,tile,xflip,yflip,pal,pri,tile2,xflip2,yflip2,pal2,pri2
	dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
	dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|(tile&$7FF)
	dc.w	((pri2&1)<<15)|((pal2&3)<<13)|((yflip2&1)<<12)|((xflip2&1)<<11)|(tile2&$7FF)
	dc.w	xpos
	endm


; TODO: Fix DPLC macros

dplcHeader macro *
\* equ *
;	if SonicMappingsVer=1
;	dc.b ((\*_End-\*-1)/2)
;	elseif SonicMappingsVer=2
	dc.w ((\*_End-\*-2)/2)
;	else
;	dc.w ((\*_End-\*-4)/2)
;	endif
    endm

dplcEntry macro tiles,offset
;	if SonicMappingsVer=3
;	dc.w	((offset&$FFF)<<4)|((tiles-1)&$F)
;	else
	dc.w (((tiles-1)&$F)<<12)|(offset&$FFF)
;	endif
	endm