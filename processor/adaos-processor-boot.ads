--
--  @filename adaos-processor.ads
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:16:33 2001
--  @brief Hardware (Processor) Interface
--

package Adaos.Processor.Boot is

   The_GDT_Descriptor_Table : aliased GDT_Descriptor_Table;
   --  for The_GDT_Descriptor_Table'Alignment use 4096;

   The_IDT_Descriptor_Table : aliased IDT_Descriptor_Table;
   --  for The_IDT_Descriptor_Table'Alignment use 4096;

   procedure Setup_CPU;

private
   procedure Setup_GDT;

end Adaos.Processor.Boot;
