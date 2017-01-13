--
--  @filename adaos-exceptions.adb
--  @author   Serge Robyns (c) 2003
--  @brief    Parent Package for AdaOS
--

package Adaos.Exceptions is

   procedure Raise_Constraint_Error;
   pragma Export (Asm, Raise_Constraint_Error, "__gnat_raise_constraint_error");

   procedure Raise_Program_Error;
   pragma Export (Asm, Raise_Program_Error, "__gnat_raise_program_error");

   procedure Raise_Storage_Error;
   pragma Export (Asm, Raise_Storage_Error, "__gnat_raise_storage_error");

end Adaos.Exceptions;
