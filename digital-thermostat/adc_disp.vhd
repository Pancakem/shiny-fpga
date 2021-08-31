library ieee;
use ieee.std_logic_1164.all;


entity adc_disp is
   port (clk50, resB, frz : in std_logic;
        adc_val : in std_logic_vector(7 downto 0);
        h0, h1: out std_logic_vector(6 downto 0));
end;

architecture Behavioural of adc_disp is
    signal frzB, dk : std_logic;
    signal q : std_logic_vector(7 downto 0);
    
    component hex27seg is
       port(x: in STD_LOGIC_VECTOR(3 downto 0);
            h: out STD_LOGIC_VECTOR(6 downto 0) );
    end component;
    
    component reg8 is
       port( d : in std_logic_vector(7 downto 0);
        q: out std_logic_vector(7 downto 0);
        clk, resB : in std_logic);
    end component;
    
    begin
        frzB <= not frz; 
        dk <= frzB and clk50;
        hex27seg0: hex27seg port map(q(7 downto 4), h1);
        hex27seg1: hex27seg port map(q(3 downto 0), h0);
        reg80: reg8 port map(adc_val, q, dk, resB);
        
end Behavioural;
