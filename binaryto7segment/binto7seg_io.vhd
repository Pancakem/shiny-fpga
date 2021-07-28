library ieee;
use ieee.std_logic_1164.all;

entity binto7seg_io is
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

architecture synth of binto7seg_io is
component binto7seg
    port (x: in std_logic_vector (1 downto 0);
          h: out std_logic_vector (6 downto 0) );
end component;

begin
    binto7seg01: binto7seg port map( SW(1 downto 0), HEX0(6 downto 0));
end;
