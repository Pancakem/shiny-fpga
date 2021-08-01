library ieee;

use ieee.std_logic_1164.all;

-- dff with enable and reset
entity dff_er is
   port (clk, d, rst, en : in std_logic;
            q, qB: out std_logic);
end dff_er;

architecture synth of dff_er is
   begin
       process (clk, en, d, rst)
        begin
             if(en=’0′) then
               q <=’z’;
               qB <= ‘z’;
              elsif(rst=’1′) then
               q <=’0′;
               qB <=’1′;
              elsif(clk’event and clk=’1′) then
               q <= d;
               qB <= not d;
             end  if;
     end process;
end synth;
