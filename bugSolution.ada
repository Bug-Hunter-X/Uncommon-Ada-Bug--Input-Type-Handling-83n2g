```ada
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Exceptions; use Ada.Exceptions;

function Check_Range(Num : Integer) return Boolean is
begin
   if Num < 10 or Num > 100 then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Main is
   Number : Integer;
   Input_Line : String(1..20);
   Input_Success : Boolean := False;
begin
   Put("Enter a number between 10 and 100: ");
   loop
      Get_Line(Input_Line);
      Input_Success := Integer'Value(Input_Line, Number);
      exit when Input_Success;
      Put_Line("Invalid input. Please enter an integer.");
   end loop;

   if Check_Range(Number) then
      Put_Line("The number is within the range.");
   else
      Put_Line("The number is outside the range.");
   end if;
   exception
      when others =>
         Put_Line("An unexpected error occurred.");
end Main;
```