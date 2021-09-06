library ieee;
use ieee.std_logic_1164.all;

entity stopwatch_io is
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

architecture synth of stopwatch_io is
    component stopwatch
        port( clk50M, resetB, stopB, startB, lapB : in std_logic;
        h0, h1: out std_logic_vector(6 downto 0);
        clkA : out std_logic);
    end component;

begin
    stopwatch01: stopwatch port map( CLOCK_50, KEY(3), KEy(2), KEY(1), KEY(0), HEX0(6 downto 0), HEX1(6 downto 0), LEDR(0));
end;
