library ieee;
use ieee.std_logic_1164.all;

entity adc_disp_io is
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

architecture synth of adc_disp_io is
    component adc_disp
        port (clk50, resB, frz : in std_logic;
            adc_val : in std_logic_vector(7 downto 0);
            h0, h1: out std_logic_vector(6 downto 0));
    end component;

begin
    adc_disp01: adc_disp port map( CLOCK_50, KEY(0), SW(9), SW(7 downto 0), HEX0(6 downto 0), HEX1(6 downto 0));
end;
