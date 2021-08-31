library ieee;
use ieee.std_logic_1164.all;


entity addsub4_disp is
   port(sub : in std_logic;
        a, b : in std_logic_vector(3 downto 0);
        h0, h1, h2, h3 : out std_logic_vector(6 downto 0));
end;

architecture synth of addsub4_disp is
    signal s: std_logic_vector(3 downto 0);
    signal cout: std_logic;
    component hex27seg is
       port(x: in std_logic_vector(3 downto 0);
            h: out std_logic_vector(6 downto 0) );
    end component;
    
    component addsub4 is
       port(sub : in std_logic;
            a, b : in std_logic_vector(3 downto 0);
            cout: out std_logic;
            s : out std_logic_vector(3 downto 0));
    end component;
    begin
        hex27seg1: hex27seg port map("000"&cout, h1);
        hex27seg2: hex27seg port map(b, h2);
        hex27seg3: hex27seg port map(a, h3);
        addsub40: addsub4 port map(sub, a, b, cout, s);
        hex27seg0: hex27seg port map(s, h0);
        
end synth;
