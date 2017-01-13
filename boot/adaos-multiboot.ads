--
--  @filename adaos-multiboot.ads
--  @brief AdaOS demo boot code
--  @author Serge Robyns
--

with System;
use System;

package Adaos.Multiboot is

   type Multiboot_Boot_Device is array (0 .. 3) of Character;

   type Multiboot_Elf_Symbols is
      record
         Number   : Integer;
         Tab_Size : Integer;
         Str_Size : Integer;
         Addr     : Address;
      end record;

   type Multiboot_Info_Record is
      record
         Flags       : Character;
         Mem_Lower   : Integer;
         Mem_Upper   : Integer;
         Boot_Device : Multiboot_Boot_Device;
         Cmdline     : Address;
         Mods_Count  : Integer;
         Mods_Addr   : Address;
         Syms        : Multiboot_Elf_Symbols;
         Mmap_Count  : Integer;
         Mmap_Addr   : Address;
      end record;

   type Multiboot_Info is access Multiboot_Info_Record;

end Adaos.Multiboot;
