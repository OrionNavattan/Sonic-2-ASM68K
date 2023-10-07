; ---------------------------------------------------------------------------
; VRAM assignments for individual items and tile constants for graphics not
; used with PLCs. (Tile constants for PLC-loaded graphics are generated by
; the plcm macro.) 
; ---------------------------------------------------------------------------

; Common to 1p and 2p menus.
vram_StandardFont:             equ $0200

; Sega Screen
vram_SEGA:           		equ $0020
vram_IntroTrails:           equ $1000
tile_Nem_IntroTrails:		equ vram_IntroTrails/sizeof_cell
vram_Giant_Sonic:          	equ $1100

; Title Screen
vram_Title:                 equ $0000
vram_TitleSprites:          equ $2A00
tile_TitleSprites:			equ vram_TitleSprites/sizeof_cell
vram_MenuJunk:              equ $7E40
vram_Player1VS2:            equ $8040
vram_CreditsFont_Intro:     equ $A000
vram_StandardFont_TtlScr:	equ $D000

; Credits
vram_CreditsFont_Credits:	equ $0020

; Menus
vram_MenuBox:               equ $0E00
vram_LevelSelectPics:       equ $1200

; 2P Results Screen
vram_1P2PWins:              equ $0E00
vram_SpecialPlayerVSPlayer: equ $7BE0
vram_2P_Signpost:           	equ $BD00
;vram_TwoPlayerResults:         equ $C000 ?

; Special Stage
vram_SpecialEmerald:		equ $2E80
vram_SpecialMessages:		equ $3440
vram_SpecialHUD:			equ $3F40
vram_SpecialHorizShadow:	equ $4780
vram_SpecialDiagShadow:		equ $4C40
vram_SpecialVertShadow:		equ $5380
vram_SpecialExplosion:		equ $56A0
vram_SpecialSonic:			equ $5CA0
vram_SpecialTails:			equ $6000
vram_SpecialTails_Tails:	equ $62C0
vram_SpecialRings:			equ $6440
vram_SpecialStart:			equ $7140
vram_SpecialBomb:			equ $7140
vram_SpecialStageResults:	equ $B200
vram_SpecialBack:			equ $E000
vram_SpecialStars:			equ $EFE0
vram_SpecialTailsText:		equ $F480

; Ending
vram_EndingCharacter:		equ $0320
vram_EndingFinalTornado:	equ $2AC0
vram_EndingPics:			equ $6500
vram_EndingMiniTornado:		equ $9260

; Continue Screen
vram_ContinueTails:          equ $A000
vram_ContinueText:           equ $A000
vram_ContinueText_2:         equ $A480
vram_MiniContinue:           equ $A480
vram_ContinueText_Additional:     equ $B200
vram_ContinueCountdown:             equ $DF80


; ---------------------------------------------------------------------------
; Universal locations.

vram_LevelArt:				equ 0
tile_LevelArt:				equ 0

; Animals.
vram_animal_1:              equ $B000
vram_animal_2:              equ $B280

tile_Nem_Animal_1:			equ vram_animal_1/sizeof_cell
tile_Nem_Animal_2:			equ vram_animal_2/sizeof_cell

; Game over.
vram_Game_Over:             equ $9BC0

; Titlecard.
vram_TitleCard:             equ $B000
vram_LevelName:				equ $BBC0

; End of level.
vram_Signpost:              equ $8680
vram_Bonus_Score:           equ $A400
vram_Perfect:               equ $A800
vram_ResultsText:           equ $B600
ArtTile_ArtUnc_Signpost               = $05E8
vram_MiniCharacter:         equ $BE80
vram_Capsule:               equ $D000

; Tornado.
vram_Tornado:               equ $A000
vram_TornadoThruster:       equ $AC20
; Shared badniks and objects.


vram_Checkpoint:			equ $8F80
vram_TailsDust:				equ $9180
vram_SonicDust:				equ $9380
vram_TailsDrownNum:			equ vram_TailsDust
vram_SonicDrownNum:			equ vram_SonicDust
sizeof_CountdownNum:		equ sizeof_Art_Countdown/6	
vram_Numbers:				equ $9580
vram_Shield					equ $97C0
vram_Invinciblity_Stars:	equ $9BC0
vram_Monitors:				equ $D000
vram_Ring:					equ $D780
vram_HUD:					equ vram_Monitors+$940 ; $D940
vram_Sonic:					equ $F000
tile_Sonic:					equ vram_Sonic/sizeof_cell
vram_Tails:                 equ $F400
tile_Tails:					equ vram_Tails/sizeof_cell
vram_Tails_Tails:           equ $F600
tile_Tails_Tails:			equ vram_Tails_Tails/sizeof_cell

; ---------------------------------------------------------------------------
; HUD. The HUD components are linked in a chain, and linked to
; power-ups, because the mappings of monitors and lives counter(s)
; depend on one another. If you want to alter these (for example,
; because you need the VRAM for something else), you will probably
; have to edit the mappings (or move the power-ups and HUD as a
; single block unit).
; ---------------------------------------------------------------------------

			rsset	vram_HUD+$300	
vram_HUD_Score_E:	rs.b $40				; $DC40
vram_HUD_Score:     equ	__rs					; $DC80

			rsset 	vram_HUD+$500
vram_HUD_Minutes:	rs.b $80				; $DE40
vram_HUD_Seconds:	rs.b $80				; $DEC0
vram_HUD_Rings:		equ __rs				; $DF40	
			
			rsset vram_HUD+$540
vram_LifeCounter2:   rs.b $120					; $DE80
vram_LifeCounter2_Lives: equ __rs				; $DFA0

			rsset vram_HUD+$2140
vram_LifeCounter:			rs.b $120		; $FA80
vram_LifeCounter_Lives:    equ __rs				; $FBA0

; 2P mode HUD elements
vram_HUD2P_Text:			equ vram_HUD
vram_HUD2P_Numbers:			equ vram_HUD_Score_E


; Shared objects and badniks

; Objects that use the same art tiles on all levels in which
; they are loaded, even if not all levels load them.
vram_WaterSurface:          equ $8000
vram_Button:                equ $8480
vram_HorizSpike:            equ $8580
vram_Spikes:                equ $8680
vram_DignlSprng:            equ $8780
vram_LeverSpring:           equ $8800
vram_VrtclSprng:            equ $8B80
vram_HrzntlSprng:           equ $8E00

; Some common objects loaded on all aquatic levels
vram_Explosion:             equ $B480
vram_Bubbles:               equ $BD00
vram_SuperSonic_stars:      equ $BE40

; Shared between EHZ and HTZ
vram_Checkers:				equ vram_LevelArt+$2B00           
vram_Flowers1:              equ $7280
vram_Flowers2:              equ $72C0
vram_Flowers3:   			equ $7300
vram_Flowers4:              equ $7340

tile_Kos_Checkers:			equ vram_Checkers/sizeof_cell
tile_Art_Flowers1:			equ vram_Flowers1/sizeof_cell
tile_Art_Flowers2:			equ vram_Flowers2/sizeof_cell
tile_Art_Flowers3:			equ vram_Flowers3/sizeof_cell
tile_Art_Flowers4:			equ vram_Flowers4/sizeof_cell

vram_Buzzer:                 	equ $7A40

; Shared between SCZ and WFZ 
vram_HorizProp:        	equ $79A0
vram_Clouds:            equ $A9E0
vram_VertProp:         	equ $AC20
vram_Balkriy:			equ $ACA0


; Level-specific objects and badniks.
; EHZ
vram_EHZPulseBall:				equ $7380	; uncompressed
vram_Waterfall: 				equ $73C0
vram_Bridge:					equ $76C0
vram_Buzzer_Fireball:       	equ $77C0			; actually unused
vram_Coconuts:            		equ $7DC0
vram_Masher:               		equ $8280
vram_EHZMountains:				equ	$A000	; uncompressed

tile_Art_EHZPulseBall:			equ vram_EHZPulseBall/sizeof_cell
tile_Art_EHZMountains:			equ vram_EHZMountains/sizeof_cell

; MTZ
vram_Shellcracker:          equ $6380
vram_Lava                   equ $6800
vram_MTZCylinder:           equ $6980
vram_MTZAnimBack1:        	equ $6B80
vram_MTZAnimBack2:      	equ $6C40
vram_Asteron:           	equ $6D00
vram_GiantCog:              equ $6F00
vram_WheelIndent:        	equ $7E00
vram_RopePlat:              equ $7F20
vram_BoltEnd_Rope:          equ $7FA0
vram_SteamSpring:           equ $80A0
vram_SpikeBlock:          	equ $8280
vram_MTZSpike:              equ $8380
vram_Slicer:				equ $8780
vram_Nut:         			equ $A000
vram_LavaBubble:         	equ $A6C0
vram_Cog:                	equ $ABE0
vram_TeleportFlash:     	equ $AD60

tile_Art_Lava:				equ vram_Lava/sizeof_Cell
tile_Art_MTZCylinder:		equ vram_MTZCylinder/sizeof_cell
tile_Art_MTZAnimBack1:		equ vram_MTZAnimBack1/sizeof_cell
tile_Art_MTZAnimBack2:		equ vram_MTZAnimBack2/sizeof_cell

; WFZ
vram_Clucker:             	equ $6F20
vram_WFZTiltPlatforms:		equ $7260
vram_WFZVrtclLaser:         equ $73E0
vram_WFZWallTurret:         equ $7560
vram_WFZHrzntlLaser:        equ $7860
vram_ConvPulley:  			equ $7D40
vram_Hook:              	equ $7F40			; mappings for this object are bugged, this is worked around by adding 4 to the tile setting
vram_WFZBeltPlatform:       equ $81C0
vram_WFZGunPlatform:        equ $8340
vram_WFZUnusedBadnik:       equ $8A00
vram_WFZLaunchCatapult:     equ $8B80
vram_WFZSwitch:             equ $8C20
vram_WFZThrust:             equ $8CA0
vram_WFZFloatingPlatform:   equ $8DA0
vram_BreakPanels:           equ $9180

; SCZ
vram_Turtloid:              equ $7140
vram_Nebula:                equ $6DC0

; HTZ
vram_Rexon:                 equ $6FC0
vram_HTZFireball1:          equ $73C0
vram_HTZRock:               equ $7640
vram_SeeSaw:             	equ $78C0
vram_Sol:                   equ $7BC0
vram_Tram:           		equ $7CC0
vram_HTZFireball2:          equ $82C0
vram_HTZOneWayBarrier:      equ $84C0
vram_HTZMountains:       	equ $A000
vram_HTZClouds:				equ $A300
vram_Spiker:                equ $A400

; OOZ
vram_OOZPulseBall:          equ $56C0
vram_OOZSquareBall1:        equ $5740
vram_OOZSquareBall2:        equ $57C0
vram_Oil1:                  equ $5840
vram_Oil2:                  equ $5A40

vram_Burner:                equ $5C40
vram_OOZElevator:           equ $5E80
vram_SlidingSpikes:         equ $6180
vram_BurnerLid:             equ $6580
vram_StripedBlocksVert:     equ $6640
vram_Oilfall:               equ $66C0
vram_Oilfall2:              equ $68C0
vram_SpringBall:          	equ $6A80
vram_LaunchBall:            equ $6D00
vram_OOZPlatform:           equ $73A0
vram_PushSpring:            equ $78A0
vram_OOZSwingPlat:          equ $7C60
vram_StripedBlocksHoriz:    equ $7FE0
vram_Fan:           		equ $8060
vram_Aquis:                 equ $A000
vram_Octus:                 equ $A700

tile_Art_OOZPulseBall:		equ vram_OOZPulseBall/sizeof_cell
tile_Art_OOZSquareBall1:	equ vram_OOZSquareBall1/sizeof_cell
tile_Art_OOZSquareBall2:	equ vram_OOZSquareBall2/sizeof_cell
tile_Art_Oil1:				equ vram_Oil1/sizeof_cell
tile_Art_Oil2:				equ vram_Oil2/sizeof_cell

; MCZ
vram_Flasher:               equ $7500
vram_Crawlton:              equ $7800
vram_Crate:                 equ $7A80
vram_MCZCollapsingPlat:     equ $7E80
vram_VineSwitch:            equ $81C0
vram_VinePulley:            equ $83C0
vram_DrawbridgeLogs:        equ $8780

; CNZ
vram_Crawl:                 equ $6800
vram_LargeMovingBlock:     	equ $6D80
vram_SnakePlats:   			equ $6F80
vram_BombPenalty:         	equ $7000
vram_CNZElevator:           equ $7080
vram_Cage:               	equ $7100
vram_HexBumper:           	equ $7280
vram_RoundBumper:        	equ $7340
vram_Flipper:             	equ $7640
vram_SaucerBumper:       	equ $7CC0
vram_DiagLauncher:       	equ $8040
vram_VertLauncher:       	equ $8440

; Specific to 1p CNZ
vram_CNZFlipPanels1:        equ $6600
vram_CNZFlipPanels2:        equ $A800
vram_SlotPics1:         	equ $AA00
vram_SlotPics2:          	equ $AC00
vram_SlotPics3:         	equ $AE00

tile_Art_SlotPics1:         equ vram_SlotPics1/sizeof_cell
tile_Art_SlotPics2:         equ vram_SlotPics2/sizeof_cell
tile_Art_SlotPics3:         equ vram_SlotPics3/sizeof_cell
sizeof_SlotPic:				equ sizeof_Art_CNZSlotPics/6 ; size of each individual slot pic in bytes
tile_Art_CNZFlipPanels1:	equ vram_CNZFlipPanels1/sizeof_cell
tile_Art_CNZFlipPanels2:	equ vram_CNZFlipPanels2/sizeof_cell

; Specific to 2p CNZ
vram_CNZFlipPanels1_2p:     equ $6600
vram_CNZFlipPanels2_2p:     equ $E800
vram_SlotPics1_2p:       	equ $EA00
vram_SlotPics2_2p:      	equ $EC00
vram_SlotPics3_2p:       	equ $EE00

tile_Art_CNZFlipPanels1_2p:     equ vram_CNZFlipPanels1_2p/sizeof_cell
tile_Art_CNZFlipPanels2_2p:     equ vram_CNZFlipPanels2_2p/sizeof_cell
tile_Art_SlotPics1_2p:       	equ vram_SlotPics1_2p/sizeof_cell
tile_Art_SlotPics2_2p:      	equ vram_SlotPics2_2p/sizeof_cell
tile_Art_SlotPics3_2p:       	equ vram_SlotPics3_2p/sizeof_cell

; CPZ
vram_CPZAnimBack:           equ $6E00
vram_Pylon:         		equ $6E60
vram_CPZConstructionStripes:	equ $7280
vram_Booster:				equ $7380
vram_CPZElevator:           equ $7400
vram_CPZDumpingPipePlat:	equ $7600
vram_TubeLid:				equ $7C00
vram_StairBlock:			equ $8300
vram_CPZMetalBlock:			equ $8600
vram_Droplet:				equ $8780
vram_Grabber:               equ $A000
vram_Spiny:                 equ $A5A0

tile_Art_CPZAnimBack:	equ vram_CPZAnimBack/sizeof_cell

; DEZ
vram_DEZAnimBack:  				equ $64C0
vram_DEZConstructionStripes: 	equ $6500

tile_Art_DEZAnimBack:			equ vram_DEZAnimBack/sizeof_cell

; ARZ
vram_ARZBarrier:        	equ $7F00
vram_Leaves:                equ $8200
vram_ArrowAndShooter:       equ $82E0
vram_Waterfall3:			equ	$8500
vram_Waterfall2:            equ $8580
vram_Waterfall1_1:          equ $8600
vram_Waterfall1_2:          equ $AAE0
vram_Whisp:                 equ $A000
vram_Grounder:              equ $A120
vram_ChopChop:              equ $A760
vram_BubbleGenerator:       equ $AB60

tile_Art_Waterfall3:		equ	vram_Waterfall3/sizeof_cell
tile_Art_Waterfall2:		equ	vram_Waterfall2/sizeof_cell
tile_Art_Waterfall1_1:		equ	vram_Waterfall1_1/sizeof_cell
tile_Art_Waterfall1_2:		equ	vram_Waterfall1_2/sizeof_cell

; ---------------------------------------------------------------------------
; Bosses
; Common tiles for some bosses (any for which no eggpod tiles are defined,
; except for WFZ and DEZ bosses).
vram_Eggpod_common:               equ $A000
; Common tiles for all bosses.
vram_FieryExplosion:        equ $B000

; CPZ boss
vram_CPZEggpodJets:  		equ $8300
vram_CPZEggpod:     		equ $8400
vram_CPZBoss:               equ $A000
vram_CPZBossSmoke:          equ $AE00

; EHZ boss
vram_EHZEggpod:             equ $7400
vram_EHZBoss:     			equ $8000
vram_EggChopperBlades:		equ $AD80

; HTZ boss
vram_HTZEggpod:             equ $7820
vram_HTZBoss:               equ $8420
vram_HTZBossSmoke:          equ $BC80

; ARZ boss
vram_ARZBoss:               equ $7C00

; MCZ boss
vram_MCZBoss:               equ $7800
vram_FallingRocks:          equ $AC00

; CNZ boss
vram_CNZBoss:               equ $80E0
;vram_CNZBoss_Fudge:         equ vram_CNZBoss-$C00		; $74E0, badly reused mappings... 

; MTZ boss
vram_MTZBoss:               equ $6F80
vram_MTZEggpodJets:         equ $AC00

; OOZ boss
vram_OOZBoss:               equ $7180

; WFZ and DEZ
vram_RobotnikUpper:         equ $A000
vram_RobotnikRunning:       equ $A300
vram_RobotnikLower:         equ $AC80

; WFZ boss
vram_WFZBoss:               equ $6F20

; DEZ
vram_DEZBoss:               equ $6600
vram_DEZWindow:   			equ $6F00
vram_MechaSonic:            equ $7000

; Tile addresses for patching HTZ and WFZ
tile_HTZ_Patch:      		equ $3F80			; until this address, equal to EHZ tiles
tile_WFZ_Patch:				equ $60E0		; until this address, equal to SCZ tiles

; ---------------------------------------------------------------------------
; Unused beta leftovers
; ---------------------------------------------------------------------------

vram_HPZPulseOrb1:       			equ $5D00
vram_HPZPulseOrb2:      			equ $5E00
vram_HPZPulseOrb3:       			equ $5F00
vram_HiddenPalaceBridge:			equ $6000
vram_HPZWaterfall:       			equ $62A0
vram_HPZPlatform:           		equ $6940
vram_HiddenPalaceOrb:             	equ $6B40
vram_HPZEmerald:         			equ $7240
vram_Unknown:             			equ $7F40
vram_FloatPlatform:       			equ $8300

tile_Art_HPZPulseOrb1:				equ vram_HPZPulseOrb1/sizeof_Cell
tile_Art_HPZPulseOrb2:				equ vram_HPZPulseOrb2/sizeof_Cell
tile_Art_HPZPulseOrb3:				equ vram_HPZPulseOrb3/sizeof_Cell

; ---------------------------------------------------------------------------
; Unused Sonic 1 leftovers
; ---------------------------------------------------------------------------

vram_MZPlatform:					equ $5700
vram_SpikePole:						equ $7300
vram_GiantRing:                		equ $8000
vram_GiantRingFlash:          		equ $8C40
vram_Bonus:				            equ $96C0
vram_SmashWall:			            equ $B200
vram_PurpleRock:        			equ $D800

vram_S1Credits:						equ $B400
vram_S1Title_Credits:				equ $6000


; VRAM assignments for animals in 
; Sonic 1 ending sequence
vram_Flicky_End:            equ $B4A0
vram_Rabbit_End            	equ $AA60
vram_Penguin_End:           equ $AE60
vram_Seal_End:              equ $B0A0
vram_Pig_End:               equ $B260
vram_Chicken_End:           equ $ACA0
vram_Squirrel_End:          equ $B660
