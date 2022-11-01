; ASM68K version of SpritePiece, pruned down to just the Sonic 2 code,
; and modified for compatibility with the ASM68K section directive.
; The mappingsTable and mappingsTableEntry macros have been removed, as their functions 
; are being handled by the index and ptr macros.

spriteHeader:	macro
	if ~def(current_sprite)
	current_sprite: = 1
	endc
	sprite_start: = offset(*)
	dc.w (sprite_\#current_sprite\-offset(*)-2)/8
	endm

spriteFooter:	macro
	sprite_\#current_sprite: equ offset(*)
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

dplcHeader macro *
\* equ *
	dc.w ((\*_End-\*-2)/2)
    endm

dplcEntry macro tiles,offset
	dc.w (((tiles-1)&$F)<<12)|(offset&$FFF)
	endm