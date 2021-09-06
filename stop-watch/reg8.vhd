library ieee; 
use ieee.std_logic_1164.all; 

entity reg8 is 
 port( d : in std_logic_vector(7 downto 0);
        q: out std_logic_vector(7 downto 0);
        clk, resB : in std_logic);
end; 

architecture synth of reg8 is 
    component dff_ar 
      port(d, clk, resB: in STD_LOGIC; 
                  q, qB: out STD_LOGIC); 
    end component; 
    signal qB :STD_LOGIC_VECTOR (7 downto 0); --unused pins 

    begin 
      dff_ar0:  dff_ar port map( qB(0), clk, resB,  q(0),  qB(0) ); 
      dff_ar1:  dff_ar port map( qB(1), clk, resB,  q(1),  qB(1) ); 
      dff_ar2:  dff_ar port map( qB(2), clk, resB,  q(2),  qB(2) ); 
      dff_ar3:  dff_ar port map( qB(3), clk, resB,  q(3),  qB(3) ); 
      dff_ar4:  dff_ar port map( qB(4), clk, resB,  q(4),  qB(4) ); 
      dff_ar5:  dff_ar port map( qB(5), clk, resB,  q(5),  qB(5) ); 
      dff_ar6:  dff_ar port map( qB(6), clk, resB,  q(6),  qB(6) ); 
      dff_ar7:  dff_ar port map( qB(7), clk, resB,  q(7),  qB(7) ); 
end;
