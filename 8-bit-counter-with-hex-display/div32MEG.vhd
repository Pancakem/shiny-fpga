library ieee; 
use ieee.std_logic_1164.all; 
entity div32MEG is 
  port(clkin, resB: in STD_LOGIC; 
            clkout: out STD_LOGIC); 
end; 
architecture synth of div32MEG is 
    component dff_ar 
      port(d, clk, resB: in STD_LOGIC; 
                  q, qB: out STD_LOGIC); 
    end component; 
    signal q :STD_LOGIC_VECTOR (23 downto 0); 
    signal qB :STD_LOGIC_VECTOR (24 downto 0);

    begin 
      dff_ar0:  dff_ar port map( qB(0), clkin, resB,  q(0),  qB(0) ); -- complete 
      dff_ar1:  dff_ar port map( qB(1),  q(0), resB,  q(1),  qB(1) ); 
      dff_ar2:  dff_ar port map( qB(2),  q(1), resB,  q(2),  qB(2) ); 
      dff_ar3:  dff_ar port map( qB(3),  q(2), resB,  q(3),  qB(3) ); 
      dff_ar4:  dff_ar port map( qB(4),  q(3), resB,  q(4),  qB(4) ); 
      dff_ar5:  dff_ar port map( qB(5),  q(4), resB,  q(5),  qB(5) ); 
      dff_ar6:  dff_ar port map( qB(6),  q(5), resB,  q(6),  qB(6) ); 
      dff_ar7:  dff_ar port map( qB(7),  q(6), resB,  q(7),  qB(7) ); 
      dff_ar8:  dff_ar port map( qB(8),  q(7), resB,  q(8),  qB(8) ); 
      dff_ar9:  dff_ar port map( qB(9),  q(8), resB,  q(9),  qB(9) ); 
      dff_ar10: dff_ar port map( qB(10), q(9), resB,  q(10), qB(10) ); 
      dff_ar11: dff_ar port map( qB(11), q(10), resB, q(11), qB(11) ); 
      dff_ar12: dff_ar port map( qB(12), q(11), resB, q(12), qB(12) ); 
      dff_ar13: dff_ar port map( qB(13), q(12), resB, q(13), qB(13) ); 
      dff_ar14: dff_ar port map( qB(14), q(13), resB, q(14), qB(14) ); 
      dff_ar15: dff_ar port map( qB(15), q(14), resB, q(15), qB(15) ); 
      dff_ar16: dff_ar port map( qB(16), q(15), resB, q(16), qB(16) ); 
      dff_ar17: dff_ar port map( qB(17), q(16), resB, q(17), qB(17) ); 
      dff_ar18: dff_ar port map( qB(18), q(17), resB, q(18), qB(18) ); 
      dff_ar19: dff_ar port map( qB(19), q(18), resB, q(19), qB(19) ); 
      dff_ar20: dff_ar port map( qB(20), q(19), resB, q(20), qB(20) ); 
      dff_ar21: dff_ar port map( qB(21), q(20), resB, q(21), qB(21) ); 
      dff_ar22: dff_ar port map( qB(22), q(21), resB, q(22), qB(22) ); 
      dff_ar23: dff_ar port map( qB(23), q(22), resB, q(23), qB(23) ); 
      dff_ar24: dff_ar port map( qB(24), q(23), resB, clkout, qB(24) ); -- complete 
end;
