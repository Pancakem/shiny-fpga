library ieee;
use ieee.std_logic_1164.all;

entity binto7seg is
   port(x: in std_logic_vector(1 downto 0);
        h: out std_logic_vector(6 downto 0) );
end;

architecture synth of binto7seg is
begin
    process(x)
        begin
            h(0) <= (not x(1) and x(0)) ;
            h(1) <= '0';
            h(2) <= (x(1) and not x(0));
            h(3) <= (not x(1) and x(0));
            h(4) <= x(0);
            h(5) <= (x(0) or x(1));
            h(6) <= (not x(1) and not x(0)) or (not x(1) and x(0));
    end process;
end synth;
