with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;


procedure Calculo_Mcd is

---------------------------------------------------------
function Mcd (M, N: Natural) return Natural is

-- Pre : cierto
-- Pos : calcula el Mcd en funcion del algoritmo de euclides

Resultado : Natural;

   begin
      if N = 0 then
         Resultado := M;
      elsif N>M then
         Resultado := Mcd (N, M);
      else Resultado := Mcd (N, M rem N);
      end if;
      return Resultado;

end Mcd;

-----------------------------------------------------------

Primer_Numero, Segundo_Numero : Natural;
Mcd_Ambos : Natural;

begin
   Put ("Introduce el primer numero ");
   Get (Primer_Numero);
   Put ("Introduce el segundo numero ");
   Get (Segundo_Numero);
   Mcd_Ambos := Mcd (Primer_Numero, Segundo_Numero);
   Put ("El maximo comun divisor de estos dos numeros es ");
   Put (Mcd_Ambos);
end Calculo_Mcd;