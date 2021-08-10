library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity ImmedExtnd is
	port ( vin : in std_logic_vector(15 downto 0);
               slect : in std_logic;
               vout : out std_logic_vector(31 downto 0));
end entity;

architecture behavioural of ImmedExtnd is
begin
  vout <= x"0000" & vin when slect = "0" else
          x"1111" & vin when slect = "1" else
          (others => 'Z');
end architecture;
