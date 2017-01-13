	/* This source is free to use, most of it has been created by reading
	   file multiboot.S from the Flux OSKit.
	*/

	.globl	_start
	.text

	/* MultiBoot header */
	.p2align	2
boot_hdr:
	.long	0x1BADB002		/* magic */
	.long	0x00000000		/* feature flags */
	.long	0-0x1BADB002-0x00000000	/* checksum */

_start:
	/* Check if were called from a multiboot compliant
	   loader.  If not, just loop without any message as
	   we don't know in what state we are.
	*/
	cmpl	$0x2BADB002,%eax
	jne	_start

	movl	%ebx,(multiboot_arguments)	/* Save multiboot info */
	lea	_base_stack_end,%esp	/* Load up stack */
	/* Clear flags, but set the RF flag to disable debug exceptions */
/*	pushl	$0x00010000 */
	pushl	$0
	popf

	/* Jump into Ada code.  */
	/* call	main */
	pushl	$0
	pushl	$0
	pushl	$0
	call	main
	pop	%eax
	pop	%eax
	pop	%eax

end_of_life_loop:
	/* wait */
	hlt
	jmp	end_of_life_loop

	/* Catch some Gnat Runtime calls */

/* .globl __gnat_raise_constraint_error
.globl __gnat_raise_storage_error
__gnat_raise_storage_error:
__gnat_raise_constraint_error:
	jmp	__gnat_raise_constraint_error */

	/*
	 * Create and align an initial data segment.
	 */
	.data
	.globl	multiboot_arguments
multiboot_arguments:
	.word

	.p2align	12
_base_stack_start:
	.space	1024
_base_stack_end:
	.globl	_start_of_data
_start_of_data:	
	.long	0		
