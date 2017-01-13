--
--  @filename demo.ads
--  @author Serge Robyns (c) 2000-2003
--  @brief AdaOS demo boot code
--

package Demo is

   procedure Demo;

private
   procedure Demo1_Task;
   procedure Demo2_Task;
   procedure Demo3_Task;
   procedure Idle_Loop;
end Demo;
