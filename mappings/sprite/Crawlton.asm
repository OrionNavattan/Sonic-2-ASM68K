; -------------------------------------------------------------------------------
; Sprite mappings - Crawlton enemy (MCZ)
; -------------------------------------------------------------------------------

Map_CrawlT:	index offset(*)
		ptr	Frame_CrawlT_Head
		ptr	Frame_CrawlT_Head
		ptr	Frame_CrawlT_Body

Frame_CrawlT_Head:	spritemap
		piece	-$10, -8, 3x2, 0
		endsprite

Frame_CrawlT_Body:	spritemap
		piece	-8, -8, 2x2, 6
		endsprite

		even
