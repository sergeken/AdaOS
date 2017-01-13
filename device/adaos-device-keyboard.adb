--
--  @filename adaos-device-keyboard.adb
--  @author Serge Robyns (c) 2000-2003
--  @brief Basic keyboard driver
--

with Interfaces;
use Interfaces;
with Ada.Characters.Latin_1;
use Ada.Characters.Latin_1;

with Adaos.Device.PIC;
with Adaos.Device.Console;
with Adaos.Processor.Io;
use Adaos.Processor.Io;

package body Adaos.Device.Keyboard is

   package PIC renames Adaos.Device.PIC;
   package Console renames Adaos.Device.Console;

   Buffer_Size : constant := 3;
   type Buffer_Range is range 0 .. Buffer_Size;
   type Buffer_Type is array (Buffer_Range) of Character;

   Buffer_Start : Buffer_Range := Buffer_Range'First;
   Buffer_End   : Buffer_Range := Buffer_Range'First;
   Buffer       : Buffer_Type;

   subtype Shift_State_Type is Integer range 0 .. 1;
   type Key_Map_Type is array (Shift_State_Type) of Character;
   type Keyboard_Map_Type is array (0 .. 127) of Key_Map_Type;

   Shift : constant Character := Character'Val (16#FF#);

   Shift_State  :          Shift_State_Type  := 0;
   Keyboard_Map : constant Keyboard_Map_Type :=
      ((NUL, NUL),
      (ESC, ESC),
      ('1', '!'),
      ('2', '@'),
      ('3', '#'),
      ('4', '$'),
      ('5', '%'),
      ('6', '^'),
      ('7', '&'),
      ('8', '*'),
      ('9', '('),
      ('0', ')'),
      ('-', '_'),
      ('=', '+'),
      (BS, BS),
      (VT, VT),
      ('q', 'Q'),
      ('w', 'W'),
      ('e', 'E'),
      ('r', 'R'),
      ('t', 'T'),
      ('y', 'Y'),
      ('u', 'U'),
      ('i', 'I'),
      ('o', 'O'),
      ('p', 'P'),
      ('[', '{'),
      (']', '}'),
      (CR, CR),
      (NUL, NUL),             --  29 - Ctrl
      ('a', 'A'),
      ('s', 'S'),
      ('d', 'D'),
      ('f', 'F'),
      ('g', 'G'),
      ('h', 'H'),
      ('j', 'J'),
      ('k', 'K'),
      ('l', 'L'),
      (';', ':'),
      (''', '"'),
      ('`', '~'),
      (SHIFT, SHIFT),          --  42 - Left Shift
      ('\', '|'),
      ('z', 'Z'),
      ('x', 'X'),
      ('c', 'C'),
      ('v', 'V'),
      ('b', 'B'),
      ('n', 'N'),
      ('m', 'M'),
      (',', '<'),
      ('.', '>'),
      ('/', '?'),
      (SHIFT, SHIFT),          --  54 - Right Shift
      (NUL, NUL),              --  55 - Print Screen
      (NUL, NUL),              --  56 - Alt
      (' ', ' '),            --  57 - Space bar
      (NUL, NUL),              --  58 - Caps Lock
      (NUL, NUL),              --  59 - F1
      (NUL, NUL),              --  60 - F2
      (NUL, NUL),              --  61 - F3
      (NUL, NUL),              --  62 - F4
      (NUL, NUL),             --  63 - F5
      (NUL, NUL),             --  64 - F6
      (NUL, NUL),             --  65 - F7
      (NUL, NUL),             --  66 - F8
      (NUL, NUL),             --  67 - F9
      (NUL, NUL),             --  68 - F10
      (NUL, NUL),             --  69 - Num Lock
      (NUL, NUL),             --  70 - Scroll Lock
      ('7', '7'),           --  71 - Numeric keypad 7
      ('8', '8'),           --  72 - Numeric keypad 8
      ('9', '9'),           --  73 - Numeric keypad 9
      ('-', '-'),           --  74 - Numeric keypad '-'
      ('4', '4'),           --  75 - Numeric keypad 4
      ('5', '5'),           --  76 - Numeric keypad 5
      ('6', '6'),           --  77 - Numeric keypad 6
      ('+', '+'),           --  78 - Numeric keypad '+'
      ('1', '1'),           --  79 - Numeric keypad 1
      ('2', '2'),           --  80 - Numeric keypad 2
      ('3', '3'),           --  81 - Numeric keypad 3
      ('0', '0'),           --  82 - Numeric keypad 0
      ('.', '.'),            --  83 - Numeric keypad '.'
      others => (NUL, NUL));

   function Get return Character is
      Key : Character;
   begin
      if Buffer_Start /= Buffer_End then
         Key := Buffer (Buffer_Start);
         if Buffer_Start < Buffer_Range'Last then
            Buffer_Start := Buffer_Start + 1;
         else
            Buffer_Start := Buffer_Range'First;
         end if;
      else
         Key := '?';
      end if;
      return Key;
   end Get;

   procedure Handler is
      Tmp              :          Unsigned_8;
      Key_Code         :          Unsigned_8;
      Key              :          Character;
      K_Rdwr           : constant            := 16#60#;
      K_Status         : constant            := 16#64#;
      K_Cmd            : constant            := 16#64#;
      K_Port_B         : constant            := 16#61#;
      K_Stat_Data      : constant            := 16#08#;
      K_Stat_Obuf_Full : constant            := 16#01#;
      K_Bit            : constant            := 16#80#;
   begin
      Key_Code := Inb (K_Rdwr);
      Tmp := Inb (K_Port_B);
      Outb (K_Port_B, Tmp or K_Bit);
      Outb (K_Port_B, Tmp);

      if (Key_Code and 16#80#) = 0 then
         Key := Keyboard_Map (Integer (Key_Code))(Shift_State);
         case Key is
            when NUL =>
               null;
            when Shift =>
               Shift_State := 1;
            when others =>
               Put (Key);
               Key := Get;
               if Key = CR then
                  Console.New_Line;
               else
                  Console.Put (Key);
               end if;
         end case;
      else
         Key := Keyboard_Map (Integer (Key_Code and 16#7F#))(Shift_State);
         case Key is
            when Shift =>
               Shift_State := 0;
            when others =>
               null;
         end case;
      end if;
      PIC.Acknowledge (PIC.Keyboard_IRQ);
   end Handler;

   procedure Put (
         Key : in     Character) is
   begin
      if Buffer_Start <= Buffer_End then
         Buffer (Buffer_End) := Key;
         if Buffer_End < Buffer_Range'Last then
            Buffer_End := Buffer_End + 1;
         else
            if Buffer_Start > Buffer_Range'First then
               Buffer_End := Buffer_Range'First;
            else
               Console.Put ("KEYBOARD: BUFFER OVERFLOW");
               Console.New_Line;
            end if;
         end if;
      else
         if Buffer_End + 1 < Buffer_Start then
            Buffer (Buffer_End) := Key;
            Buffer_End := Buffer_End + 1;
         else
            Console.Put ("KEYBOARD: BUFFER OVERFLOW");
            Console.New_Line;
         end if;
      end if;
   end Put;

   procedure Setup is
   begin
      Console.Put ("Setup Keyboard ");
      PIC.Register (PIC.Keyboard_IRQ, Handler'Access);
      PIC.Enable (PIC.Keyboard_IRQ);
      Console.Put ("Done");
      Console.New_Line;
   end Setup;

end Adaos.Device.Keyboard;
