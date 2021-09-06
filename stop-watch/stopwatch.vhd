library ieee; 
use ieee.std_logic_1164.all; 

entity stopwatch is 
 port( clk50M, resetB, stopB, startB, lapB : in std_logic;
        h0, h1: out std_logic_vector(6 downto 0);
        clkA : out std_logic);
end; 

architecture synth of stopwatch is 
    signal disp, clk, count, resB, clkdisp, clkreg, lap : std_logic;
    signal d, q: std_logic_vector(7 downto 0);
    component div32MEG is
      port(clkin, resB: in STD_LOGIC; 
            clkout: out STD_LOGIC);
    end component; 
    
    component count8 is
        port ( clk, cin, resB : in std_logic;
            q : inout std_logic_vector(7 downto 0));
    end component;
    
    component reg8 is
        port( d : in std_logic_vector(7 downto 0);
                q: out std_logic_vector(7 downto 0);
                clk, resB : in std_logic);
    end component;
    
    component stopwFSM is
        port ( clk, resetB, stopB, startB, lapB: in std_logic;
        resB, count, disp : out std_logic); 
    end component;
    
    component hex27seg is
        port(x: in STD_LOGIC_VECTOR(3 downto 0);
        h: out STD_LOGIC_VECTOR(6 downto 0) );
    end component;

    begin
        clkdisp <= disp and clk50M;
        clkreg <= clkdisp or lap;
        lap <= not lapB;
        clkA <= not clk;
        
        div32MEG0: div32MEG port map(clk50M, resB, clk);
        count80: count8 port map(clk, count, resB, d);
        reg80: reg8 port map (d, q, clkreg, resB);
        hex27seg0: hex27seg port map (q(3 downto 0), h0);
        hex27seg1: hex27seg port map (q(7 downto 4), h1);
      
end;
