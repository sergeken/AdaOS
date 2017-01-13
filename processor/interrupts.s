	.globl	interrupt_handler_0
interrupt_handler_0:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $0
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_1
interrupt_handler_1:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $1
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_2
interrupt_handler_2:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $2
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_3
interrupt_handler_3:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $3
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_4
interrupt_handler_4:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $4
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_5
interrupt_handler_5:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $5
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_6
interrupt_handler_6:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $6
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_7
interrupt_handler_7:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $7
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_8
interrupt_handler_8:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $8
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_9
interrupt_handler_9:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $9
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_10
interrupt_handler_10:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $10
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_11
interrupt_handler_11:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $11
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_12
interrupt_handler_12:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $12
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_13
interrupt_handler_13:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $13
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_14
interrupt_handler_14:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $14
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_15
interrupt_handler_15:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $15
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_16
interrupt_handler_16:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $16
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_17
interrupt_handler_17:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $17
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_18
interrupt_handler_18:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $18
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_19
interrupt_handler_19:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $19
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_20
interrupt_handler_20:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $20
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_21
interrupt_handler_21:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $21
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_22
interrupt_handler_22:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $22
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_23
interrupt_handler_23:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $23
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_24
interrupt_handler_24:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $24
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_25
interrupt_handler_25:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $25
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_26
interrupt_handler_26:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $26
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_27
interrupt_handler_27:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $27
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_28
interrupt_handler_28:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $28
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_29
interrupt_handler_29:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $29
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_30
interrupt_handler_30:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $30
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_31
interrupt_handler_31:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $31
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_32
interrupt_handler_32:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $32
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_33
interrupt_handler_33:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $33
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_34
interrupt_handler_34:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $34
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_35
interrupt_handler_35:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $35
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_36
interrupt_handler_36:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $36
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_37
interrupt_handler_37:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $37
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_38
interrupt_handler_38:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $38
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_39
interrupt_handler_39:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $39
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_40
interrupt_handler_40:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $40
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_41
interrupt_handler_41:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $41
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_42
interrupt_handler_42:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $42
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_43
interrupt_handler_43:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $43
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_44
interrupt_handler_44:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $44
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_45
interrupt_handler_45:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $45
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_46
interrupt_handler_46:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $46
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_47
interrupt_handler_47:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $47
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_48
interrupt_handler_48:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $48
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_49
interrupt_handler_49:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $49
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_50
interrupt_handler_50:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $50
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_51
interrupt_handler_51:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $51
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_52
interrupt_handler_52:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $52
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_53
interrupt_handler_53:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $53
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_54
interrupt_handler_54:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $54
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_55
interrupt_handler_55:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $55
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_56
interrupt_handler_56:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $56
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_57
interrupt_handler_57:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $57
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_58
interrupt_handler_58:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $58
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_59
interrupt_handler_59:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $59
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_60
interrupt_handler_60:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $60
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_61
interrupt_handler_61:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $61
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_62
interrupt_handler_62:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $62
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_63
interrupt_handler_63:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $63
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_64
interrupt_handler_64:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $64
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_65
interrupt_handler_65:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $65
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_66
interrupt_handler_66:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $66
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_67
interrupt_handler_67:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $67
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_68
interrupt_handler_68:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $68
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_69
interrupt_handler_69:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $69
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_70
interrupt_handler_70:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $70
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_71
interrupt_handler_71:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $71
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_72
interrupt_handler_72:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $72
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_73
interrupt_handler_73:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $73
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_74
interrupt_handler_74:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $74
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_75
interrupt_handler_75:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $75
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_76
interrupt_handler_76:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $76
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_77
interrupt_handler_77:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $77
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_78
interrupt_handler_78:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $78
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_79
interrupt_handler_79:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $79
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_80
interrupt_handler_80:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $80
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_81
interrupt_handler_81:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $81
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_82
interrupt_handler_82:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $82
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_83
interrupt_handler_83:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $83
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_84
interrupt_handler_84:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $84
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_85
interrupt_handler_85:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $85
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_86
interrupt_handler_86:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $86
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_87
interrupt_handler_87:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $87
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_88
interrupt_handler_88:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $88
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_89
interrupt_handler_89:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $89
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_90
interrupt_handler_90:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $90
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_91
interrupt_handler_91:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $91
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_92
interrupt_handler_92:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $92
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_93
interrupt_handler_93:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $93
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_94
interrupt_handler_94:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $94
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_95
interrupt_handler_95:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $95
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_96
interrupt_handler_96:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $96
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_97
interrupt_handler_97:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $97
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_98
interrupt_handler_98:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $98
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_99
interrupt_handler_99:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $99
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_100
interrupt_handler_100:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $100
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_101
interrupt_handler_101:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $101
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_102
interrupt_handler_102:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $102
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_103
interrupt_handler_103:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $103
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_104
interrupt_handler_104:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $104
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_105
interrupt_handler_105:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $105
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_106
interrupt_handler_106:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $106
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_107
interrupt_handler_107:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $107
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_108
interrupt_handler_108:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $108
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_109
interrupt_handler_109:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $109
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_110
interrupt_handler_110:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $110
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_111
interrupt_handler_111:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $111
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_112
interrupt_handler_112:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $112
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_113
interrupt_handler_113:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $113
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_114
interrupt_handler_114:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $114
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_115
interrupt_handler_115:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $115
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_116
interrupt_handler_116:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $116
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_117
interrupt_handler_117:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $117
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_118
interrupt_handler_118:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $118
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_119
interrupt_handler_119:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $119
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_120
interrupt_handler_120:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $120
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_121
interrupt_handler_121:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $121
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_122
interrupt_handler_122:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $122
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_123
interrupt_handler_123:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $123
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_124
interrupt_handler_124:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $124
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_125
interrupt_handler_125:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $125
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_126
interrupt_handler_126:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $126
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_127
interrupt_handler_127:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $127
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_128
interrupt_handler_128:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $128
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_129
interrupt_handler_129:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $129
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_130
interrupt_handler_130:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $130
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_131
interrupt_handler_131:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $131
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_132
interrupt_handler_132:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $132
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_133
interrupt_handler_133:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $133
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_134
interrupt_handler_134:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $134
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_135
interrupt_handler_135:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $135
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_136
interrupt_handler_136:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $136
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_137
interrupt_handler_137:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $137
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_138
interrupt_handler_138:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $138
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_139
interrupt_handler_139:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $139
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_140
interrupt_handler_140:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $140
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_141
interrupt_handler_141:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $141
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_142
interrupt_handler_142:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $142
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_143
interrupt_handler_143:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $143
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_144
interrupt_handler_144:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $144
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_145
interrupt_handler_145:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $145
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_146
interrupt_handler_146:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $146
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_147
interrupt_handler_147:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $147
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_148
interrupt_handler_148:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $148
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_149
interrupt_handler_149:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $149
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_150
interrupt_handler_150:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $150
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_151
interrupt_handler_151:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $151
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_152
interrupt_handler_152:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $152
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_153
interrupt_handler_153:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $153
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_154
interrupt_handler_154:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $154
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_155
interrupt_handler_155:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $155
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_156
interrupt_handler_156:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $156
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_157
interrupt_handler_157:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $157
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_158
interrupt_handler_158:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $158
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_159
interrupt_handler_159:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $159
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_160
interrupt_handler_160:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $160
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_161
interrupt_handler_161:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $161
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_162
interrupt_handler_162:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $162
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_163
interrupt_handler_163:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $163
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_164
interrupt_handler_164:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $164
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_165
interrupt_handler_165:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $165
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_166
interrupt_handler_166:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $166
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_167
interrupt_handler_167:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $167
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_168
interrupt_handler_168:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $168
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_169
interrupt_handler_169:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $169
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_170
interrupt_handler_170:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $170
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_171
interrupt_handler_171:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $171
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_172
interrupt_handler_172:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $172
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_173
interrupt_handler_173:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $173
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_174
interrupt_handler_174:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $174
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_175
interrupt_handler_175:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $175
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_176
interrupt_handler_176:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $176
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_177
interrupt_handler_177:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $177
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_178
interrupt_handler_178:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $178
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_179
interrupt_handler_179:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $179
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_180
interrupt_handler_180:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $180
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_181
interrupt_handler_181:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $181
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_182
interrupt_handler_182:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $182
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_183
interrupt_handler_183:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $183
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_184
interrupt_handler_184:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $184
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_185
interrupt_handler_185:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $185
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_186
interrupt_handler_186:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $186
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_187
interrupt_handler_187:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $187
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_188
interrupt_handler_188:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $188
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_189
interrupt_handler_189:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $189
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_190
interrupt_handler_190:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $190
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_191
interrupt_handler_191:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $191
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_192
interrupt_handler_192:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $192
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_193
interrupt_handler_193:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $193
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_194
interrupt_handler_194:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $194
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_195
interrupt_handler_195:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $195
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_196
interrupt_handler_196:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $196
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_197
interrupt_handler_197:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $197
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_198
interrupt_handler_198:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $198
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_199
interrupt_handler_199:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $199
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_200
interrupt_handler_200:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $200
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_201
interrupt_handler_201:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $201
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_202
interrupt_handler_202:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $202
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_203
interrupt_handler_203:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $203
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_204
interrupt_handler_204:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $204
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_205
interrupt_handler_205:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $205
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_206
interrupt_handler_206:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $206
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_207
interrupt_handler_207:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $207
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_208
interrupt_handler_208:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $208
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_209
interrupt_handler_209:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $209
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_210
interrupt_handler_210:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $210
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_211
interrupt_handler_211:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $211
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_212
interrupt_handler_212:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $212
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_213
interrupt_handler_213:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $213
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_214
interrupt_handler_214:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $214
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_215
interrupt_handler_215:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $215
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_216
interrupt_handler_216:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $216
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_217
interrupt_handler_217:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $217
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_218
interrupt_handler_218:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $218
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_219
interrupt_handler_219:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $219
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_220
interrupt_handler_220:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $220
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_221
interrupt_handler_221:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $221
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_222
interrupt_handler_222:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $222
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_223
interrupt_handler_223:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $223
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_224
interrupt_handler_224:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $224
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_225
interrupt_handler_225:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $225
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_226
interrupt_handler_226:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $226
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_227
interrupt_handler_227:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $227
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_228
interrupt_handler_228:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $228
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_229
interrupt_handler_229:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $229
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_230
interrupt_handler_230:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $230
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_231
interrupt_handler_231:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $231
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_232
interrupt_handler_232:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $232
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_233
interrupt_handler_233:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $233
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_234
interrupt_handler_234:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $234
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_235
interrupt_handler_235:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $235
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_236
interrupt_handler_236:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $236
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_237
interrupt_handler_237:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $237
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_238
interrupt_handler_238:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $238
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_239
interrupt_handler_239:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $239
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_240
interrupt_handler_240:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $240
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_241
interrupt_handler_241:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $241
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_242
interrupt_handler_242:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $242
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_243
interrupt_handler_243:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $243
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_244
interrupt_handler_244:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $244
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_245
interrupt_handler_245:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $245
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_246
interrupt_handler_246:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $246
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_247
interrupt_handler_247:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $247
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_248
interrupt_handler_248:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $248
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_249
interrupt_handler_249:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $249
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_250
interrupt_handler_250:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $250
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_251
interrupt_handler_251:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $251
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_252
interrupt_handler_252:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $252
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_253
interrupt_handler_253:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $253
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_254
interrupt_handler_254:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $254
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
	.globl	interrupt_handler_255
interrupt_handler_255:
	hlt
	cld
	pushl %edx
	pushl %ecx
	pushl %ebx
	pushl %eax
	pushl $255
	call adaos_interrupt_handler
	popl	%eax
	popl	%eax
	popl	%ebx
	popl	%ecx
	popl	%edx
	iret
