; ---------------------------------------------------------------------------
; File definitions - block mappings
; ---------------------------------------------------------------------------
		filedef	BM16_EHZ,"mappings/16x16/EHZ",kos,kos
		filedef	BM16_HTZ,"mappings/16x16/HTZ",kos,kos
		filedef	BM128_EHZ,"mappings/128x128/EHZ_HTZ",kos,kos
		filedef	BM16_MTZ,"mappings/16x16/MTZ",kos,kos
		filedef	BM128_MTZ,"mappings/128x128/MTZ",kos,kos
;		filedef	BM16_HPZ,"mappings/16x16/HPZ",kos,kos
;		filedef	BM128_HPZ,"mappings/128x128/HPZ",kos,kos
		filedef	BM16_OOZ,"mappings/16x16/OOZ",kos,kos
		filedef	BM128_OOZ,"mappings/128x128/OOZ",kos,kos
		filedef	BM16_MCZ,"mappings/16x16/MCZ",kos,kos
		filedef	BM128_MCZ,"mappings/128x128/MCZ",kos,kos
		filedef	BM16_CNZ,"mappings/16x16/CNZ",kos,kos
		filedef	BM128_CNZ,"mappings/128x128/CNZ",kos,kos
		filedef	BM16_CPZ,"mappings/16x16/CPZ_DEZ",kos,kos
		filedef	BM128_CPZ,"mappings/128x128/CPZ_DEZ",kos,kos

		; This file contains $320 blocks, overflowing the 'Block_table' buffer. This causes
		; 'TempArray_LayerDef' to be overwritten with (empty) block data.
		filedef	BM16_ARZ,"mappings/16x16/ARZ",kos,kos

		filedef	BM128_ARZ,"mappings/128x128/ARZ",kos,kos
		filedef	BM16_WFZ,"mappings/16x16/WFZ_SCZ",kos,kos
		filedef	BM128_WFZ,"mappings/128x128/WFZ_SCZ",kos,kos

; ---------------------------------------------------------------------------
; File definitions - Enigma compressed plane and sprite mappings
; ---------------------------------------------------------------------------

		filedef	Eni_2PActResults,"mappings/planes/2P Act Results",eni,unc
		filedef	Eni_2PZoneResults,"mappings/planes/2P Zone Results",eni,unc
		filedef	Eni_2PGameResults, "mappings/planes/2P Game Results",eni,unc
		filedef	Eni_2PSpecialStageActResults,"mappings/planes/2P Special Stage Act Results",eni,unc
		filedef	Eni_2PSpecialStageZoneResults,"mappings/planes/2P Special Stage Zone Results",eni,unc
		filedef	Eni_LevelSelect2P,"mappings/planes/Level Select 2P",eni,unc
		filedef	Eni_Options,"mappings/planes/Options Screen",eni,unc
		filedef	Eni_LevelSelect,"mappings/planes/Level Select",eni,unc
		filedef	Eni_LevelSelectIcons,"mappings/planes/Level Select Icons",eni,unc
		filedef	Eni_EndGameLogo,"mappings/planes/Sonic 2 Ending Logo",eni,unc
		filedef	Eni_SEGA,"mappings/planes/SEGA Logo",eni,unc
		filedef	Eni_TitleScreen,"mappings/planes/Title Screen Background 1",eni,unc
		filedef	Eni_TitleBack,"mappings/planes/Title Screen Background 2",eni,unc
		filedef	Eni_TitleLogo,"mappings/planes/Title Screen Logo",eni,unc
		filedef	Eni_MenuBack,"mappings/planes/Sonic & Miles Animated Background",eni,unc
		filedef	Eni_Ending1,"mappings/planes/Ending Still 1",eni,unc
		filedef	Eni_Ending2,"mappings/planes/Ending Still 2",eni,unc
		filedef	Eni_Ending3,"mappings/planes/Ending Still 3",eni,unc
		filedef	Eni_Ending4,"mappings/planes/Ending Still 4",eni,unc
		filedef	Eni_EndingTailsPlane,"mappings/planes/Tails Piloting Tornado in Ending Cutscene",eni,unc
		filedef	Eni_EndingSonicPlane,"mappings/planes/Sonic Piloting Tornado in Ending Cutscene",eni,unc
		filedef	Eni_SpecialBack,"mappings/planes/Special Stage Background (Main)",eni,unc
		filedef	Eni_SpecialBackBottom,"mappings/planes/Special Stage Background (Lower)",eni,unc

; ---------------------------------------------------------------------------
; File definitions - Kosinski graphics
; ---------------------------------------------------------------------------

		filedef	Kos_EHZ,"art/kosinski/EHZ_HTZ",kos,unc
		filedef	Kos_HTZ,"art/kosinski/HTZ_Supp",kos,unc
		filedef	Kos_MTZ,"art/kosinski/MTZ",kos,unc
;		filedef	Kos_HPZ,"art/kosinski/HPZ",kos,unc
		filedef	Kos_OOZ,"art/kosinski/OOZ",kos,unc
		filedef	Kos_MCZ,"art/kosinski/MCZ",kos,unc
		filedef	Kos_CNZ,"art/kosinski/CNZ",kos,unc
		filedef	Kos_CPZ,"art/kosinski/CPZ_DEZ",kos,unc
		filedef	Kos_ARZ,"art/kosinski/ARZ",kos,unc
		filedef	Kos_SCZ,"art/kosinski/WFZ_SCZ",kos,unc
		filedef	Kos_WFZ,"art/kosinski/WFZ_Supp",kos,unc

		; Special Stage level patterns
		; Only one line of each tile is stored in this file. The other 7 lines are
		; the same at this one line, so to get the full tiles, each line needs to be
		; duplicated 7 times over.
		filedef	Kos_Special,"art/kosinski/SpecialStage",kos,unc

; ---------------------------------------------------------------------------
; File definitions - Nemesis graphics
; ---------------------------------------------------------------------------

		filedef	Nem_Player1VS2,"art/nemesis/Player 1 VS 2 Text",nem,unc ; 10 tiles
		filedef Nem_CreditsFont,"art/nemesis/Credit Text",nem,unc ; 64 tiles
		filedef	Nem_Shield,"art/nemesis/Shield",nem,unc	; 32 tiles
		filedef	Nem_Invinciblity_Stars,"art/nemesis/Invincibility Stars",nem,unc ; 34 tiles
		filedef	Nem_SuperSonic_Stars,"art/nemesis/Super Sonic Stars",nem,unc ; 14 tiles
		filedef	Nem_SEGA,"art/nemesis/SEGA",nem,unc	; 127 tiles
		filedef	Nem_IntroTrails,"art/nemesis/Sega Screen Trails",nem,unc ; 9 tiles
		filedef	Nem_Title,"art/nemesis/Title Screen Patterns",nem,unc ; 336 tiles
		filedef	Nem_TitleSprites,"art/nemesis/Title Screen Sonic & Tails",nem,unc ; 674 tiles
		filedef	Nem_MenuJunk,"art/nemesis/Menu Blocks",nem,unc ; 10 tiles
		filedef	Nem_Button,"art/nemesis/Button",nem,unc	; 16 tiles
		filedef	Nem_VrtclSprng,"art/nemesis/Vertical Spring",nem,unc ; 20 tiles
		filedef	Nem_HrzntlSprng,"art/nemesis/Horizontal Spring",nem,unc ; 12 tiles
		filedef	Nem_DignlSprng,"art/nemesis/Diagonal Spring",nem,unc ; 32 tiles
		filedef	Nem_HUD,"art/nemesis/HUD",nem,unc	; Score, Rings, & Time patterns - 24 tiles
		filedef Nem_Sonic_Life_Counter,"art/nemesis/Sonic Lives Counter",nem,unc ; 12 tiles
		filedef Nem_Ring,"art/nemesis/Ring",nem,unc	; 14 tiles
		filedef Nem_Monitors,"art/nemesis/Monitors & Monitor Contents",nem,unc ; 60 tiles
		filedef Nem_Spikes,"art/nemesis/Spikes",nem,unc	; 8 tiles
		filedef Nem_Numbers,"art/nemesis/Numbers",nem,unc ; 18 tiles
		filedef Nem_Checkpoint,"art/nemesis/Star Pole",nem,unc ; 16 tiles
		filedef Nem_Signpost,"art/nemesis/Signpost",nem,unc ; 78 tiles
		filedef Nem_LeverSpring,"art/nemesis/Diving Board Spring",nem,unc ; 28 tiles
		filedef Nem_HorizSpike,"art/nemesis/Long Horizontal Spike",nem,unc ; 8 tiles
		filedef Nem_BubbleGenerator,"art/nemesis/ARZ Bubble Generator",nem,unc ; 24 tiles
		filedef Nem_Bubbles,"art/nemesis/Bubbles",nem,unc ; 10 tiles
		filedef Nem_Game_Over,"art/nemesis/Game Over & Time Over Text",nem,unc ; 34 tiles
		filedef Nem_Explosion,"art/nemesis/Explosion",nem,unc ; 68 tiles
		filedef Nem_MilesLife,"art/nemesis/Miles Life Counter",nem,unc ; 12 tiles
		filedef Nem_Capsule,"art/nemesis/Egg Prison",nem,unc ; 49 tiles
		filedef Nem_ContinueTails,"art/nemesis/Continue Screen Tails",nem,unc ; 36 tiles
		filedef Nem_MiniSonic,"art/nemesis/Sonic Continue Icon",nem,unc ; 12 tiles
		filedef Nem_TailsLife,"art/nemesis/Tails Life Counter",nem,unc ; 12 tiles
		filedef Nem_MiniTails,"art/nemesis/Tails Continue Icon",nem,unc ; 12 tiles
		filedef Nem_StandardFont,"art/nemesis/Standard Font",nem,unc ; 88 tiles
		filedef Nem_1P2PWins,"art/nemesis/1P & 2P Wins Text",nem,unc ; 38 tiles
		filedef Nem_TitleCard,"art/nemesis/Title Card",nem,unc ; 94 tiles
		filedef Nem_TitleCardFont,"art/nemesis/Title Card Font",nem,unc ; 92 tiles
		filedef Nem_MenuBox,"art/nemesis/Menu Box & Drop Shadow",nem,unc ; 21 tiles
		filedef Nem_LevelSelectPics,"art/nemesis/Level Select Thumbnails",nem,unc ; 170 tiles
		filedef Nem_ResultsText,"art/nemesis/End of Level Results Text",nem,unc ; 68 tiles
		filedef Nem_SpecialStageResults,"art/nemesis/Special Stage Results Screen & Emeralds",nem,unc ; Special Stage results text & patterns for 3 emeralds - 72 tiles
		filedef Nem_Perfect,"art/nemesis/Perfect Text",nem,unc ; 14 tiles
		filedef Nem_Flicky,"art/nemesis/Flicky",nem,unc	; 16 tiles
		filedef Nem_Squirrel,"art/nemesis/Squirrel",nem,unc ; 20 tiles
		filedef Nem_Mouse,"art/nemesis/Mouse",nem,unc	; 16 tiles
		filedef Nem_Chicken,"art/nemesis/Chicken",nem,unc ; 16 tiles
		filedef Nem_Beaver,"art/nemesis/Beaver",nem,unc	; 20 tiles
		filedef Nem_Eagle,"art/nemesis/Eagle",nem,unc	; 16 tiles
		filedef Nem_Pig,"art/nemesis/Pig",nem,unc	; 10 tiles
		filedef Nem_Seal,"art/nemesis/Seal",nem,unc	; 14 tiles
		filedef Nem_Penguin,"art/nemesis/Penguin",nem,unc ; 18 tiles
		filedef Nem_Turtle,"art/nemesis/Turtle",nem,unc	; 20 tiles
		filedef Nem_Bear,"art/nemesis/Bear",nem,unc	; 20 tiles
		filedef Nem_Rabbit,"art/nemesis/Rabbit",nem,unc	; 18 tiles
		filedef Nem_WFZSwitch,"art/nemesis/WFZ Boss Chamber Switch",nem,unc ; 4 tiles
		filedef Nem_BreakPanels,"art/nemesis/WFZ Breakaway Panels",nem,unc ; 15 tiles
		filedef Nem_SlidingSpikes,"art/nemesis/OOZ Spiked Ball",nem,unc ; 32 tiles
		filedef Nem_BurnerLid,"art/nemesis//OOZ Burner Lid Platform",nem,unc ; 6 tiles
		filedef Nem_StripedBlocksVert,"art/nemesis/CPZ Striped Blocks 1",nem,unc ; 4 tiles
		filedef Nem_Oilfall,"art/nemesis/OOZ Oil Falling Into Oil",nem,unc ; 16 tiles
		filedef Nem_Oilfall2,"art/nemesis/OOZ Oil Cascades",nem,unc ; 13 tiles
		filedef Nem_SpringBall,"art/nemesis/OOZ Ball on Spring (Beta Leftover)",nem,unc ; Unused beta leftover - 20 tiles
		filedef Nem_LaunchBall,"art/nemesis/OOZ Transporter Ball",nem,unc ; 53 tiles
		filedef Nem_HTZCliffs,"art/nemesis/HTZ Background Cliffs",nem,unc ; 192 tiles
		filedef Nem_OOZPlatform,"art/nemesis/OOZ Collapsing Platform",nem,unc ; 40 tiles
		filedef Nem_PushSpring,"art/nemesis/OOZ Pressure Spring",nem,unc ; 30 tiles
		filedef Nem_OOZSwingPlat,"art/nemesis/OOZ Swinging Platform",nem,unc ; 28 tiles
		filedef Nem_StripedBlocksHoriz,"art/nemesis/OOZ Striped Blocks",nem,unc ; 4 tiles
		filedef Nem_OOZElevator,"art/nemesis/OOZ Elevator",nem,unc ; 24 tiles
		filedef Nem_Fan,"art/nemesis/OOZ Fan",nem,unc	; 30 tiles
		filedef Nem_Burner,"art/nemesis/OOZ Burner Flame",nem,unc ; 18 tiles
		filedef Nem_SnakePlats,"art/nemesis/CNZ Caterpillar Platforms",nem,unc ; 4 tiles
		filedef Nem_BombPenalty,"art/nemesis/CNZ Slot Spikeballs",nem,unc ; 4 tiles
		filedef Nem_LargeMovingBlock,"art/nemesis/CNZ Big Moving Block",nem,unc ; 16 tiles
		filedef Nem_CNZElevator,"art/nemesis/CNZ Elevator",nem,unc ; 4 tiles
		filedef Nem_Cage,"art/nemesis/CNZ Cages",nem,unc ; 12 tiles
		filedef Nem_HexBumper,"art/nemesis/CNZ Hexagonal Bumper",nem,unc ; 6 tiles
		filedef Nem_RoundBumper,"art/nemesis/CNZ Round Bumper",nem,unc ; 24 tiles
		filedef Nem_DiagLauncher,"art/nemesis/CNZ Diagonal Pinball Launcher",nem,unc ; 32 tiles
		filedef Nem_VertLauncher,"art/nemesis/CNZ Vertical Pinball Launcher",nem,unc ; 18 tiles
		filedef Nem_SaucerBumper,"art/nemesis/CNZ Saucer Bumper",nem,unc ; 28 tiles
		filedef Nem_Flipper,"art/nemesis/CNZ Flipper",nem,unc ; 52 tiles
		filedef Nem_CPZElevator,"art/nemesis/CPZ Elevator",nem,unc ; 16 tiles
		filedef Nem_WaterSurface1,"art/nemesis/CPZ & HPZ Water Surface",nem,unc ; 24 tiles
		filedef Nem_Booster,"art/nemesis/CPZ Speed Booster",nem,unc ; 4 tiles
		filedef Nem_Droplet,"art/nemesis/CPZ Blue Balls",nem,unc ; 4 tiles
		filedef Nem_Pylon,"art/nemesis/CPZ Pylons",nem,unc ; 33 tiles
		filedef Nem_CPZMetalBlock,"art/nemesis/CPZ Breakable Metal Block",nem,unc ; 4 tiles
		filedef Nem_ConstructionStripes,"art/nemesis/CPZ & DEZ Yellow & Black Striped Blocks",nem,unc ; 8 tiles
		filedef Nem_CPZDumpingPipePlat,"art/nemesis/CPZ Dumping Pipe Platform",nem,unc ; 48 tiles
		filedef Nem_StairBlock,"art/nemesis/CPZ Stair Block",nem,unc ; 24 tiles
		filedef Nem_TubeLid,"art/nemesis/CPZ Spintube Exit Cover & Spring",nem,unc ; 32 tiles
		filedef	Nem_WaterSurface2,"art/nemesis/ARZ Water Surface",nem,unc ; 16 tiles
		filedef Nem_Leaves,"art/nemesis/ARZ Leaves",nem,unc ; 7 tiles
		filedef Nem_ArrowAndShooter,"art/nemesis/ARZ Arrow Shooter & Arrow",nem,unc ; 17 tiles
		filedef Nem_ARZBarrier,"art/nemesis/ARZ One-Way Barrier",nem,unc ; 8 tiles
		filedef Nem_Buzzer,"art/nemesis/Buzzer",nem,unc	; 28 tiles
		filedef Nem_Octus,"art/nemesis/Octus",nem,unc	; 58 tiles
		filedef Nem_Aquis,"art/nemesis/Aquis",nem,unc	; 56 tiles
		filedef Nem_Masher,"art/nemesis/Masher",nem,unc	; 22 tiles
		filedef Nem_Eggpod,"art/nemesis/Eggpod",nem,unc	; 96 tiles
		filedef Nem_CPZBoss,"art/nemesis/CPZ Boss",nem,unc ; 111 tiles
		filedef Nem_FieryExplosion,"art/nemesis/Large Explosion",nem,unc ; 100 tiles
		filedef Nem_EggpodJets,"art/nemesis/Eggpod Jets",nem,unc ; 8 tiles
		filedef Nem_BossSmoke,"art/nemesis/CPZ & HTZ Boss Smoke Trail",nem,unc ; 16 tiles
		filedef Nem_EHZBoss,"art/nemesis/EHZ Boss",nem,unc ; 128 tiles
		filedef Nem_EggChopperBlades,"art/nemesis/EHZ Boss Helicopter Blades",nem,unc ; 20 tiles
		filedef Nem_HTZBoss,"art/nemesis/HTZ Boss",nem,unc ; 107 tiles
		filedef Nem_ARZBoss,"art/nemesis/ARZ Boss",nem,unc ; 166 tiles
		filedef Nem_MCZBoss,"art/nemesis/MCZ Boss",nem,unc ; 204 tiles
		filedef Nem_CNZBoss,"art/nemesis/CNZ Boss",nem,unc ; 133 tiles
		filedef Nem_OOZBoss,"art/nemesis/OOZ Boss",nem,unc ; 181 tiles
		filedef Nem_MTZBoss,"art/nemesis/MTZ Boss",nem,unc ; 124 tiles
		filedef Nem_Whisp,"art/nemesis/Whisp",nem,unc	; 9 tiles
		filedef Nem_Grounder,"art/nemesis/Grounder",nem,unc ; 50 tiles
		filedef Nem_ChopChop,"art/nemesis/Chop Chop",nem,unc ; 24 tiles
		filedef Nem_Rexon,"art/nemesis/Rexon",nem,unc	; 19 tiles
		filedef Nem_Spiker,"art/nemesis/Spiker",nem,unc	; 20 tiles
		filedef Nem_Nebula,"art/nemesis/Nebula",nem,unc	; 28 tiles
		filedef Nem_Turtloid,"art/nemesis/Turtloid",nem,unc ; 57 tiles
		filedef Nem_Coconuts,"art/nemesis/Coconuts",nem,unc ; 38 tiles
		filedef Nem_Crawlton,"art/nemesis/Crawlton",nem,unc ; 10 tiles
		filedef Nem_Flasher,"art/nemesis/Flasher",nem,unc ; 20 tiles
		filedef Nem_Slicer,"art/nemesis/Slicer",nem,unc	; 32 tiles
		filedef Nem_Shellcracker,"art/nemesis/Shellcracker",nem,unc ; 36 tiles
		filedef Nem_Asteron,"art/nemesis/Asteron",nem,unc ; 15 tiles
		filedef Nem_Spiny,"art/nemesis/Spiny",nem,unc	; 32 tiles
		filedef Nem_Grabber,"art/nemesis/Grabber",nem,unc ; 45 tiles
		filedef Nem_Clucker,"art/nemesis/Clucker",nem,unc ; 26 tiles
		filedef Nem_Balkiry,"art/nemesis/Balkiry",nem,unc ; 25 tiles
		filedef Nem_MechaSonic,"art/nemesis/Mecha Sonic",nem,unc ; 217 tiles
		filedef Nem_Tornado,"art/nemesis/The Tornado",nem,unc ; 79 tiles
		filedef Nem_WFZWallTurret,"art/nemesis/WFZ Wall Turret",nem,unc ; 24 tiles
		filedef Nem_Hook,"art/nemesis/WFZ Hook & Chain",nem,unc ; 20 tiles
		filedef Nem_WFZGunPlatform,"art/nemesis/WFZ Gun Platform",nem,unc ; 54 tiles
		filedef Nem_ConvPulley,"art/nemesis/WFZ Conveyer Belt Wheel",nem,unc ; 16 tiles
		filedef Nem_WFZFloatingPlatform,"art/nemesis/WFZ Floating Platform",nem,unc ; 12 tiles
		filedef Nem_WFZVrtclLaser,"art/nemesis/WFZ Vertical Laser",nem,unc ; 12 tiles
		filedef Nem_Clouds,"art/nemesis/SCZ, WFZ, and Ending Clouds",nem,unc ; 18 tiles
		filedef Nem_WFZHrzntlLaser,"art/nemesis/WFZ Horizontal Laser",nem,unc ; 10 tiles
		filedef Nem_WFZLaunchCatapult,"art/nemesis/WFZ Catapult",nem,unc ; 5 tiles
		filedef Nem_WFZBeltPlatform,"art/nemesis/WFZ Belt Platform",nem,unc ; 12 tiles
		filedef Nem_WFZUnusedBadnik,"art/nemesis/WFZ Unused Badnik",nem,unc ; 12 tiles
		filedef Nem_VertProp,"art/nemesis/WFZ Vertical Propeller",nem,unc ; 4 tiles
		filedef Nem_HorizProp,"art/nemesis/WFZ Horizontal Propeller",nem,unc ; 29 tiles
		filedef Nem_WFZTiltPlatforms,"art/nemesis/WFZ Tilting Platforms",nem,unc ; 12 tiles
		filedef Nem_WFZThrust,"art/nemesis/WFZ Getaway Ship Thrust",nem,unc ; 8 tiles
		filedef Nem_WFZBoss,"art/nemesis/WFZ Boss",nem,unc ; 117 tiles
		filedef Nem_RobotnikUpper,"art/nemesis/Eggman's Head",nem,unc ; 24 tiles
		filedef Nem_RobotnikRunning,"art/nemesis/Eggman",nem,unc ; 76 tiles
		filedef Nem_RobotnikLower,"art/nemesis/Eggman's Lower Half",nem,unc ; 28 tiles
		filedef Nem_DEZWindow,"art/nemesis/Eggman's Window in Mecha Sonic Boss Arena",nem,unc ; 8 tiles
		filedef Nem_DEZBoss,"art/nemesis/Eggrobo",nem,unc ; 327 tiles
		filedef Nem_Crawl,"art/nemesis/Crawl",nem,unc	; 42 tiles
		filedef Nem_TornadoThruster,"art/nemesis/The Tornado's Rocket Booster",nem,unc ; 26 tiles

		filedef Nem_EndingStills,"art/nemesis/Ending Stills",nem,unc ; 363 tiles
		filedef Nem_EndingFinalTornado,"art/nemesis/Tornado Facing Camera at End of Ending Sequence",nem,unc ; 127 tiles
		filedef Nem_EndingMiniTornado,"art/nemesis/Tornado Distant Shots in Ending Sequence",nem,unc ; 109 tiles
		filedef Nem_EndingSonic,"art/nemesis/Ending Sequence Sonic",nem,unc ; 135 tiles
		filedef Nem_EndingSuperSonic,"art/nemesis/Ending Sequence Super Sonic",nem,unc ; 117 tiles
		filedef Nem_EndingTails,"art/nemesis/Ending Sequence Tails",nem,unc ; 181 tiles
		filedef Nem_EndingLogo,"art/nemesis/Sonic the Hedgehog 2 Credits Logo",nem,unc ; 72 tiles
		filedef Nem_SpecialBack,"art/nemesis/Special Stage Background",nem,unc ; 127 tiles
		filedef Nem_SpecialHUD,"art/nemesis/Special Stage HUD",nem,unc ; 62 tiles
		filedef Nem_SpecialStart,"art/nemesis/Special Stage Checkered Flag & Start Text",nem,unc ; 48 tiles
		filedef Nem_SpecialStars,"art/nemesis/Special Stage Stars",nem,unc ; 37 tiles
		filedef Nem_SpecialPlayerVSPlayer,"art/nemesis/Special Stage Player VS Player Text",nem,unc ; 13 tiles
		filedef Nem_SpecialRings,"art/nemesis/Special Stage Rings",nem,unc ; 104 tiles
		filedef Nem_SpecialHorizShadow,"art/nemesis/Special Stage Horizontal Shadow",nem,unc ; 38 tiles
		filedef Nem_SpecialDiagShadow,"art/nemesis/Special Stage Diagonal Shadow",nem,unc ; 58 tiles
		filedef Nem_SpecialVertShadow,"art/nemesis/Special Stage Vertical Shadow",nem,unc ; 25 tiles
		filedef Nem_SpecialExplosion,"art/nemesis/Special Stage Explosion",nem,unc ; 48 tiles
		filedef Nem_SpecialBomb,"art/nemesis/Special Stage Bomb",nem,unc ; 80 tiles
		filedef Nem_SpecialEmerald,"art/nemesis/Special Stage Emerald",nem,unc ; 46 tiles
		filedef Nem_SpecialMessages,"art/nemesis/Special Stage Checkpoint Messages & Icons",nem,unc ; 99 tiles
		filedef Nem_SpecialSonicAndTails,"art/nemesis/Special Stage Sonic & Tails",nem,unc ; 851 tiles
		filedef Nem_SpecialTailsText,"art/nemesis/Special Stage Tails HUD Text",nem,unc ; 5 tiles

		filedef Nem_Fireball1,"art/nemesis/HTZ Fireball 1",nem,unc ; 20 tiles
		filedef Nem_Waterfall,"art/nemesis/Waterfall",nem,unc ; 24 tiles
		filedef Nem_HTZFireball2,"art/nemesis/HTZ Fireball 2",nem,unc ; 16 tiles
		filedef Nem_EHZBridge,"art/nemesis/EHZ Bridge",nem,unc ; 8 tiles
		filedef Nem_Tram,"art/nemesis/HTZ Zipline Platform",nem,unc ; 48 tiles
		filedef Nem_HTZOneWayBarrier,"art/nemesis/HTZ One-Way Barrier",nem,unc ; 4 tiles
		filedef Nem_SeeSaw,"art/nemesis/HTZ See-saw",nem,unc ; 24 tiles
		filedef Nem_UnusedFireball,"art/nemesis/Unused Fireball",nem,unc ; 24 tiles
		filedef Nem_HTZRock,"art/nemesis/HTZ Rock",nem,unc ; 20 tiles
		filedef Nem_Sol,"art/nemesis/Sol",nem,unc	; 4 tiles
		filedef Nem_GiantCog,"art/nemesis/MTZ Large Spinning Wheel",nem,unc ; 120 tiles
		filedef Nem_WheelIndent,"art/nemesis/MTZ Large Spinning Wheel Indent",nem,unc ; 9 tiles
		filedef Nem_SpikeBlock,"art/nemesis/MTZ Spike Block",nem,unc ; 8 tiles
		filedef Nem_SteamSpring,"art/nemesis/MTZ Steam",nem,unc ; 15 tiles
		filedef Nem_MTZSpike,"art/nemesis/MTZ Spike",nem,unc ; 8 tiles
		filedef Nem_Nut,"art/nemesis/MTZ Misc Blocks",nem,unc ; 54 tiles
		filedef	Nem_LavaBubble,"art/nemesis/MTZ Lava Bubble",nem,unc ; 9 tiles
		filedef Nem_RopePlat,"art/nemesis/MTZ Rope Platform",nem,unc ; 4 tiles
		filedef Nem_BoltEnd_Rope,"art/nemesis/MTZ Bolt End & Rope",nem,unc ; 8 tiles
		filedef Nem_Cog,"art/nemesis/MTZ Small Cog",nem,unc ; 12 tiles
		filedef Nem_TeleportFlash,"art/nemesis/MTZ Spin Tube Flash",nem,unc ; 4 tiles
		filedef Nem_Crate,"art/nemesis/MCZ Crate",nem,unc ; 32 tiles
		filedef Nem_MCZCollapsingPlat,"art/nemesis/MCZ Collapsing Platform",nem,unc ; 26 tiles
		filedef Nem_VineSwitch,"art/nemesis/MCZ Vine Switch",nem,unc ; 16 tiles
		filedef Nem_VinePulley,"art/nemesis/MCZ Vine Pulley",nem,unc ; 10 tiles
		filedef Nem_DrawbridgeLogs,"art/nemesis/MCZ Drawbridge Logs",nem,unc ; 20 tiles


; ---------------------------------------------------------------------------
; File definitions - uncompressed graphics
; ---------------------------------------------------------------------------

		filedef	Art_HUD,"art/uncompressed/HUD",bin,bin
		filedef	Art_LivesNums,"art/uncompressed/Lives Numbers",bin,bin
		filedef	Art_HUDText,"art/uncompressed/HUD Text",bin,bin
		filedef	Art_Flowers1,"art/uncompressed/EHZ & HTZ Flowers - 1",bin,bin
		filedef	Art_Flowers2,"art/uncompressed/EHZ & HTZ Flowers - 2",bin,bin
		filedef	Art_Flowers3,"art/uncompressed/EHZ & HTZ Flowers - 3",bin,bin
		filedef	Art_Flowers4,"art/uncompressed/EHZ & HTZ Flowers - 4",bin,bin
		filedef	Art_EHZPulseBall,"art/uncompressed/EHZ Pulsing Ball",bin,bin
		filedef	Art_HTZClouds,"art/uncompressed/HTZ Background Clouds",bin,bin
		filedef	Art_MTZCylinder,"art/uncompressed/MTZ Spinning Metal Cylinder",bin,bin
		filedef	Art_Lava,"art/uncompressed/HTZ & MTZ Lava",bin,bin
		filedef	Art_MTZAnimBack,"art/uncompressed/MTZ Animated Background",bin,bin
;		filedef	Art_HPZPulseOrb,"art/uncompressed/HPZ Pulsing Orb",bin,bin
		filedef	Art_OOZPulseBall,"art/uncompressed/OOZ Pulsing Ball",bin,bin
		filedef	Art_OOZSquareBall1,"art/uncompressed/OOZ Spinning Square & Ball - 1",bin,bin
		filedef	Art_OOZSquareBall2,"art/uncompressed/OOZ Spinning Square & Ball - 2",bin,bin
		filedef	Art_Oil1,"art/uncompressed/OOZ Oil - 1",bin,bin
		filedef	Art_Oil2,"art/uncompressed/OOZ Oil - 2",bin,bin
		filedef	Art_CNZFlipPanels,"art/uncompressed/CNZ Flipping Foreground Panel",bin,bin
		filedef	Art_CNZSlotPics,"art/uncompressed/CNZ Slot Pictures",bin,bin ; 96 tiles, 16 each for each of the 6 slot pics
		filedef	Art_CPZAnimBack,"art/uncompressed/CPZ & DEZ Animated Background",bin,bin
		filedef	Art_Waterfall1,"art/uncompressed/ARZ Waterfalls - 1",bin,bin
		filedef	Art_Waterfall2,"art/uncompressed/ARZ Waterfalls - 2",bin,bin
		filedef	Art_Waterfall3,"art/uncompressed/ARZ Waterfalls - 3",bin,bin
		filedef	Art_Sonic,"art/uncompressed/Sonic",bin,bin
		filedef	Art_Tails,"art/uncompressed/Tails",bin,bin
		filedef	Art_SplashAndDust,"art/uncompressed/Water Splash & Skid Dust",bin,bin
		filedef	Art_Signpost,"art/uncompressed/Signpost",bin,bin
		filedef	Art_Countdown,"art/uncompressed/Drowning Countdown Numbers",bin,bin ; 36 tiles; 6 for each of the numbers 0-5
		filedef	Art_MenuBack,"art/uncompressed/Sonic & Miles Animated Background",bin,bin
		filedef	Art_FallingRocks,"art/uncompressed/MCZ Boss Falling Rocks & Stalactites",bin,bin ; 8 tiles

; ---------------------------------------------------------------------------
; File definitions - palettes
; ---------------------------------------------------------------------------

		filedef Pal_S1TitleCyc,"art/palettes/Cycle - S1 Title Screen Water",bin,bin ; Unused Sonic 1 leftover - title screen water cycle
		filedef Pal_EHZ_ARZWaterCyc,"art/palettes/Cycle - EHZ & ARZ Water",bin,bin
		filedef Pal_HTZLavaCyc,"art/palettes/Cycle - HTZ Lava",bin,bin
		filedef Pal_WoodConveyerCyc,"art/palettes/Cycle - Wood Conveyor",bin,bin ; Unused beta leftover - Wood conveyor belt cycle
		filedef Pal_MTZCyc1,"art/palettes/Cycle - MTZ 1",bin,bin
		filedef Pal_MTZCyc2,"art/palettes/Cycle - MTZ 2",bin,bin
		filedef Pal_MTZCyc3,"art/palettes/Cycle - MTZ 3",bin,bin
		filedef Pal_HPZWaterCyc,"art/palettes/Cycle - HPZ Water",bin,bin ; Unused beta leftover - Hidden Palace water cycle
		filedef Pal_HPZUnderwaterCyc,"art/palettes/Cycle - HPZ Underwater",bin,bin ; Unused beta leftover - Hidden Palace underwater cycle
		filedef Pal_OOZOilCyc,"art/palettes/Cycle - OOZ Oil",bin,bin
		filedef Pal_MCZLanternCyc,"art/palettes/Cycle - MCZ Lantern",bin,bin
		filedef Pal_CNZCyc1_Cyc2,"art/palettes/Cycle - CNZ 1 & 2",bin,bin
		filedef Pal_CNZCyc3,"art/palettes/Cycle - CNZ 3",bin,bin
		filedef Pal_CNZCyc4,"art/palettes/Cycle - CNZ 4",bin,bin
		filedef Pal_CNZBossCyc1,"art/palettes/Cycle - CNZ Boss 1",bin,bin
		filedef Pal_CNZBossCyc2,"art/palettes/Cycle - CNZ Boss 2",bin,bin
		filedef Pal_CNZBossCyc3,"art/palettes/Cycle - CNZ Boss 3",bin,bin
		filedef Pal_CPZCyc1,"art/palettes/Cycle - CPZ 1",bin,bin
		filedef Pal_CPZCyc2,"art/palettes/Cycle - CPZ 2",bin,bin
		filedef Pal_CPZCyc3,"art/palettes/Cycle - CPZ 3",bin,bin
		filedef Pal_WFZFireCyc,"art/palettes/Cycle - WFZ Fire",bin,bin
		filedef Pal_WFZConveyerCyc,"art/palettes/Cycle - WFZ Conveyor",bin,bin
		filedef Pal_WFZCyc1,"art/palettes/Cycle - WFZ 1",bin,bin ; Wing Fortress flashing light cycle 1 (also used in CPZ)
		filedef Pal_WFZCyc2,"art/palettes/Cycle - WFZ 2",bin,bin ; Wing Fortress flashing light cycle 2
		filedef	Pal_SS_TransformationCyc,"art/palettes/Cycle - Super Sonic Transformation",bin,bin
		filedef	Pal_SS_CPZUWTransformationCyc,"art/palettes/Cycle - Super Sonic Transformation CPZ Water",bin,bin
		filedef	Pal_SS_ARZUWTransformationCyc,"art/palettes/Cycle - Super Sonic Transformation ARZ Water",bin,bin
		filedef	Pal_S1_Sega1,"art/palettes/S1 Sega Logo Stripe",bin,bin ; unused Sonic 1 leftover - SEGA logo stripe
		filedef	Pal_S1_Sega2,"art/palettes/S1 Sega Logo",bin,bin ; unused Sonic 1 leftover - SEGA logo
		filedef Pal_Sega,"art/palettes/Sega Screen",bin,bin
		filedef	Pal_Title,"art/palettes/Title Screen",bin,bin
		filedef	Pal_MenuB,"art/palettes/S2B Level Select",bin,bin ; unused beta leftover - level select
		filedef	Pal_Sonic_Miles_BG1,"art/palettes/Sonic & Tails 1",bin,bin ; main Sonic/Tails palette, as well as the Sonic/Miles animated background in Options menu
		filedef	Pal_Sonic_Miles_BG2,"art/palettes/Sonic & Tails 2",bin,bin ; same as above
		filedef	Pal_EHZ,"art/palettes/EHZ",bin,bin
		filedef	Pal_WZ,"art/palettes/Wood Zone",bin,bin	; unused beta leftover -  Wood Zone
		filedef	Pal_MTZ,"art/palettes/MTZ",bin,bin
		filedef	Pal_WFZ,"art/palettes/WFZ",bin,bin
		filedef	Pal_HTZ,"art/palettes/HTZ",bin,bin
		filedef	Pal_HPZ,"art/palettes/HPZ",bin,bin	; unused beta leftover - Hidden Palace
		filedef	Pal_HPZ_U,"art/palettes/HPZ Underwater",bin,bin ; unused beta leftover - Hidden Palace underwater
		filedef	Pal_OOZ,"art/palettes/OOZ",bin,bin
		filedef	Pal_MCZ,"art/palettes/MCZ",bin,bin
		filedef	Pal_CNZ,"art/palettes/CNZ",bin,bin
		filedef	Pal_CPZ,"art/palettes/CPZ",bin,bin
		filedef	Pal_CPZ_U,"art/palettes/CPZ Underwater",bin,bin
		filedef	Pal_DEZ,"art/palettes/DEZ",bin,bin
		filedef	Pal_ARZ,"art/palettes/ARZ",bin,bin
		filedef	Pal_ARZ_U,"art/palettes/ARZ underwater",bin,bin
		filedef	Pal_SCZ,"art/palettes/SCZ",bin,bin
		filedef	Pal_MCZ_B,"art/palettes/MCZ Boss",bin,bin
		filedef	Pal_CNZ_B,"art/palettes/CNZ Boss",bin,bin
		filedef	Pal_OOZ_B,"art/palettes/OOZ Boss",bin,bin
		filedef	Pal_Menu,"art/palettes/Menu",bin,bin
		filedef	Pal_SS,"art/palettes/Special Stage Main",bin,bin ; main palette used in all Special Stages
		filedef	Pal_SS1,"art/palettes/Special Stage 1",bin,bin
		filedef	Pal_SS2,"art/palettes/Special Stage 2",bin,bin
		filedef	Pal_SS3,"art/palettes/Special Stage 3",bin,bin
		filedef	Pal_SS4,"art/palettes/Special Stage 4",bin,bin
		filedef	Pal_SS5,"art/palettes/Special Stage 5",bin,bin
		filedef	Pal_SS6,"art/palettes/Special Stage 6",bin,bin
		filedef	Pal_SS7,"art/palettes/Special Stage 7",bin,bin
		filedef	Pal_SS1_2p,"art/palettes/Special Stage 1 2P",bin,bin
		filedef	Pal_SS2_2p,"art/palettes/Special Stage 2 2P",bin,bin
		filedef	Pal_SS3_2p,"art/palettes/Special Stage 3 2P",bin,bin
		filedef	Pal_Result,"art/palettes/Special Stage Results Screen",bin,bin
		filedef	Pal_SpecialStageStars,"art/palettes/Special Stage Stars",bin,bin ; twinkling stars in Special Stage background
		filedef Pal_LevelSelectIcons,"art/palettes/Level Select Icons",bin,bin
		filedef Pal_EndingLogoCyc,"art/palettes/Cycle - Ending Logo",bin,bin
		filedef	Pal_EndingSonic,"art/palettes/Ending Sonic",bin,bin
		filedef	Pal_EndingSonicFar,"art/palettes/Ending Sonic Far",bin,bin
		filedef	Pal_EndingBG,"art/palettes/Ending Background",bin,bin
		filedef	Pal_EndingStills,"art/palettes/Ending Stills",bin,bin
		filedef	Pal_EndingSuperSonic,"art/palettes/Ending Super Sonic",bin,bin
		filedef	Pal_TitleStarCyc,"art/palettes/Cycle - Title Star",bin,bin
		filedef	Pal_TitleSonic,"art/palettes/Title Sonic",bin,bin
		filedef	Pal_TitleBackground,"art/palettes/Title Background",bin,bin
		filedef	Pal_TitleLogo,"art/palettes/Title Logo",bin,bin
		filedef Pal_SSCheckpointRainbow,"art/palettes/Special Stage Checkpoint Rainbow",bin,bin
		filedef	Pal_SSEmeralds,"art/palettes/Special Stage Emeralds",bin,bin
		filedef	Pal_SegaScreen2_Colors,"art/palettes/Sega Screen 2",bin,bin ; SEGA screen (background and pre-wipe foreground; 7 frames)
	 	filedef Pal_SegaScreen3_Colors,"art/palettes/Sega Screen 3",bin,bin ; SEGA screen (wiping and post-wipe foreground) (7 frames

; ---------------------------------------------------------------------------
; File definitions - collision
; ---------------------------------------------------------------------------

		filedef	AngleMap,"collision/Curve & Resistance Mapping",bin,bin
		filedef	CollArray1,"collision/Collision Array (Normal)",bin,bin
		filedef	CollArray2,"collision/Collision Array (Rotated)",bin,bin
		filedef	ColP_EHZHTZ,"collision/EHZ & HTZ Primary",kos,unc
		filedef	ColS_EHZHTZ,"collision/EHZ & HTZ Secondary",kos,unc
;		filedef	ColP_HPZ,"collision/HPZ Primary",kos,unc
;		filedef	ColS_HPZ,"collision/HPZ Secondary",kos,unc
		filedef	ColP_MTZ,"collision/MTZ Primary",kos,unc
		filedef	ColP_OOZ,"collision/OOZ Primary",kos,unc
		filedef	ColP_MCZ,"collision/MCZ Primary",kos,unc
		filedef	ColP_CNZ,"collision/CNZ Primary",kos,unc
		filedef	ColS_CNZ,"collision/CNZ Secondary",kos,unc
		filedef	ColP_CPZDEZ,"collision/CPZ & DEZ Primary",kos,unc
		filedef	ColS_CPZDEZ,"collision/CPZ & DEZ Secondary",kos,unc
		filedef	ColP_ARZ,"collision/ARZ Primary",kos,unc
		filedef	ColS_ARZ,"collision/ARZ Secondary",kos,unc
		filedef	ColP_WFZSCZ,"collision/WFZ & SCZ Primary",kos,unc
		filedef	ColS_WFZSCZ,"collision/WFZ & SCZ Secondary",kos,unc

; ---------------------------------------------------------------------------
; File definitions - level layouts
; ---------------------------------------------------------------------------

		filedef	Level_EHZ1,"level/layout/EHZ 1",kos,unc
		filedef	Level_EHZ2,"level/layout/EHZ 2",kos,unc
		filedef	Level_MTZ1,"level/layout/MTZ 1",kos,unc
		filedef	Level_MTZ2,"level/layout//MTZ 2",kos,unc
		filedef	Level_MTZ3,"level/layout//MTZ 3",kos,unc
		filedef	Level_WFZ,"level/layout/WFZ",kos,unc
		filedef	Level_HTZ1,"level/layout/HTZ 1",kos,unc
		filedef	Level_HTZ2,"level/layout/HTZ 2",kos,unc
		filedef	Level_OOZ1,"level/layout/OOZ 1",kos,unc
		filedef	Level_OOZ2,"level/layout/OOZ 2",kos,unc
		filedef	Level_MCZ1,"level/layout/MCZ 1",kos,unc
		filedef	Level_MCZ2,"level/layout/MCZ 2",kos,unc
		filedef	Level_CNZ1,"level/layout/CNZ 1",kos,unc
		filedef	Level_CNZ2,"level/layout/CNZ 2",kos,unc
		filedef	Level_CPZ1,"level/layout/CPZ 1",kos,unc
		filedef	Level_CPZ2,"level/layout/CPZ 2",kos,unc
		filedef	Level_DEZ,"level/layout/DEZ",kos,unc
		filedef	Level_ARZ1,"level/layout/ARZ 1",kos,unc
		filedef	Level_ARZ2,"level/layout/ARZ 2",kos,unc
		filedef	Level_SCZ,"level/layout/SCZ",kos,unc


; ---------------------------------------------------------------------------
; File definitions - misc compressed data
; ---------------------------------------------------------------------------

		filedef Kos_SpecialPerspective,"misc/Special Stage Object Perspective Data",kos,unc
		filedef	Nem_SpecialLevelLayouts,"misc/Special Stage Level Layouts",nem,unc
		filedef Koz_SpecialObjectLocations,"misc/Special Stage Object Locations",kos,unc

; ---------------------------------------------------------------------------
; File definitions - sound
; ---------------------------------------------------------------------------

		filedef SegaPCM,"sound/PCM/SEGA",pcm,pcm

	if sizeof_SegaPCM>sizeof_z80_bank
		inform 3,"Sega sound must fit within $%h bytes, but you have a $%h byte Sega sound.",sizeof_z80_bank,sizeof_SegaPCM
	endif

defdac:	macro	lbl,file
		; Essentially the same as filedef, except we are adding the filesizes to
		; a running total to get the size of all DAC samples.
		if ~def(sizeof_dac_samples)
			sizeof_dac_samples: = 0
		endc
		filename: equs \file				; get file name without quotes
		file_\lbl: equs "\filename"			; record file name
		sizeof_\lbl: equ filesize("\filename")		; record file size
		sizeof_dac_samples: = sizeof_dac_samples+sizeof_\lbl ; add size to running total
		endm

		defdac	DAC_Kick,"sound/DAC/Kick.dpcm"
		defdac	DAC_Snare,"sound/DAC/Snare.dpcm"
		defdac	DAC_Timpani,"sound/DAC/Timpani.dpcm"
		defdac	DAC_Tom,"sound/DAC/Tom.dpcm"
		defdac	DAC_Clap,"sound/DAC/Clap.dpcm"
		defdac	DAC_RecordScratch,"sound/DAC/Record Scratch.dpcm"
		defdac	DAC_VLowClap,"sound/DAC/Low Clap.dpcm"

	if sizeof_dac_samples>sizeof_z80_bank
		inform 3,"DAC samples must fit within $%h bytes, but you have $%h bytes of DAC samples.",sizeof_z80_bank,sizeof_dac_samples
	endc
