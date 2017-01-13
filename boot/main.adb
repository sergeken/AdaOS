--
--  @filename main.adb
--  @author Serge Robyns (c) 2000-2003
--  @brief AdaOS demo boot code
--

with Adaos.Multiboot;
use Adaos.Multiboot;
with Adaos.Processor.Boot;
with Adaos.Processor.Interrupts;
with Adaos.Device.Console;
with Adaos.Device.Keyboard;

--  with Demo;

procedure Main is
   Multiboot_Arguments : Multiboot_Info;
   pragma Import (C, Multiboot_Arguments, "multiboot_arguments");

   package Console renames Adaos.Device.Console;

begin
   Console.Put ("Welcome To AdaOS (PC/IA-32) V 2003-08-25#11");
   Console.New_Line;
   Console.New_Line;
   Console.New_Line;
   Console.Put ("I wish you all a Mery Christmas and");
   Console.New_Line;
   Console.Put ("  Happy new Millenium !!!");
   Console.New_Line;
   Console.New_Line;
   Console.New_Line;
   Console.Put ("Serge Robyns");
   Console.New_Line;
   Console.Put ("December 23, 2000");
   Console.New_Line;
   Console.New_Line;

   Console.Put ("Let's kick some butt ... ");
   Console.New_Line;
   Adaos.Processor.Boot.Setup_CPU;
   Adaos.Device.Keyboard.Setup;
   Adaos.Processor.Interrupts.Enable_Interrupts;

   --  Demo.Demo;

   --  Ooops, back to our caller
end Main;
