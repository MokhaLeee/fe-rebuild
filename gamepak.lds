MEMORY
{
	rom	:	ORIGIN = 0x08000000, LENGTH = 32M
	iwram   :	ORIGIN = 0x03000000, LENGTH = 32K
	ewram	:	ORIGIN = 0x02000000, LENGTH = 256K
}

__text_start	=	ORIGIN(rom);
__eheap_end	=	ORIGIN(ewram) + LENGTH(ewram);
__iwram_start	=	ORIGIN(iwram);
__iwram_top	=	ORIGIN(iwram) + LENGTH(iwram);;
__sp_irq	=	__iwram_top - 0x060;
__sp_usr	=	__sp_irq - 0x0a0;
__irq_flags	=	0x03007ff8;

SECTIONS
{
	. = __text_start;
	.crt0 :
	{
		KEEP (*(.crt0*))
		. = ALIGN(4);
	} >rom =0xff

	.text  :
	{
		*(.text)
		*(.text.*)
		. = ALIGN(4);
	} >rom = 0xff

	__text_end = .;

	.rodata :
	{
		*(.rodata)
		*(.rodata.*)
		. = ALIGN(4);
	} >rom = 0xff

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

	__ewram_start = ORIGIN(ewram);
	.ewram __ewram_start :
	{
		*(.data)
		*(.data.*)
		. = ALIGN(4);
		__ewram_end = ABSOLUTE(.);
	} >ewram = 0xff
}
