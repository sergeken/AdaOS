pragma Source_File_Name (ada_main, Spec_File_Name => "b~main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~main.adb");

package body ada_main is
   procedure adainit is
      E006 : Boolean; pragma Import (Ada, E006, "adaos__device__console_E");
      E014 : Boolean; pragma Import (Ada, E014, "adaos__device__keyboard_E");
      E026 : Boolean; pragma Import (Ada, E026, "adaos__processor__boot_E");
      E020 : Boolean; pragma Import (Ada, E020, "adaos__processor__interrupts_E");
      E016 : Boolean; pragma Import (Ada, E016, "adaos__device__pic_E");
      E028 : Boolean; pragma Import (Ada, E028, "generated_interrupt_handlers_E");
      E002 : Boolean; pragma Import (Ada, E002, "main_E");

   begin
      null;
      if not E006 then
         Adaos.Device.Console'Elab_Body;
         E006 := True;
      end if;
      if not E020 then
         Adaos.Processor.Interrupts'Elab_Body;
         E020 := True;
      end if;
      if not E016 then
         Adaos.Device.Pic'Elab_Body;
         E016 := True;
      end if;
      if not E014 then
         Adaos.Device.Keyboard'Elab_Body;
         E014 := True;
      end if;
      E028 := True;
      E026 := True;
      E002 := True;
   end adainit;

   procedure Break_Start is
   begin
      null;
   end;

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is

      procedure Ada_Main_Program;
      pragma Import (Ada, Ada_Main_Program, "_ada_main");

      Ensure_Reference : System.Address := Ada_Main_Program_Name'Address;

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      adainit;
      Break_Start;
      Ada_Main_Program;
      return (gnat_exit_status);
   end;

-- BEGIN Object file/option list
   --   ./adaos.o
   --   device/adaos-device.o
   --   device/adaos-device-console.o
   --   boot/adaos-multiboot.o
   --   processor/adaos-processor.o
   --   processor/adaos-processor-interrupts.o
   --   processor/adaos-processor-io.o
   --   device/adaos-device-pic.o
   --   device/adaos-device-keyboard.o
   --   processor/generated_interrupt_handlers.o
   --   processor/adaos-processor-boot.o
   --   boot/main.o
-- END Object file/option list   

end ada_main;
