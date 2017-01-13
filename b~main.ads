pragma No_Run_Time;
with System;
package ada_main is

   gnat_argc : Integer;
   gnat_argv : System.Address;
   gnat_envp : System.Address;

   gnat_exit_status : Integer := 0;

   GNAT_Version : constant String :=
                    "GNAT Version: 3.15p  (20020523)";
   pragma Export (C, GNAT_Version, "__gnat_version");

   Ada_Main_Program_Name : constant String := "_ada_main" & Ascii.NUL;
   pragma Export (C, Ada_Main_Program_Name, "__gnat_ada_main_program_name");

   procedure adainit;
   pragma Export (C, adainit, "adainit");

   procedure Break_Start;
   pragma Export (C, Break_Start, "__gnat_break_start");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer;
   pragma Export (C, main, "main");

   type Version_32 is mod 2 ** 32;
   u00001 : constant Version_32 := 16#60b52858#;
   u00002 : constant Version_32 := 16#dac73a7a#;
   u00003 : constant Version_32 := 16#b2588aa6#;
   u00004 : constant Version_32 := 16#0c9254a9#;
   u00005 : constant Version_32 := 16#4bf7af1b#;
   u00006 : constant Version_32 := 16#1683f229#;
   u00007 : constant Version_32 := 16#a0108083#;
   u00008 : constant Version_32 := 16#060f352a#;
   u00009 : constant Version_32 := 16#a0be30a8#;
   u00010 : constant Version_32 := 16#6e13833c#;
   u00011 : constant Version_32 := 16#a4e49d90#;
   u00012 : constant Version_32 := 16#a8ad7391#;
   u00013 : constant Version_32 := 16#e2eb8764#;
   u00014 : constant Version_32 := 16#d0cde771#;
   u00015 : constant Version_32 := 16#2f2d0d97#;
   u00016 : constant Version_32 := 16#2a4136a2#;
   u00017 : constant Version_32 := 16#67f05fe8#;
   u00018 : constant Version_32 := 16#6e859da6#;
   u00019 : constant Version_32 := 16#f7351570#;
   u00020 : constant Version_32 := 16#8bf6f7ce#;
   u00021 : constant Version_32 := 16#9f9be1af#;
   u00022 : constant Version_32 := 16#acc36de5#;
   u00023 : constant Version_32 := 16#4eaf79c8#;
   u00024 : constant Version_32 := 16#0d021d03#;
   u00025 : constant Version_32 := 16#06e783e8#;
   u00026 : constant Version_32 := 16#c3d91988#;
   u00027 : constant Version_32 := 16#8b703848#;
   u00028 : constant Version_32 := 16#368b76b4#;

   pragma Export (C, u00001, "mainB");
   pragma Export (C, u00002, "mainS");
   pragma Export (C, u00003, "adaosS");
   pragma Export (C, u00004, "adaos__deviceS");
   pragma Export (C, u00005, "adaos__device__consoleB");
   pragma Export (C, u00006, "adaos__device__consoleS");
   pragma Export (C, u00007, "adaS");
   pragma Export (C, u00008, "ada__charactersS");
   pragma Export (C, u00009, "ada__characters__latin_1S");
   pragma Export (C, u00010, "systemS");
   pragma Export (C, u00011, "system__storage_elementsB");
   pragma Export (C, u00012, "system__storage_elementsS");
   pragma Export (C, u00013, "adaos__device__keyboardB");
   pragma Export (C, u00014, "adaos__device__keyboardS");
   pragma Export (C, u00015, "adaos__device__picB");
   pragma Export (C, u00016, "adaos__device__picS");
   pragma Export (C, u00017, "adaos__processorS");
   pragma Export (C, u00018, "interfacesS");
   pragma Export (C, u00019, "adaos__processor__interruptsB");
   pragma Export (C, u00020, "adaos__processor__interruptsS");
   pragma Export (C, u00021, "system__machine_codeS");
   pragma Export (C, u00022, "adaos__processor__ioB");
   pragma Export (C, u00023, "adaos__processor__ioS");
   pragma Export (C, u00024, "adaos__multibootS");
   pragma Export (C, u00025, "adaos__processor__bootB");
   pragma Export (C, u00026, "adaos__processor__bootS");
   pragma Export (C, u00027, "generated_interrupt_handlersB");
   pragma Export (C, u00028, "generated_interrupt_handlersS");

   -- BEGIN ELABORATION ORDER
   -- ada (spec)
   -- ada.characters (spec)
   -- ada.characters.latin_1 (spec)
   -- interfaces (spec)
   -- system (spec)
   -- system.machine_code (spec)
   -- system.storage_elements (spec)
   -- system.storage_elements (body)
   -- adaos (spec)
   -- adaos.device (spec)
   -- adaos.device.console (spec)
   -- adaos.device.console (body)
   -- adaos.device.keyboard (spec)
   -- adaos.multiboot (spec)
   -- adaos.processor (spec)
   -- adaos.processor.boot (spec)
   -- adaos.processor.interrupts (spec)
   -- adaos.processor.interrupts (body)
   -- adaos.device.pic (spec)
   -- adaos.processor.io (spec)
   -- adaos.processor.io (body)
   -- adaos.device.pic (body)
   -- adaos.device.keyboard (body)
   -- generated_interrupt_handlers (spec)
   -- generated_interrupt_handlers (body)
   -- adaos.processor.boot (body)
   -- main (spec)
   -- main (body)
   -- END ELABORATION ORDER

end ada_main;
