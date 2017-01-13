--
--  @filename adaos-device-pic.adb
--  @author Serge Robyns (c) 2000-2003
--  @brief  Basic PIC driver
--

with Interfaces;
use Interfaces;

with Adaos.Processor.Io;
use Adaos.Processor.Io;
with Adaos.Processor.Interrupts;

package body Adaos.Device.PIC is

   Master_Icw : constant Unsigned_16 := 16#20#;
   Master_Ocw : constant Unsigned_16 := 16#21#;
   Slave_Icw  : constant Unsigned_16 := 16#A0#;
   Slave_Ocw  : constant Unsigned_16 := 16#A1#;

   procedure Acknowledge (
         Irq : in     Interrupt_Id) is
   begin
      Disable (Irq);
      if Irq < 8 then
         Outb (Master_Icw, Unsigned_8 (16#60# + Irq));
      else
         Outb (Slave_Icw, Unsigned_8 (16#60# + Irq)); -- TO BE CHECKED !!!
         Outb (Master_Icw, 16#62#); -- 0x60 + 2
      end if;
      Enable (Irq);
   end Acknowledge;

   procedure Disable (
         Irq : in     Interrupt_Id) is
      Work : Unsigned_8;
   begin
      --  Adaos.Processor.Interrupts.Disable_Interrupts;
      if Irq < 8 then
         Work := Inb (Master_Ocw);
         Work := Work or Shift_Left (1, Natural (Irq));
         Outb (Master_Ocw, Work);
      else
         Work := Inb (Master_Ocw);
         Work := Work or Shift_Left (1, 2);
         Outb (Master_Ocw, Work);
         Work := Inb (Slave_Ocw);
         Work := Work or Shift_Left (1, Natural (Irq - 8));
         Outb (Slave_Ocw, Work);
      end if;
      --  Adaos.Processor.Interrupts.Enable_Interrupts;
   end Disable;

   procedure Enable (
         Irq : in     Interrupt_Id) is
      Work : Unsigned_8;
   begin
      --  Adaos.Processor.Interrupts.Disable_Interrupts;
      if Irq < 8 then
         Work := Inb (Master_Ocw);
         Work := Work and not Shift_Left (1, Natural (Irq));
         Outb (Master_Ocw, Work);
      else
         Work := Inb (Master_Ocw);
         Work := Work and not Shift_Left (1, 2);
         Outb (Master_Ocw, Work);
         Work := Inb (Slave_Ocw);
         Work := Work and not Shift_Left (1, Natural (Irq - 8));
         Outb (Slave_Ocw, Work);
      end if;
      --  Adaos.Processor.Interrupts.Enable_Interrupts;
   end Enable;

   procedure Register (
         Irq     : in     Interrupt_Id;
         Handler : in     Adaos.Processor.Interrupts.Interrupt_Handler_Access) is
   begin
      Adaos.Processor.Interrupts.Register (16#20#+Integer (Irq), Handler);
   end Register;

begin
   Outb (Master_Ocw, 16#FF#);
   Outb (Slave_Ocw, 16#FF#);

   Outb (Master_Icw, 16#11#);
   Outb (Master_Ocw, 16#20#);
   Outb (Master_Ocw, 16#04#);
   --      Outb (Master_OCW, 16#03#); -- Auto EOI
   Outb (Master_Ocw, 16#01#);

   Outb (Slave_Icw, 16#11#);
   Outb (Slave_Ocw, 16#20# + 8);
   Outb (Slave_Ocw, 16#02#);
   Outb (Slave_Ocw, 16#01#);

end Adaos.Device.PIC;
