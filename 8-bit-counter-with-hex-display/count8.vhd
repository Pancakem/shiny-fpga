library ieee;
use ieee.std_logic_1164.all;


entity count8 is
   port ( clk, cin, resB : in std_logic;
            q : inout std_logic_vector(7 downto 0));
end;

architecture Behavioural of count8 is
    signal d : std_logic_vector(7 downto 0);
    signal cout : std_logic;
    component reg8 is
        port( d : in std_logic_vector(7 downto 0);
                q: out std_logic_vector(7 downto 0);
                clk, resB : in std_logic); 
    end component;
    
    component inc8 is
        port( a : in std_logic_vector(7 downto 0);
            cin: in std_logic;
            s : out std_logic_vector(7 downto 0);
            cout : out std_logic); 
    end component;
    
    begin
        inc80: inc8 port map (q, cin, d, cout);
        reg80: reg8 port map(d, q, clk, resB);
end Behavioural;
