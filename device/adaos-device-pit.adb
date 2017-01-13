--
--  @filename adaos-device-pit.adb
--  @author Serge Robyns (c) 2000-2003
--  @brief  Basic PIT driver
--

with Interfaces;
use Interfaces;

with Adaos.Device.PIC;
with Adaos.Processor.Io;
use Adaos.Processor.Io;
with Adaos.Processor.Tasks;

package body Adaos.Device.PIT is

   package PIC renames Adaos.Device.PIC;

   PIT_Port_B : constant Unsigned_16 := 16#40#;
   Latch      : constant Unsigned_16 := Unsigned_16 ((1_193_180 + 100 / 2) / 100);

   procedure Handler is
   begin
      Adaos.Processor.Tasks.Switch;
      PIC.Acknowledge (PIC.PIT_IRQ);
   end Handler;

   procedure Setup is
   begin
      PIC.Register (PIC.PIT_IRQ, Handler'Access);
      Outb (16#43#, 16#34#);
      Outb (PIT_Port_B, Unsigned_8 (Latch and 16#FF#));
      Outb (PIT_Port_B, Unsigned_8 (Shift_Right (Latch, 8)));
      PIC.Enable (PIC.PIT_IRQ);
   end Setup;

end Adaos.Device.PIT;
