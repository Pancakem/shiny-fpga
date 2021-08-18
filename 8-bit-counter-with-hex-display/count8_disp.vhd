library ieee;
use ieee.std_logic_1164.all;


entity count8_disp is
   port (clk50, resB, cin : in std_logic;
        h0, h1: out std_logic_vector(6 downto 0); 
        clkA : out std_logic);
end;

architecture Behavioural of count8_disp is
    signal q : std_logic_vector(7 downto 0);
    signal clk: std_logic;
    component hex27seg is
       port(x: in STD_LOGIC_VECTOR(3 downto 0);
            h: out STD_LOGIC_VECTOR(6 downto 0) );
    end component;
    
    component count8 is
       port ( clk, cin, resB : in std_logic;
            q : out std_logic_vector(7 downto 0));
    end component;
    
    component div32MEG is
        port(clkin, resB: in STD_LOGIC;   
            clkout: out STD_LOGIC);
    end component;
    begin
        clkA <= not clk;
        hex27seg0: hex27seg port map(q(7 downto 4), h1);
        hex27seg1: hex27seg port map(q(3 downto 0), h0);
        count80: count8 port map(clk, cin, resB, q);
        div32MEG0: div32MEG port map(clk50, resB, clk);
        
end Behavioural;
