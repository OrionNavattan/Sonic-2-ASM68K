; -------------------------------------------------------------------------------
; Sprite mappings - Crawlton enemy (MCZ)
; -------------------------------------------------------------------------------

Map_CrawlT:	index offset(*)
		ptr	Frame_CrawlT_Head
		ptr	Frame_CrawlT_Head
		ptr	Frame_CrawlT_Body

Frame_CrawlT_Head:	spriteHeader
		spritePiece	-$10, -8, 3, 2, 0, 0, 0, 0, 0
		endsprite

Frame_CrawlT_Body:	spriteHeader
		spritePiece	-8, -8, 2, 2, 6, 0, 0, 0, 0
		endsprite

		even
