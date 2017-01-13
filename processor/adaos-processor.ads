--
--  @filename adaos-processor.ads
--  @author Serge Robyns (c) 2001-2003
--  @date Created on Sat Jan  6 16:16:33 2001
--  @brief Hardware (Processor) Interface
--

with System;
use System;
with Interfaces;
use Interfaces;
with Unchecked_Conversion;

package Adaos.Processor is

   pragma Preelaborate;

   type Unsigned_5 is mod 2**5;
   for Unsigned_5'Size use 5;

   type Unsigned_4 is mod 2**4;
   for Unsigned_4'Size use 4;

   type Unsigned_2 is mod 2**2;
   for Unsigned_2'Size use 2;

   type Unsigned_10 is mod 2**10;
   for Unsigned_10'Size use 10;

   type Unsigned_15 is mod 2**15;
   for Unsigned_15'Size use 15;

   Number_Of_IDT_Descriptors : constant := 256;
   Number_Of_GDT_Descriptors : constant := 12;

   TSS_16_Segment_Type            : constant Unsigned_4 := 2#0001#;
   TSS_16_Busy_Segment_Type       : constant Unsigned_4 := 2#0011#;
   Call_Gate_16_Segment_Type      : constant Unsigned_4 := 2#0100#;
   Interrupt_Gate_16_Segment_Type : constant Unsigned_4 := 2#0110#;
   Trap_Gate_16_Segment_Type      : constant Unsigned_4 := 2#0111#;
   TSS_32_Segment_Type            : constant Unsigned_4 := 2#1001#;
   TSS_32_Busy_Segment_Type       : constant Unsigned_4 := 2#1011#;
   Call_Gate_32_Segment_Type      : constant Unsigned_4 := 2#1100#;
   Interrupt_Gate_32_Segment_Type : constant Unsigned_4 := 2#1110#;
   Trap_Gate_32_Segment_Type      : constant Unsigned_4 := 2#1111#;

   Execute_Read_Segment           : constant Unsigned_4 := 2#1010#;
   Read_Write_Segment             : constant Unsigned_4 := 2#0010#;

   type EFLAGS_Type is record
      Carry : Boolean := False;
      Dummy_1 : Boolean := True;
      Parity : Boolean := False;
      Dummy_2 : Boolean := False;
      Aux : Boolean := False;
      Dummy_3 : Boolean := False;
      Zero : Boolean := False;
      Sign : Boolean := False;
      Trap : Boolean := False;
      Interrupt : Boolean := False;
      Direction : Boolean := False;
      Overflow : Boolean := False;
      IOPL : Unsigned_2 := 0;
      Nested_Task : Boolean := False;
      Dummy_4 : Boolean := False;
      Resume : Boolean := False;
      Virtual_Mode : Boolean := False;
      Alignment_Check : Boolean := False;
      VIF : Boolean := False;
      VIP : Boolean := False;
      ID : Boolean := False;
      Dummy_5 : Unsigned_10 := 0;
   end record;
   for EFLAGS_Type use record
      Carry at 0 range 0 .. 0;
      Dummy_1 at 0 range 1 .. 1;
      Parity at 0 range 2 .. 2;
      Dummy_2 at 0 range 3 .. 3;
      Aux at 0 range 4 .. 4;
      Dummy_3 at 0 range 5 .. 5;
      Zero at 0 range 6 .. 6;
      Sign at 0 range 7 .. 7;
      Trap at 0 range 8 .. 8;
      Interrupt at 0 range 9 .. 9;
      Direction at 0 range 10 .. 10;
      Overflow at 0 range 11 .. 11;
      IOPL at 0 range 12 .. 13;
      Nested_Task at 0 range 14 .. 14;
      Dummy_4 at 0 range 15 .. 15;
      Resume at 0 range 16 .. 16;
      Virtual_Mode at 0 range 17 .. 17;
      Alignment_Check at 0 range 18 .. 18;
      VIF at 0 range 19 .. 19;
      VIP at 0 range 20 .. 20;
      ID at 0 range 21 .. 21;
      Dummy_5 at 0 range 22 .. 31;
   end record;

   type X86_Descriptor is
      record
         Limit_Low          : Unsigned_16;
         Base_Low           : Unsigned_16;
         Base_Medium        : Unsigned_8;
         Segment_Type       : Unsigned_4;
         Not_System_Segment : Boolean;
         Priviledge_Level   : Unsigned_2;
         Present            : Boolean;
         Limit_High         : Unsigned_4;
         Dummy              : Unsigned_2;
         Db                 : Boolean;
         Granularity        : Boolean;
         Base_High          : Unsigned_8;
      end record;

   for X86_Descriptor use record
      Limit_Low          at 0 range 0 .. 15;
      Base_Low           at 0 range 16 .. 31;
      Base_Medium        at 4 range 0 .. 7;
      Segment_Type       at 4 range 8 .. 11;
      Not_System_Segment at 4 range 12 .. 12;
      Priviledge_Level   at 4 range 13 .. 14;
      Present            at 4 range 15 .. 15;
      Limit_High         at 4 range 16 .. 19;
      Dummy              at 4 range 20 .. 21;
      Db                 at 4 range 22 .. 22;
      Granularity        at 4 range 23 .. 23;
      Base_High          at 4 range 24 .. 31;
   end record;

   type X86_Gate is
      record
         Offset_Low       : Unsigned_16;
         Selector         : Unsigned_16;
         Dummy            : Unsigned_8;
         Gate_Type        : Unsigned_5;
         Priviledge_Level : Unsigned_2;
         Present          : Boolean;
         Offset_High      : Unsigned_16;
      end record;

   for X86_Gate use record
      Offset_Low       at 0 range 0 .. 15;
      Selector         at 0 range 16 .. 31;
      Dummy            at 4 range 0 .. 7;
      Gate_Type        at 4 range 8 .. 12;
      Priviledge_Level at 4 range 13 .. 14;
      Present          at 4 range 15 .. 15;
      Offset_High      at 4 range 16 .. 31;
   end record;

   type Task_State_Segment is
      record
         Previous_Task : Unsigned_16 := 0;
         Dummy_1       : Unsigned_16 := 0;
         ESP0          : Unsigned_32 := 0;
         SS0           : Unsigned_16 := 0;
         Dummy_2       : Unsigned_16 := 0;
         ESP1          : Unsigned_32 := 0;
         SS1           : Unsigned_16 := 0;
         Dummy_3       : Unsigned_16 := 0;
         ESP2          : Unsigned_32 := 0;
         SS2           : Unsigned_16 := 0;
         Dummy_4       : Unsigned_16 := 0;
         PDBR          : Unsigned_32 := 0;
         EIP           : Unsigned_32 := 0;
         EFLAGS        : EFLAGS_Type;
         EAX           : Unsigned_32 := 0;
         ECX           : Unsigned_32 := 0;
         EDX           : Unsigned_32 := 0;
         EBX           : Unsigned_32 := 0;
         ESP           : Unsigned_32 := 0;
         EBP           : Unsigned_32 := 0;
         ESI           : Unsigned_32 := 0;
         EDI           : Unsigned_32 := 0;
         ES            : Unsigned_16 := 0;
         Dummy_5       : Unsigned_16 := 0;
         CS            : Unsigned_16 := 0;
         Dummy_6       : Unsigned_16 := 0;
         SS            : Unsigned_16 := 0;
         Dummy_7       : Unsigned_16 := 0;
         DS            : Unsigned_16 := 0;
         Dummy_8       : Unsigned_16 := 0;
         FS            : Unsigned_16 := 0;
         Dummy_9       : Unsigned_16 := 0;
         GS            : Unsigned_16 := 0;
         Dummy_10      : Unsigned_16 := 0;
         LDT           : Unsigned_16 := 0;
         Dummy_11      : Unsigned_16 := 0;
         Trace_Bit     : Boolean     := False;
         Dummy_12      : Unsigned_15 := 0;
         Io_Map        : Unsigned_16 := 16#8000#; -- See Linux
      end record;

   for Task_State_Segment use record
      Previous_Task    at 0 range 0 .. 15;
      Dummy_1          at 0 range 16 .. 31;
      ESP0             at 4 range 0 .. 31;
      SS0              at 8 range 0 .. 15;
      Dummy_2          at 8 range 16 .. 31;
      Esp1             at 12 range 0 .. 31;
      SS1              at 16 range 0 .. 15;
      Dummy_3          at 16 range 16 .. 31;
      Esp2             at 20 range 0 .. 31;
      SS2              at 24 range 0 .. 15;
      Dummy_4          at 24 range 16 .. 31;
      PDBR             at 28 range 0 .. 31;
      EIP              at 32 range 0 .. 31;
      EFLAGS           at 36 range 0 .. 31;
      EAX              at 40 range 0 .. 31;
      ECX              at 44 range 0 .. 31;
      EDX              at 48 range 0 .. 31;
      EBX              at 52 range 0 .. 31;
      ESP              at 56 range 0 .. 31;
      EBP              at 60 range 0 .. 31;
      ESI              at 64 range 0 .. 31;
      EDI              at 68 range 0 .. 31;
      ES               at 72 range 0 .. 15;
      Dummy_5          at 72 range 16 .. 31;
      CS               at 76 range 0 .. 15;
      Dummy_6          at 76 range 16 .. 31;
      SS               at 80 range 0 .. 15;
      Dummy_7          at 80 range 16 .. 31;
      DS               at 84 range 0 .. 15;
      Dummy_8          at 84 range 16 .. 31;
      FS               at 88 range 0 .. 15;
      Dummy_9          at 88 range 16 .. 31;
      GS               at 92 range 0 .. 15;
      Dummy_10         at 92 range 16 .. 31;
      LDT              at 96 range 0 .. 15;
      Dummy_11         at 96 range 16 .. 31;
      Trace_Bit        at 100 range 0 .. 0;
      Dummy_12         at 100 range 1 .. 15;
      Io_Map           at 100 range 16 .. 31;
   end record;

   type Pseudo_Descriptor is
      record
         Limit : Unsigned_16;
         Base  : Address; -- Unsigned_32
      end record;
   for Pseudo_Descriptor use record
      Limit at 0 range 0 .. 15;
      Base  at 2 range 0 .. 31;
   end record;
   for Pseudo_Descriptor'Alignment use 4;

   type TSS_Pointer is access all Task_State_Segment;
   type X86_Descriptor_Pointer is access all X86_Descriptor;

   subtype IDT_Descriptor_Table_Range is Integer
      range 0 .. Number_Of_IDT_Descriptors - 1;
   type IDT_Descriptor_Table is array (IDT_Descriptor_Table_Range) of aliased X86_Gate;
   --  type IDT_Descriptor_Table_Pointer is access all IDT_Descriptor_Table;

   subtype GDT_Descriptor_Table_Range is Integer
      range 0 .. Number_Of_GDT_Descriptors - 1;
   type GDT_Descriptor_Table is array (GDT_Descriptor_Table_Range) of aliased X86_Descriptor;

   type Seg_Descr is
      record
         Low    : Unsigned_16;
         Medium : Unsigned_8;
         High   : Unsigned_8;
      end record;
   for Seg_Descr use record
      Low    at 0 range 0 .. 15;
      Medium at 2 range 0 .. 7;
      High   at 2 range 8 .. 15;
   end record;


   function Address_To_U32 is
     new Unchecked_Conversion (
                               Source => Address,
                               Target => Unsigned_32);

   function U32_To_Address is
     new Unchecked_Conversion (
                               Source => Unsigned_32,
                               Target => Address);

   function TSS_To_Seg_Descr is
      new Unchecked_Conversion (Source => TSS_Pointer, Target => Seg_Descr);

end Adaos.Processor;
