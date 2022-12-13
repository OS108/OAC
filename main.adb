with Ada.Text_IO;
use Ada.Text_IO;

with Compiler.Front_End;
with Compiler.Back_End;

procedure Main is
   Source_File : File_Type;
   Source_Text : String := "";
begin
   -- Open the source file
   Open (File => Source_File,
         Mode => In_File,
         Name => "source.adb");

   -- Read the entire source file into a string
   while not End_Of_File (Source_File) loop
      Source_Text := Source_Text & Get_Line (Source_File);
   end loop;

   -- Close the source file
   Close (Source_File);

   -- Parse the source code
   Declarations := Compiler.Front_End.Parse (Source_Text);

   -- Generate object code
   Object_Code := Compiler.Back_End.Generate_Code (Declarations);

   -- Write the object code to a file
   Open (File => Object_File,
         Mode => Out_File,
         Name => "object.o");
   Put (Object_File, Object_Code);
   Close (Object_File);
end Main;

