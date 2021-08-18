library ieee;
use ieee.std_logic_1164.all;

entity div32MEG_io is
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

architecture synth of div32MEG_io is
component div32MEG
    port (clkin, resB: in std_logic;
          clkout: out std_logic);
end component;

begin
    div32MEG01: div32MEG port map( CLOCK_50, KEY(0), LEDR(0));
end;
