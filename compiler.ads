package Compiler is

   -- Type definitions
   type String is new Ada.Strings.Unbounded.Unbounded_String;
   type File_Type is private;
   type Declarations is private;
   type Object_Code is private;

   -- Parse the given source code and return the declarations
   function Parse (Source : String) return Declarations;

   -- Generate object code from the given declarations
   function Generate_Code (Declarations : Declarations) return Object_Code;

private

   -- Type definitions for private elements
   type File_Type is new Ada.Text_IO.File_Type;
   type Declarations is array of Integer;
   type Object_Code is array of Integer;

end Compiler;
