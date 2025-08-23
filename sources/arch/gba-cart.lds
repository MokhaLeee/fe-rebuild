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
		. = ALIGN(4);
	} >rom =0xff

	__text_cpy_start = .;
	.text.ewram ALIGN(4) :
	{
		*(.text.ewram)
		. = ALIGN(4);
	} >rom = 0xff

	__text_cpy_end = .;

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
		. = ALIGN(4);
	} >rom = 0xff

	. = __ewram_start;

	__ewram_overlay_start = ABSOLUTE(.);

	OVERLAY ALIGN(4) : NOCROSSREFS AT (__ewram_overlay_start)
	{
		.ewram_overlay_0 { *(.ewram_overlay_0) . = ALIGN(4); }
		.ewram_overlay_1 { *(.ewram_overlay_1) . = ALIGN(4); }
		.ewram_overlay_2 { *(.ewram_overlay_2) . = ALIGN(4); }
		.ewram_overlay_3 { *(.ewram_overlay_3) . = ALIGN(4); }
		.ewram_overlay_4 { *(.ewram_overlay_4) . = ALIGN(4); }
		.ewram_overlay_5 { *(.ewram_overlay_5) . = ALIGN(4); }
		.ewram_overlay_6 { *(.ewram_overlay_6) . = ALIGN(4); }
		.ewram_overlay_7 { *(.ewram_overlay_7) . = ALIGN(4); }
		.ewram_overlay_8 { *(.ewram_overlay_8) . = ALIGN(4); }
		.ewram_overlay_9 { *(.ewram_overlay_9) . = ALIGN(4); }
	} >ewram

	__ewram_overlay_end = ABSOLUTE(.);
	__ewram_lma = __ewram_overlay_start + (__ewram_overlay_end - __ewram_overlay_start);

	.data ALIGN(4) (NOLOAD) : AT (__ewram_lma)
	{
		*(.data)
		*(.data.*)
		. = ALIGN(4);
		__ewram_end = ABSOLUTE(.);
	} >ewram = 0xff

	. = __iwram_start;
	.bss ALIGN(4) (NOLOAD) :
	{
		__bss_start = ABSOLUTE(.);
		__bss_start__ = ABSOLUTE(.);
		*(.bss*)
		*(COMMON)
		. = ALIGN(4);
		__bss_end__ = ABSOLUTE(.);
	}
}
