--
--  @filename adaos-processor-tasks.adb
--  @author Serge Robyns (c) 2003
--  @date Created on Tue Jun 23 2003
--  @brief Task interface
--

with Unchecked_Conversion;
with System.Machine_Code;
use System.Machine_Code;
with Interfaces;
use Interfaces;
with Adaos.Device.PIT;
with Adaos.Device.Console;

package body Adaos.Processor.Tasks is

   Live_Tasks  : array (Task_Id) of Boolean                       := (others => False);
   Task_TSS       : array (Task_Id) of aliased Task_State_Segment;
   Current_TSS    : X86_Descriptor_Pointer                        := null;
   Next_TSS       : X86_Descriptor_Pointer                        := null;
   Current_Task   : Task_Id                                       := 0;
   Switch_Counter : Integer                                       := 0;
   TSS_Id         : Unsigned_16;
   Pending_Switch : Unsigned_32                                   := 0;
   pragma Export (Asm, Pending_Switch, "pending_switch");

   package Console renames Adaos.Device.Console;

   procedure Idle is
   begin
      Asm ("hlt",
           No_Output_Operands,
           No_Input_Operands);
   end Idle;

   function Stack_To_U32 is
      new Unchecked_Conversion (Source => Stack_Handler, Target => Unsigned_32);

   function Task_To_U32 is
      new Unchecked_Conversion (Source => Task_Handler, Target => Unsigned_32);

   procedure Load_TR (
         TSS : in     TSS_Pointer) is
      Work_Seg_Descr : Seg_Descr;
   begin
      Work_Seg_Descr := TSS_To_Seg_Descr (TSS);
      Current_TSS.Base_Low    := Work_Seg_Descr.Low;
      Current_TSS.Base_Medium := Work_Seg_Descr.Medium;
      Current_TSS.Base_High   := Work_Seg_Descr.High;
      TSS_Id := 16#20#;
      Asm ("ltr %%ax", No_Output_Operands,
           Unsigned_16'Asm_Input ("a", TSS_Id));
   end Load_TR;

   function Register (
         Handler : in     Task_Handler;
         Stack   : in     Stack_Handler)
     return Task_Id is
   begin
      Console.Put ("Register ");
      for The_Task_Id in Task_Id'First + 1 .. Task_Id'Last loop
         if not Live_Tasks (The_Task_Id) then
            Live_Tasks (The_Task_Id) := True;

            Task_TSS (The_Task_Id).EIP := Task_To_U32 (Handler);
            Task_TSS (The_Task_Id).ESP0 := Stack_To_U32 (Stack);
            Task_TSS (The_Task_Id).ESP :=  Task_TSS (The_Task_Id).ESP0 + 1023;

            Task_TSS (The_Task_Id).CS := 16#10#;
            Task_TSS (The_Task_Id).SS0 := 16#18#;
            Task_TSS (The_Task_Id).SS1 := 16#18#;
            Task_TSS (The_Task_Id).SS2 := 16#18#;
            Task_TSS (The_Task_Id).ES := 16#18#;
            Task_TSS (The_Task_Id).SS := 16#18#;
            Task_TSS (The_Task_Id).DS := 16#18#;
            Task_TSS (The_Task_Id).FS := 16#18#;
            Task_TSS (The_Task_Id).GS := 16#18#;
            Asm ("pushfl; popl %0",
                 EFLAGS_Type'Asm_Output ("=g", Task_TSS (The_Task_Id).EFLAGS),
                 No_Input_Operands);

            Swap_TSS (Task_TSS (The_Task_Id)'Access);
            Pending_Switch := 0;
            Task_TSS (Current_Task).Previous_Task := 0;
            Current_Task := The_Task_Id;
            if (TSS_Id = 16#20#) then
               Asm ("lcall $0x20,$0", No_Output_Operands, No_Input_Operands);
            else
               Asm ("lcall $0x28,$0", No_Output_Operands, No_Input_Operands);
            end if;

            return The_Task_Id;
         end if;
      end loop;
      Console.Put ("Failed to create Task");
      while True loop
         Idle;
      end loop;
      return 0;
   end Register;

   procedure Setup (
         TSS_Descriptor_1 : in     X86_Descriptor_Pointer;
         TSS_Descriptor_2 : in     X86_Descriptor_Pointer) is
   begin
   return;
      Current_TSS := TSS_Descriptor_1;
      Next_TSS := TSS_Descriptor_2;
      Load_TR (Task_TSS (0)'Access);
      Live_Tasks (Task_Id'First) := True;
      Adaos.Device.PIT.Setup;
   end Setup;

   procedure Swap_TSS (
         TSS : in     TSS_Pointer) is
      Temp_TSS       : X86_Descriptor_Pointer;
      Work_Seg_Descr : Seg_Descr;
   begin
      Console.Put ("Swap ");
      Work_Seg_Descr := TSS_To_Seg_Descr (TSS);
      Next_TSS.Base_Low    := Work_Seg_Descr.Low;
      Next_TSS.Base_Medium := Work_Seg_Descr.Medium;
      Next_TSS.Base_High   := Work_Seg_Descr.High;
      Temp_TSS := Current_TSS;
      Current_TSS := Next_TSS;
      Next_TSS := Temp_TSS;
      if (TSS_Id = 16#20#) then
         Console.Put ("20 -> 28 ");
         TSS_Id := 16#28#;
      else
         Console.Put ("28 -> 20 ");
         TSS_Id := 16#20#;
      end if;
      Console.Put (Integer (Next_TSS.Segment_Type));
      Console.Put (" Changing ");
      Console.Put (Integer (Task_TSS (Current_Task).Previous_Task));
      Console.Put (" To ");
      Console.Put (Integer (TSS_Id));
      Task_TSS (Current_Task).Previous_Task := TSS_Id;
      Pending_Switch := 1;
      Console.New_Line;
   end Swap_TSS;


   procedure Switch is
      procedure Do_Switch (
            The_Task_Id : in     Task_Id);
      procedure Do_Switch (
            The_Task_Id : in     Task_Id) is
      begin
         if Current_Task = The_Task_Id then
            return;
         end if;
         Console.Put ("Switch ");
         Console.Put (Current_Task);
         Console.Put (" to ");
         Console.Put (The_Task_Id);
         Console.Put (" EIP ");
         Console.Put (Integer (Task_TSS (The_Task_Id).EIP));
         Console.Put (" ESP ");
         Console.Put (Integer (Task_TSS (The_Task_Id).ESP));
         Console.New_Line;
         Swap_TSS (Task_TSS (The_Task_Id)'Access);
         Current_Task := The_Task_Id;
      end Do_Switch;

   begin
      if Switch_Counter < 10000 then
         Switch_Counter := Switch_Counter + 1;
         return;
      else
         Switch_Counter := 0;
      end if;
      for The_Task_Id in Current_Task + 1 .. Task_Id'Last loop
         if Live_Tasks (The_Task_Id) then
            Do_Switch (The_Task_Id);
            return;
         end if;
      end loop;
      for The_Task_Id in Task_Id'First .. Current_Task - 1 loop
         if Live_Tasks (The_Task_Id) then
            Do_Switch (The_Task_Id);
            return;
         end if;
      end loop;
   end Switch;

   procedure Un_Register (
         The_Task_Id : in     Task_Id) is
   begin
      Live_Tasks (The_Task_Id) := False;
   end Un_Register;

end Adaos.Processor.Tasks;
