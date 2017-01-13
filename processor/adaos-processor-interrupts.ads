--
--  @filename ados-processor-interrupts.ads
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:09:08 2001
--  @brief Hardware interrupt interface
--

package Adaos.Processor.Interrupts is

   type Interrupt_Handler_Access is access procedure;
   subtype Interrupt_Id is Integer range 0 .. 255;

   procedure Disable_Interrupts;
   pragma Inline (Disable_Interrupts);

   procedure Enable_Interrupts;
   pragma Inline (Enable_Interrupts);

   procedure Interrupt_Handler (
         Interrupt : in     Integer);
   pragma Export (Asm, Interrupt_Handler, "adaos_interrupt_handler");

   procedure Register (
         Interrupt : in     Interrupt_Id;
                       Handler   : in     Interrupt_Handler_Access);

   procedure Un_Register (
                          Interrupt : in     Interrupt_Id);

end Adaos.Processor.Interrupts;
