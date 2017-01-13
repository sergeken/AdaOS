--
--  @filename  adaos-processor.adb
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:32:27 2001
--  @brief Hardware (Processor) Interface
--

with System.Machine_Code;
use System.Machine_Code;

--  with Adaos.Processor.Tasks;
with Adaos.Device.Console;

with Generated_Interrupt_Handlers;

package body Adaos.Processor.Boot is

   package Console renames Adaos.Device.Console;

   GDT_Descriptor : Pseudo_Descriptor;
   pragma Export (Asm, GDT_Descriptor, "gdt_descriptor");
   IDT_Descriptor : Pseudo_Descriptor;
   pragma Export (Asm, IDT_Descriptor, "idt_descriptor");
   procedure Build_IDT_Table (IDT_Table : in System.Address);
   pragma Import (Asm, Build_IDT_Table, "build_idt_table");

   procedure Setup_CPU is
   begin
      Console.Put ("Setting up CPU ... ");

      --  Setup the Protected Mode environment
      --  And load the registers with the pseudo descriptors
      Setup_GDT;
      GDT_Descriptor.Limit := The_GDT_Descriptor_Table'Size - 1;
      GDT_Descriptor.Base := The_GDT_Descriptor_Table'Address;
      Console.Put ("Size ");
      Console.Put (Integer (GDT_Descriptor.Limit));
      Console.Put (" Base ");
      Console.Put (Integer (Address_To_U32 (GDT_Descriptor.Base)));
      Console.New_Line;

--       Asm ("lgdt %%eax",
--          No_Output_Operands,
--          Address'Asm_Input ("a", GDT_Descriptor'Address));
      Asm ("lgdt gdt_descriptor",
         No_Output_Operands,
         No_Input_Operands);
      Asm ("xorl %%eax,%%eax;" &
         "lldt %%ax",
         No_Output_Operands,
         No_Input_Operands);

      --  Jump into protected mode as described by Intel
      --  Currently all registers use the Data descriptor, even fs and gs
      Asm ("movl %%cr0,%%eax; " &
         "or $0x0001,%%eax; " &
         "movl %%eax,%%cr0; " &
         "ljmp $0x10,$1f; " &
         "1: ",
         No_Output_Operands,
         No_Input_Operands);
      Asm ("movl $0x18,%%eax; " &
         "movl %%eax,%%ds; " &
         "movl %%eax,%%es; " &
         "movl %%eax,%%fs; " &
         "movl %%eax,%%gs; " &
         "movl %%eax,%%ss; ",
         No_Output_Operands,
         No_Input_Operands);

      --  Setup the  Iterrupt Dispatch table
      --  This can only be done after PM is enabled (still have to find
      --  a proof for it).
      Generated_Interrupt_Handlers.Setup_IDT;
      --  Build_IDT_Table (The_IDT_Descriptor_Table'Address);
      IDT_Descriptor.Limit := The_IDT_Descriptor_Table'Size - 1;
      IDT_Descriptor.Base := The_IDT_Descriptor_Table'Address;
      Asm ("lidt idt_descriptor",
         No_Output_Operands,
         No_Input_Operands);

      -- Adaos.Processor.Tasks.Setup (The_GDT_Descriptor_Table (4)'Access,
         -- The_GDT_Descriptor_Table (5)'Access);

      Console.Put ("Done");
      Console.New_Line;
   end Setup_CPU;

   procedure Setup_GDT is
   begin
      The_GDT_Descriptor_Table := (others => (0,
            0,
            0, 0, False, 0, False,
            0, 0, False, False, 0));

      The_GDT_Descriptor_Table (2).Base_High := 0;
      The_GDT_Descriptor_Table (2).Base_Medium := 0;
      The_GDT_Descriptor_Table (2).Base_Low := 0;
      The_GDT_Descriptor_Table (2).Limit_High := 16#F#;
      The_GDT_Descriptor_Table (2).Limit_Low := 16#FFFF#;
      The_GDT_Descriptor_Table (2).Segment_Type := Execute_Read_Segment;
      The_GDT_Descriptor_Table (2).Priviledge_Level := 0;
      The_GDT_Descriptor_Table (2).Granularity := True;
      The_GDT_Descriptor_Table (2).Present := True;
      The_GDT_Descriptor_Table (2).Not_System_Segment := True;
      The_GDT_Descriptor_Table (2).Db := True;
      The_GDT_Descriptor_Table (2).Dummy := 0;

      The_GDT_Descriptor_Table (3).Base_High := 0;
      The_GDT_Descriptor_Table (3).Base_Medium := 0;
      The_GDT_Descriptor_Table (3).Base_Low := 0;
      The_GDT_Descriptor_Table (3).Limit_High := 16#F#;
      The_GDT_Descriptor_Table (3).Limit_Low := 16#FFFF#;
      The_GDT_Descriptor_Table (3).Segment_Type := Read_Write_Segment;
      The_GDT_Descriptor_Table (3).Priviledge_Level := 0;
      The_GDT_Descriptor_Table (3).Granularity := True;
      The_GDT_Descriptor_Table (3).Present := True;
      The_GDT_Descriptor_Table (3).Not_System_Segment := True;
      The_GDT_Descriptor_Table (3).Db := True;
      The_GDT_Descriptor_Table (3).Dummy := 0;

      The_GDT_Descriptor_Table (4).Base_High := 0;
      The_GDT_Descriptor_Table (4).Base_Medium := 0;
      The_GDT_Descriptor_Table (4).Base_Low := 0;
      The_GDT_Descriptor_Table (4).Limit_High := 16#F#;
      The_GDT_Descriptor_Table (4).Limit_Low := 16#FFFF#;
      The_GDT_Descriptor_Table (4).Segment_Type := TSS_32_Segment_Type;
      The_GDT_Descriptor_Table (4).Priviledge_Level := 0;
      The_GDT_Descriptor_Table (4).Granularity := True;
      The_GDT_Descriptor_Table (4).Present := True;
      The_GDT_Descriptor_Table (4).Not_System_Segment := False;
      The_GDT_Descriptor_Table (4).Db := True;
      The_GDT_Descriptor_Table (4).Dummy := 0;

      The_GDT_Descriptor_Table (5).Base_High := 0;
      The_GDT_Descriptor_Table (5).Base_Medium := 0;
      The_GDT_Descriptor_Table (5).Base_Low := 0;
      The_GDT_Descriptor_Table (5).Limit_High := 16#F#;
      The_GDT_Descriptor_Table (5).Limit_Low := 16#FFFF#;
      The_GDT_Descriptor_Table (5).Segment_Type := TSS_32_Segment_Type;
      The_GDT_Descriptor_Table (5).Priviledge_Level := 0;
      The_GDT_Descriptor_Table (5).Granularity := True;
      The_GDT_Descriptor_Table (5).Present := True;
      The_GDT_Descriptor_Table (5).Not_System_Segment := False;
      The_GDT_Descriptor_Table (5).Db := True;
      The_GDT_Descriptor_Table (5).Dummy := 0;

   end Setup_GDT;

end Adaos.Processor.Boot;
