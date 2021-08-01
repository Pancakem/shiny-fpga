library ieee; 
use ieee.std_logic_1164.all; 

entity dff is 
  port(d, clk: in std_logic; 
              q, qB: out std_logic); 
end; 

architecture synth of dff is 
begin 
  process(clk, d)
  begin 
    if (clk'event and clk='1') then 
      q <= d;
      qB <= not d;
    end if; 
  end process;
end synth; 
