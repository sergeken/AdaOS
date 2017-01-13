--
--  @filename adaos-device-console.adb
--  @author Serge Robyns (c) 2000-2003
--  @date Created on Thu Dec 28 19:45:55 2000
--  @brief Basic console driver
--

with System;
use System;
with System.Storage_Elements;
use System.Storage_Elements;
with Ada.Characters.Latin_1;
use Ada.Characters.Latin_1;

package body Adaos.Device.Console is

   type Screen_Character is
      record
         Char : Character;
         Attr : Character;
      end record;
   subtype Line_Range is Natural range 0 .. 25-1;
   subtype Column_Range is Natural range 0 .. 80-1;
   type Screen_Line is array (Column_Range) of Screen_Character;
   type Screen is array (Line_Range) of Screen_Line;

   Current_Line   : Line_Range   := 0;
   Current_Column : Column_Range := 0;

   procedure Clear is
      The_Screen : Screen;
      for The_Screen'Address use To_Address (16#B8000#);
   begin
      The_Screen := (others => (others => (' ', Character'Val (7))));
      Current_Column := 0;
      Current_Line := 0;
   end Clear;

   procedure Move_Cursor (
         Line,
         Column : in     Integer) is
   begin
      Current_Line := Line;
      Current_Column := Column;
   end Move_Cursor;

   procedure New_Line is
   begin
      for Columns in Current_Column .. Column_Range'Last loop
         Put (' ');
      end loop;
   end New_Line;

   procedure Put (
         Text : in     Character) is
      The_Screen : Screen;
      for The_Screen'Address use To_Address (16#B8000#);
   begin
      if Text = BS then
         if Current_Column > Column_Range'First then
            Current_Column := Current_Column - 1;
            The_Screen (Current_Line)(Current_Column).Char := ' ';
         end if;
      else
         The_Screen (Current_Line)(Current_Column).Char := Text;
         if Current_Column < Column_Range'Last then
            Current_Column := Current_Column + 1;
         else
            if Current_Line < Line_Range'Last then
               Current_Line := Current_Line + 1;
            else
               Scroll_Up;
            end if;
            Current_Column := 0;
         end if;
      end if;
   end Put;

   procedure Put (
         Text : in     String) is
   begin
      for Count in Text'Range loop
         Put (Text (Count));
      end loop;
   end Put;

   procedure Put (
         Value : in     Integer) is
      procedure Put_Digit (
            Value : in     Integer);
      procedure Put_Digit (
            Value : in     Integer) is
      begin
         if Value >= 10 then
            Put_Digit (Value / 10);
            Put_Digit (Value mod 10);
         else
            Put (Character'Val (Character'Pos ('0') + Value));
         end if;
      end Put_Digit;
   begin
      if Value = 0 then
         Put ('0');
         return;
      elsif Value < 0 then
         Put ('-');
         Put_Digit (-Value);
      else
         Put_Digit (Value);
      end if;
   end Put;

   procedure Scroll_Up is
      The_Screen : Screen;
      for The_Screen'Address use To_Address (16#B8000#);
   begin
      The_Screen (Screen'First .. Screen'Last - 1) :=
         The_Screen (Screen'First + 1 .. Screen'Last);
      for Columns in Column_Range'First .. Column_Range'Last loop
         The_Screen (Screen'Last)(Columns).Char := ' ';
      end loop;
   end Scroll_Up;

begin
   Clear;

end Adaos.Device.Console;
