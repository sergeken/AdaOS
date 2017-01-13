--
--  @filename adaos-device-keyboard.ads
--  @author Serge Robyns (c) 2000-2003
--  @date Created on Thu Dec 28 19:45:55 2000
--  @brief Basic keyboard driver
--

package Adaos.Device.Keyboard is

   function Get return Character;

   procedure Put (
         Key : in     Character);

   procedure Setup;

private
   procedure Handler;

end Adaos.Device.Keyboard;
