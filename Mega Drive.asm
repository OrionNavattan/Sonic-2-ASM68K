; ---------------------------------------------------------------------------
; Standard Mega Drive 68K hardware addresses, constants & function macros
; ---------------------------------------------------------------------------

; VDP addressses
vdp_data_port:		equ $C00000
vdp_control_port:	equ $C00004
	; Status register bits
	video_mode_bit:			equ 0 ; PAL, 0 if NTSC, 1 if PAL
	dma_status_bit:			equ 1 ; DMA, 1 if a DMA is in progress
	hblank_bit:				equ 2 ; BB, 1 if HBlank is in progress
	vblank_bit:				equ 3 ; VB, 1 if VBlank is in progress
	interlaced_counter_bit:	equ 4 ; OD, 0 if even frame displayed in interlaced mode, 1 if odd
	hardware_collision_bit:	equ 5 ; SC, 1 if any two sprites have non-transparent pixels overlapping. this is a leftover from the TMS9918, which could only display four sprites per scanline
	sprite_limit_bit:		equ 6 ; SO, 1 if sprite limit (16 in H32, 20 in H40) has been reached on current scanline
	vertical_interrupt_bit: equ 7 ; VI, 1 if a vertical interrupt has just occurred

	fifo_full_bit:			equ 8 ; F, 1 if VDP FIFO is full
	fifo_empty_bit:			equ 9 ; E, 1 if VDP FIFO is empty
	
vdp_counter:		equ $C00008
psg_input:			equ $C00011
debug_reg:			equ $C0001C

; Z80 address space
z80_ram:		equ $A00000	; start of Z80 RAM
z80_ram_end:	equ $A02000	; end of non-reserved Z80 RAM
ym2612_a0:		equ $A04000
ym2612_d0:		equ $A04001
ym2612_a1:		equ $A04002
ym2612_d1:		equ $A04003

; I/O addresses
console_version:	equ $A10001
port_1_data_hi:		equ $A10002
port_1_data:		equ $A10003
port_2_data_hi:		equ $A10004
port_2_data:		equ $A10005
port_e_data_hi:		equ $A10006
port_e_data:		equ $A10007
port_1_control_hi:	equ $A10008
port_1_control:		equ $A10009
port_2_control_hi:	equ $A1000A
port_2_control:		equ $A1000B
port_e_control_hi:	equ $A1000C
port_e_control:		equ $A1000D

z80_bus_request:	equ $A11100
z80_reset:		equ $A11200

; Bank registers, et al
sram_access_reg:	equ $A130F1
bank_reg_1:		equ $A130F3	; Bank register for address $80000-$FFFFF
bank_reg_2:		equ $A130F5	; Bank register for address $100000-$17FFFF
bank_reg_3:		equ $A130F7	; Bank register for address $180000-$1FFFFF
bank_reg_4:		equ $A130F9	; Bank register for address $200000-$27FFFF
bank_reg_5:		equ $A130FB	; Bank register for address $280000-$2FFFFF
bank_reg_6:		equ $A130FD	; Bank register for address $300000-$37FFFF
bank_reg_7:		equ $A130FF	; Bank register for address $380000-$3FFFFF
tmss_sega:		equ $A14000	; write the string "SEGA" to unlock the VDP
tmss_reg:		equ $A14101 ; bankswitch between cartridge and TMSS ROM

; Memory sizes
sizeof_ram:			equ $10000
sizeof_vram:		equ $10000
sizeof_vsram:		equ $50
sizeof_z80_ram:		equ z80_ram_end-z80_ram ; $2000
sizeof_z80_bank:	equ $8000	; size of switchable Z80 rom window

; ---------------------------------------------------------------------------
; stop the Z80
; ---------------------------------------------------------------------------

stopZ80:	macros
		move.w	#$100,(z80_bus_request).l

; ---------------------------------------------------------------------------
; wait for Z80 to stop
; ---------------------------------------------------------------------------

waitZ80:	macro
	.wait\@:
		btst	#0,(z80_bus_request).l
		bne.s	.wait\@
		endm

; ---------------------------------------------------------------------------
; start the Z80
; ---------------------------------------------------------------------------

startZ80:	macros
		move.w	#0,(z80_bus_request).l

; ---------------------------------------------------------------------------
; reset the Z80
; ---------------------------------------------------------------------------

resetZ80_assert: macros
		move.w	#0,(z80_reset).l

resetZ80_release: macros
		move.w	#$100,(z80_reset).l

; ---------------------------------------------------------------------------
; disable interrupts
; ---------------------------------------------------------------------------

disable_ints:	macros
		move	#$2700,sr

; ---------------------------------------------------------------------------
; enable interrupts
; ---------------------------------------------------------------------------

enable_ints:	macros
		move	#$2300,sr

; ---------------------------------------------------------------------------
; bankswitch between SRAM and ROM
; (remember to enable SRAM in the header first!)
; ---------------------------------------------------------------------------

gotoSRAM:	macros
		move.b  #1,(sram_access_reg).l

gotoROM:	macros
		move.b  #0,(sram_access_reg).l

