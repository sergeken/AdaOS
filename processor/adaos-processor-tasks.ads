--
--  @filename ados-processor-tasks.ads
--  @author Serge Robyns (c) 2003
--  @date Created on Tue Jul 24 2003
--  @brief Tasks interface
--

package Adaos.Processor.Tasks is

   subtype Task_Id is Integer range 0 .. 255;
   type Stack_Type is array (1 .. 1024) of Integer;
   type Task_Handler is access procedure;
   type Stack_Handler is access all Stack_Type;

   procedure Idle;

   function Register (
         Handler : in     Task_Handler;
         Stack   : in     Stack_Handler)
                      return Task_Id;

   procedure Setup (
                   TSS_Descriptor_1 : in     X86_Descriptor_Pointer;
                   TSS_Descriptor_2 : in     X86_Descriptor_Pointer);

   procedure Switch;

   procedure Un_Register (
                          The_Task_Id : in     Task_Id);

private
   procedure Load_TR (
                      TSS : in     TSS_Pointer);
   procedure Swap_TSS (
                       TSS : in     TSS_Pointer);

end Adaos.Processor.Tasks;
