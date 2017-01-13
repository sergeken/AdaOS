--
--  @filename adaos-device-pic.ads
--  @author Serge Robyns (c) 2000-2003
--  @brief  Basic PIC driver
--

with Adaos.Processor.Interrupts;

package Adaos.Device.PIC is

   type Interrupt_Id is new Integer;

   procedure Acknowledge (
         Irq : in     Interrupt_Id);

   procedure Enable (
         Irq : in     Interrupt_Id);
   procedure Disable (
         Irq : in     Interrupt_Id);
   procedure Register (
         Irq     : in     Interrupt_Id;
         Handler : in     Adaos.Processor.Interrupts.Interrupt_Handler_Access);

   PIT_IRQ      : constant Interrupt_Id := 0;
   Keyboard_IRQ : constant Interrupt_Id := 1;

end Adaos.Device.PIC;
