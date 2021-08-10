library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity MUX3x32 is
	port ( inp0 : in std_logic_vector(31 downto 0);
               inp1 : in std_logic_vector(31 downto 0);
               inp2 : in std_logic_vector(31 downto 0);
               slect : in std_logic_vector(1 downto 0);
               vout : out std_logic_vector(31 downto 0));
end entity;

architecture behavioural of MUX3x32 is
begin
    vout <= inp0 when slect = "00" else
            inp1 when slect = "01" else
            inp2 when slect = "10" else
            (others => 'Z');
          
end architecture;
