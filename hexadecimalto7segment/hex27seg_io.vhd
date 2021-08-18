--
-- Fawaz Alrwaily
-- July 9, 2021

library ieee;
use ieee.std_logic_1164.all;

entity hex27seg_io is
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

architecture synth of hex27seg_io is
component hex27seg
    port (x: in std_logic_vector (3 downto 0);
          h: out std_logic_vector (6 downto 0) );
end component;

begin
    hex27seg01: hex27seg port map( SW(3 downto 0), HEX0(6 downto 0));
end;
