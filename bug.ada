```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num < 10 or Num > 100 then
      return False;
   else
      return True;
   end if;
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
   Number : Integer;
begin
   Put("Enter a number between 10 and 100: ");
   Get(Number);
   if Check_Range(Number) then
      Put_Line("The number is within the range.");
   else
      Put_Line("The number is outside the range.");
   end if;
end Main;
```