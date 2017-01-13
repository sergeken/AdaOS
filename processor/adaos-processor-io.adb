--
--  @filename adaos-processor.adb
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:32:27 2001
--  @brief Hardware (Processor) Interface
--

with System.Machine_Code;
use System.Machine_Code;
with Interfaces;
use Interfaces;

package body Adaos.Processor.Io is

   function Inb (
         Port : in     Unsigned_16)
     return Unsigned_8 is
      Tmp : Unsigned_8;
   begin
      Asm ("inb %1,%0;",
         Unsigned_8'Asm_Output ("=a", Tmp),
         Unsigned_16'Asm_Input ("d", Port));
      return Tmp;
   end Inb;

   function Inb_P (
         Port : in     Unsigned_16)
     return Unsigned_8 is
      Tmp : Unsigned_8;
   begin
      Tmp := Inb (Port);
      Asm ("outb %0,%1",
         No_Output_Operands,
         (Unsigned_8'Asm_Input ("a", Tmp),
            Unsigned_16'Asm_Input ("d", 16#80#)));
      return Tmp;
   end Inb_P;

   procedure Outb (
         Port  : in     Unsigned_16;
         Value : in     Unsigned_8) is
   begin
      Asm ("outb %0,%1",
         No_Output_Operands,
         (Unsigned_8'Asm_Input ("a", Value),
            Unsigned_16'Asm_Input ("d", Port)));
   end Outb;

   procedure Outb_P (
         Port  : in     Unsigned_16;
         Value : in     Unsigned_8) is
   begin
      Outb (Port, Value);
      Asm ("outb %0,%1",
         No_Output_Operands,
         (Unsigned_8'Asm_Input ("a", Value),
            Unsigned_16'Asm_Input ("d", 16#80#)));
   end Outb_P;

end Adaos.Processor.Io;
