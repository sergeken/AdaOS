--
--  @filename demo.adb
--  @author Serge Robyns (c) 2000-2003
--  @brief AdaOS demo boot code
--

with Adaos.Device.Console;
with Adaos.Processor.Tasks;

package body Demo is

   package Console renames Adaos.Device.Console;
   package Tasks renames Adaos.Processor.Tasks;

   Maxtasks      : constant Integer                                                           := 8;
   Mytasks       :          array (1 .. Maxtasks) of Tasks.Task_Id;
   Mytask_Stacks :          array (1 .. Maxtasks) of aliased Adaos.Processor.Tasks.Stack_Type := (others => (others => 0));

   procedure Demo is
   begin
      Mytasks (1) := Tasks.Register (Demo1_Task'Access,
         Mytask_Stacks (1)'Access);
      Console.Put ("Task 1 : ");
      Console.Put (Mytasks (1));
      Console.New_Line;

      Mytasks (2) := Tasks.Register (Demo2_Task'Access,
         Mytask_Stacks (2)'Access);
      Console.Put ("Task 2 : ");
      Console.Put (Mytasks (2));
      Console.New_Line;

      Mytasks (3) := Tasks.Register (Demo3_Task'Access,
         Mytask_Stacks (3)'Access);
      Console.Put ("Task 3 : ");
      Console.Put (Mytasks (3));
      Console.New_Line;
   end Demo;

   procedure Demo1_Task is
   begin
      while True loop
         Console.Put ("TASK: Demo1 ... ");
         Idle_Loop;
      end loop;
   end Demo1_Task;

   procedure Demo2_Task is
   begin
      while True loop
         Console.Put ("TASK: Demo2 ... ");
         Idle_Loop;
      end loop;
   end Demo2_Task;

   procedure Demo3_Task is
      Sum : Integer := 0;
   begin
      while True loop
         if (Sum > 1000) then
            Sum := 0;
         else
            Sum := Sum + 1;
         end if;
         Console.Put (Sum);
         Idle_Loop;
      end loop;
   end Demo3_Task;

   procedure Idle_Loop is
   begin
      for Counter in 1 .. 10000 loop
         Tasks.Idle;
      end loop;
   end Idle_Loop;

end Demo;
