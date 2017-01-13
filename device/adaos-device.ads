--
--  @filename adaos-device.ads
--  @author Serge Robyns (c) 2000-2003
--  @date Created on Thu Dec 28 20:20:06 2000
--  @brief Parent Package for AdaOS Device
--

package Adaos.Device is

   pragma Pure;

   --  Purpose : Abstract procedure to sent a character to a device
   --
   --  Text    : Character to be sent
   procedure Put (
         Text : in     Character) is
   abstract;

   --  Purpose : Abstract procedure to sent a string to a device
   --
   --  Text    : String to be sent
   procedure Put (
         Text : in     String) is
   abstract;

end Adaos.Device;
