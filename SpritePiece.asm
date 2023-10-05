; ---------------------------------------------------------------------------		
; ASM68K version of SpritePiece, pruned down to just the Sonic 2 code, macros 
; renamed to match the names used in Hivebrain 2022,and modified for 
; compatibility with the ASM68K section directives. The mappingsTable and 
; mappingsTableEntry macros have been removed, as their functions are
; replaced by the index and ptr macros.
; ---------------------------------------------------------------------------		

spritemap:	macro
		if ~def(current_sprite)
		current_sprite: = 1
		endc
		sprite_start: = offset(*)
		dc.w (sprite_\#current_sprite\-offset(*)-2)/8
		endm

endsprite:	macro
		sprite_\#current_sprite: equ offset(*)
		current_sprite: = current_sprite+1
		endm

spritePiece: macro xpos,ypos,width,height,tile,xflip,yflip,pal,pri
		dc.w	((ypos&$FF)<<8)|(((width-1)&3)<<2)|((height-1)&3)
		dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|(tile&$7FF)
		dc.w	((pri&1)<<15)|((pal&3)<<13)|((yflip&1)<<12)|((xflip&1)<<11)|((tile>>1)&$7FF)
		dc.w	xpos
		endm
		
; ---------------------------------------------------------------------------
; Sprite mappings piece
; input: xpos, ypos, size, tile index
; optional: xflip, yflip, pal2|pal3|pal4, hi (any order)
; ---------------------------------------------------------------------------	
	
piece:	macro	xpos,ypos,dimensions,tileindex,pal_flip_pri

		sprite_xpos: = \xpos
		sprite_ypos: = \ypos
		
		sprite_width:	substr	1,1,"\dimensions"	; width
		sprite_height:	substr	3,3,"\dimensions"	; height
		
		if \tileindex<0					; is tile index negative?
			sprite_tile: = $10000+(\tileindex)	; convert signed to unsigned
		else
			sprite_tile: = \tileindex
		endc
		
		sprite_xflip: = 0
		sprite_yflip: = 0
		sprite_hi: = 0
		sprite_pal: = 0
		rept narg-4
			if strcmp("\pal_flip_pri","xflip")
			sprite_xflip: = $800
			elseif strcmp("\pal_flip_pri","yflip")
			sprite_yflip: = $1000
			elseif strcmp("\pal_flip_pri","hi")
			sprite_hi: = $8000
			elseif strcmp("\pal_flip_pri","pal2")
			sprite_pal: = $2000
			elseif strcmp("\pal_flip_pri","pal3")
			sprite_pal: = $4000
			elseif strcmp("\pal_flip_pri","pal4")
			sprite_pal: = $6000
			else
			endc
		shift
		endr		
		
		dc.w	((sprite_ypos&$FF)<<8)|(((sprite_width-1)&3)<<2)|((sprite_height-1)&3) ; y pos, width, and height
		dc.w	(sprite_tile+sprite_xflip+sprite_yflip+sprite_hi+sprite_pal)&$FFFF ; tile, priority, xflip, yflip, pal 
		dc.w	((sprite_tile>>1)+sprite_xflip+sprite_yflip+sprite_hi+sprite_pal)&$FFFF ; 2P mode tile, priority, xflip, yflip, pal 
		dc.w	sprite_xpos				; x pos
		endm			
				

dplcheader: macro *
\* equ *
	dc.w ((\*_End-\*-2)/2)
    endm

dplc_entry: macro tiles,offset
	dc.w (((tiles-1)&$F)<<12)|(offset&$FFF)
	endm
