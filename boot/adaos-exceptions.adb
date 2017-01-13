--
--  @filename adaos-exceptions.ads
--  @author   Serge Robyns (c) 2003
--  @brief    Parent Package for AdaOS
--

with Adaos.Device.Console;

package body Adaos.Exceptions is

   package Console renames Adaos.Device.Console;

   procedure Raise_Constraint_Error is
   begin
      Console.New_Line;
      Console.Put ("Constraint Error");
      Console.New_Line;
      while True loop
         null;
      end loop;
   end Raise_Constraint_Error;

   procedure Raise_Program_Error is
   begin
      Console.New_Line;
      Console.Put ("Program Error");
      Console.New_Line;
      while True loop
         null;
      end loop;
   end Raise_Program_Error;

   procedure Raise_Storage_Error is
   begin
      Console.New_Line;
      Console.Put ("Storage Error");
      Console.New_Line;
   end Raise_Storage_Error;

end Adaos.Exceptions;
