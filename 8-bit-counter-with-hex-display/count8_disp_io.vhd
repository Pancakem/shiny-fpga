library ieee;
use ieee.std_logic_1164.all;

entity count8_disp_io is
    port (SW: in std_logic_vector (9 downto 0);
        KEY: in std_logic_vector (3 downto 0);
        CLOCK_50: in std_logic;
        LEDR: out std_logic_vector (9 downto 0);
        HEX0: out std_logic_vector (6 downto 0);
        HEX1: out std_logic_vector (6 downto 0);
        HEX2: out std_logic_vector (6 downto 0);
        HEX3: out std_logic_vector (6 downto 0);
        HEX4: out std_logic_vector (6 downto 0);
        HEX5: out std_logic_vector (6 downto 0) );
end;

architecture synth of count8_disp_io is
component count8_disp
    port (clk50, resB, cin : in std_logic;
        h0, h1: out std_logic_vector(6 downto 0); 
        clkA : out std_logic);
end component;

begin
    count8_disp01: count8_disp port map( CLOCK_50, KEY(0), SW(0), HEX0(6 downto 0), HEX1(6 downto 0), LEDR(0));
end;
