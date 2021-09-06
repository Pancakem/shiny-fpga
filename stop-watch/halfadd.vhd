library ieee;
use ieee.std_logic_1164.all;

entity halfadd is
    port ( a, b : in std_logic;
	    sum, co : out std_logic);
end;

architecture synth of halfadd is
begin
    sum <= a xor b; co <= a and b;
end;
