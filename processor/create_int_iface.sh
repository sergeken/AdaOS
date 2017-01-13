count=0
while [[ $count -lt 256 ]]
do
	echo "	.globl	interrupt_handler_$count"
	echo "interrupt_handler_$count:"
	echo "	hlt"
	echo "	cld"
	echo "	pushl %edx"
	echo "	pushl %ecx"
	echo "	pushl %ebx"
	echo "	pushl %eax"
	echo "	pushl \$$count"
	echo "	call adaos_interrupt_handler"
	echo "	popl	%eax"
	echo "	popl	%eax"
	echo "	popl	%ebx"
	echo "	popl	%ecx"
	echo "	popl	%edx"
	echo "	iret"
	let count=$count+1
done > interrupts.s

echo "" > generated_interrupt_handlers.ads
echo "package Generated_Interrupt_Handlers is" >> generated_interrupt_handlers.ads
echo "   procedure Setup_IDT;" >> generated_interrupt_handlers.ads
#echo "   The_IDT_Descriptor_Table : IDT_Descriptor_Table;" >> generated_interrupt_handlers.ads
#echo "   pragma Export (Asm, The_IDT_Descriptor_Table, \"the_idt_descriptor_table\");" >> generated_interrupt_handlers.ads
echo "end Generated_Interrupt_Handlers;" >> generated_interrupt_handlers.ads

echo "" > generated_interrupt_handlers.adb
echo "with AdaOS.Processor; use AdaOS.Processor;" >> generated_interrupt_handlers.adb
echo "with AdaOS.Processor.Boot; use AdaOS.Processor.Boot;" >> generated_interrupt_handlers.adb
echo "with Interfaces; use Interfaces;" >> generated_interrupt_handlers.adb
echo "with Ada.Unchecked_Conversion;" >> generated_interrupt_handlers.adb
echo "" >> generated_interrupt_handlers.adb
echo "" >> generated_interrupt_handlers.adb
echo "package body Generated_Interrupt_Handlers is" >> generated_interrupt_handlers.adb
echo "   procedure Setup_IDT is" >> generated_interrupt_handlers.adb
echo "      type Asm_Procedure_Pointer is access procedure;" >> generated_interrupt_handlers.adb
echo "      pragma Convention (Asm, Asm_Procedure_Pointer);" >> generated_interrupt_handlers.adb
echo "      function To_Unsigned_32 is new" >> generated_interrupt_handlers.adb
echo "        Ada.Unchecked_Conversion (Asm_Procedure_Pointer, Unsigned_32);" >> generated_interrupt_handlers.adb
echo "" >> generated_interrupt_handlers.adb
echo "      Work_IDT_Descriptor : X86_Gate;" >> generated_interrupt_handlers.adb
echo "      Work_Address : Unsigned_32;" >> generated_interrupt_handlers.adb

count=0
while [[ $count -lt 256 ]]
do
	echo "      procedure Interrupt_Handler_$count;"
	echo "      pragma Import (Asm, Interrupt_Handler_$count, \"interrupt_handler_$count\");"
	let count=$count+1
done >> generated_interrupt_handlers.adb

echo "   begin" >> generated_interrupt_handlers.adb
echo "      Work_IDT_Descriptor.Gate_Type := 2#01110#;" >> generated_interrupt_handlers.adb
echo "      Work_IDT_Descriptor.Priviledge_Level := 0;" >> generated_interrupt_handlers.adb
echo "      Work_IDT_Descriptor.Present := True;" >> generated_interrupt_handlers.adb
echo "      Work_IDT_Descriptor.Dummy := 0;" >> generated_interrupt_handlers.adb
echo "" >> generated_interrupt_handlers.adb

count=0
while [[ $count -lt 256 ]]
do
	echo "      Work_Address := To_Unsigned_32 (Interrupt_Handler_$count'Access);"
	echo "      Work_IDT_Descriptor.Selector := 16#0010#;"
	echo "      Work_IDT_Descriptor.Offset_Low :="
	echo "        Unsigned_16 (Work_Address and 16#FFFF#);"
	echo "      Work_IDT_Descriptor.Offset_High :="
	echo "        Unsigned_16 (Shift_Right (Work_Address, 16) and 16#FFFF#);"
	echo "      The_IDT_Descriptor_Table ($count) := Work_IDT_Descriptor;"
	echo ""
	let count=$count+1
done >> generated_interrupt_handlers.adb
echo "   end Setup_IDT;" >> generated_interrupt_handlers.adb
echo "end Generated_Interrupt_Handlers;" >> generated_interrupt_handlers.adb

