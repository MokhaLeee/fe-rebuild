MEMORY
{
	rom	:	ORIGIN = 0x08000000, LENGTH = 32M
	iwram   :	ORIGIN = 0x03000000, LENGTH = 32K
	ewram	:	ORIGIN = 0x02000000, LENGTH = 256K
}

ENTRY(_start)

__text_start		=	ORIGIN(rom);
__ewram_start		=	ORIGIN(ewram);
__eheap_end		=	ORIGIN(ewram) + LENGTH(ewram);
__ewram_text_start	=	__eheap_end - 0x2000;
__iwram_start		=	ORIGIN(iwram);
__iwram_top		=	ORIGIN(iwram) + LENGTH(iwram);;
__sp_irq		=	__iwram_top - 0x060;
__sp_usr		=	__sp_irq - 0x0a0;
__irq_flags		=	0x03007ff8;

SECTIONS
{
	. = __text_start;
	.crt0 :
	{
		KEEP (*(.crt0))
		*(.text.irq)
		. = ALIGN(4);
	} >rom =0xff

	.text  :
	{
		*(.text*)
		. = ALIGN(4);
	} >rom = 0xff

	__text_end = .;

	__reloc_map_start = __text_start + 0x400000;
	. = __reloc_map_start;

	.reloc ALIGN(4) : AT (__reloc_map_start)
	{
		*(.rodata.reloc)
		. = ALIGN(4);
	} >rom = 0xff

	__rodata_start = __reloc_map_start + 0x4000;
	. = __rodata_start;

	.rodata ALIGN(4) : AT (__rodata_start)
	{
		*(.rodata)
		*(.rodata*)
		. = ALIGN(4);
	} >rom = 0xff

	/**
	 * EWRAM
	 */
	. = __ewram_start;

	/**
	 * EWRAM overlays
	 */
	__ewram_overlay_start = ABSOLUTE(.);
	__ewram_overlay_end   = __ewram_overlay_start;

	. = __ewram_overlay_start;
	.ov0 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_0)
		. = ALIGN(4);
		__ewram_overlay_end = MAX(., __ewram_overlay_end);
	} >ewram

	. = __ewram_overlay_start;
	.ov1 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_1)
		. = ALIGN(4);
		__ewram_overlay_end = MAX(., __ewram_overlay_end);
	} >ewram

	. = __ewram_overlay_start;
	.ov2 ALIGN(4) (NOLOAD) : AT (__ewram_overlay_start)
	{
		*(.ewram_overlay_2)
		. = ALIGN(4);
		__ewram_overlay_end = MAX(., __ewram_overlay_end);
	} >ewram

	__ewram_lma = __ewram_overlay_start + (__ewram_overlay_end - __ewram_overlay_start);

	.data ALIGN(4) (NOLOAD) : AT (__ewram_lma)
	{
		*(.data)
		*(.data.*)
		. = ALIGN(4);
		__ewram_end = ABSOLUTE(.);
	} >ewram

	/* IWRAM */
	. = __iwram_start;

	.bss ALIGN(4) (NOLOAD) :
	{
		__bss_start = ABSOLUTE(.);
		__bss_start__ = ABSOLUTE(.);
		*(.bss*)
		*(COMMON)
		. = ALIGN(4);
		__bss_end__ = ABSOLUTE(.);
		__end__ = ABSOLUTE(.);
	} >iwram

	.iwram_code ALIGN(4) :
	{
		. = ALIGN(4);
		*(.iwram_code)
		. = ALIGN(4);
	} >iwram AT>rom

	__iwram_code_lma     = LOADADDR(.iwram_code);
	__iwram_code_lma_end = LOADADDR(.iwram_code) + SIZEOF(.iwram_code);
	__iwram_code_vma     = ADDR(.iwram_code);
}
