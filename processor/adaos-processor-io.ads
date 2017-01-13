--
--  @filename adaos-processor.ads
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:16:33 2001
--  @brief Hardware (Processor) Interface
--

with Interfaces;
use Interfaces;

package Adaos.Processor.Io is

   pragma Preelaborate;

   function Inb (
         Port : in     Unsigned_16)
     return Unsigned_8;
   pragma Inline (Inb);

   function Inb_P (
         Port : in     Unsigned_16)
     return Unsigned_8;
   pragma Inline (Inb_P);

   procedure Outb (
         Port  : in     Unsigned_16;
         Value : in     Unsigned_8);
   pragma Inline (Outb);

   procedure Outb_P (
         Port  : in     Unsigned_16;
         Value : in     Unsigned_8);
   pragma Inline (Outb_P);

end Adaos.Processor.Io;
