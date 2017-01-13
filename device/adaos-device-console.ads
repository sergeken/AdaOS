--
--  @filename adaos-device-console.ads
--  @author Serge Robyns (c) 2000-2003
--  @brief  Basic console driver
--

package Adaos.Device.Console is

   --  Purpose : To clear the screen
   procedure Clear;

   --  Purpose : To go to the start of the next line
   --  Side-effects: At the last line, the console scrolls one line up
   procedure New_Line;

   --  Purpose : To put a character on the screen
   --  Text : Character to be put
   procedure Put (
         Text : in     Character);

   --  Purpose : To put an Integer on the screen
   --  Value : Integer Value to be put
   procedure Put (
         Value : in     Integer);

   --  Purpose : To put a string on the screen
   --  String : String to be put
   procedure Put (
         Text : in     String);

   --  Purpose : To place the cursor at the given place
   --  Line   : Destination Line
   --  Column : Destination Column
   procedure Move_Cursor (
         Line,
         Column : in     Integer);

private
   --  Purpose : To scroll up the screen by one line
   procedure Scroll_Up;
end Adaos.Device.Console;
