library ieee; 
use ieee.std_logic_1164.all; 

entity dff_ar is 
  port(d, clk, resB: in STD_LOGIC; 
              q, qB: out STD_LOGIC); 
end; 

architecture synth of dff_ar is 
signal m: STD_LOGIC; -- memory bit 

begin 
  process(clk, resB) begin 
    if resB = '0' then 
      m <= '0';  -- reset 
    elsif RISING_EDGE(clk) then 
      m <= d;    -- store 
    end if; 
  end process; 

  q <= m; qB <= not m; -- outputs 
end; 
