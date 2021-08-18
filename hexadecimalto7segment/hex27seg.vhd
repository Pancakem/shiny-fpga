library ieee;
use ieee.std_logic_1164.all;

entity hex27seg is
   port(x: in std_logic_vector(3 downto 0);
        h: out std_logic_vector(6 downto 0) );
end;

architecture synth of hex27seg is
begin
    process(x)
        begin
            h(0) <= (x(3) and x(2) and not (x(1))) or (not x(3) and not x(2) and not x(1) and not x(0)) or (x(3) and not x(2) and x(1) and x(0));
            h(1) <= (x(2) and x(1) and not (x(0))) or (x(3) and x(1) and x(0)) or (x(3) and x(2) and not x(0)) or (not x(3) and x(2) and not x(1) and x(0));           
            h(2) <= (x(3) or x(1)) and (x(3) or not x(0)) and (x(1) or not x(0)) and (x(3) or not x(2)) and (not x(3) or x(2));            
            h(3) <= (not x(2) and not (x(1) and x(0))) or (x(2) and x(1) and x(0)) or (not x(3) and x(2) and not x(1) and not x(0)) or (x(3) and not x(2) and x(1) and  not x(0));            
            h(4) <= (not x(3) and x(0)) + (not (x2) and x(1) and x(0)) + (not x(3) and x(2) and not x(1))
            h(5) <= (not x(3) and not x(2) and x(0)) or (not x(3) and not x(2) and x(1)) or (not x(3) and  x(1) and x(0)) or (x(3) and x(2) and not x(1));            
            h(6) <= (not x(3) and not x(2) and not x(1)) or (not x(3) and x(2) and x(1) and x(0));
    end process;
end synth;
