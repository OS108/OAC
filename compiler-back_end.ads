-- compiler-front_end.ads

package Compiler.Back_End is

   -- Parse the given source code and return the declarations
   function Parse (Source : String) return Declarations;

end Compiler.Back_End;

