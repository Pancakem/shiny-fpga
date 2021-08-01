library ieee;
use ieee.std_logic_1164.all;

entity fulladd is
    port (a, b,  ci: in std_logic; 
          co, s: out std_logic);
end;

architecture synth of fulladd is
begin
    s <= a xor b xor ci;
    co <= (a xor b) or (ci and a) or (ci and b);    
end;
