
	. = __ewram_overlay_start;
	.ov0 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_0)
		. = ALIGN(4);
		__ewram_overlay_end = MAX(., __ewram_overlay_end);
	} >ewram = 0xff

	. = __ewram_overlay_start;
	.ov1 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_1)
		. = ALIGN(4);
		__ewram_overlay_end = MAX(., __ewram_overlay_end);
	} >ewram = 0xff

	. = __ewram_overlay_start;
	.ov2 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_2)
		. = ALIGN(4);
		__ewram_overlay_end = MAX(., __ewram_overlay_end);
	} >ewram = 0xff
