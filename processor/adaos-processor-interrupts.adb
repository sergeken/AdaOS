--
--  @ilename adaos-processor-interrupts.adb
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:09:49 2001
--  @brief Interrupt interface
--

with System.Machine_Code;
use System.Machine_Code;

with Adaos.Device.Console;

package body Adaos.Processor.Interrupts is

   Interrupt_Handlers : array (Interrupt_Id) of Interrupt_Handler_Access := (others => null);

   procedure Disable_Interrupts is
   begin
      Asm ("cli;", No_Output_Operands, No_Input_Operands);
   end Disable_Interrupts;

   procedure Enable_Interrupts is
   begin
      Asm ("sti;", No_Output_Operands, No_Input_Operands);
   end Enable_Interrupts;

   procedure Interrupt_Handler (
         Interrupt : in     Integer) is
   begin
      Asm ("hlt",
           No_Output_Operands,
           No_Input_Operands);
      if Interrupt_Handlers (Interrupt) /= null then
         Interrupt_Handlers (Interrupt).all;
      else
         Adaos.Device.Console.Put ("Unhandled Exception ");
         Adaos.Device.Console.Put (Interrupt);
         Adaos.Device.Console.New_Line;
      end if;
   end Interrupt_Handler;

   procedure Register (
         Interrupt : in     Interrupt_Id;
         Handler   : in     Interrupt_Handler_Access) is
   begin
      Interrupt_Handlers (Interrupt) := Handler;
   end Register;

   procedure Un_Register (
         Interrupt : in     Interrupt_Id) is
   begin
      Interrupt_Handlers (Interrupt) := null;
   end Un_Register;

end Adaos.Processor.Interrupts;
