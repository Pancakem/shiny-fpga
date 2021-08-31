library ieee;
use ieee.std_logic_1164.all;

entity addsub4_disp_io is
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

architecture synth of addsub4_disp_io is
component addsub4_disp
    port(sub : in std_logic;
        a, b : in std_logic_vector(3 downto 0);
        h0, h1, h2, h3 : out std_logic_vector(6 downto 0));
end component;

begin
    addsub4_disp01: addsub4_disp port map( SW(4), SW(8 downto 5), SW(3 downto 0), HEX0(6 downto 0), HEX1(6 downto 0), HEX2(6 downto 0), HEX3(6 downto 0));
end;
