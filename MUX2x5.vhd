library ieee;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity MUX2x5 is
	port ( inp0 : in std_logic_vector(4 downto 0);
               inp1 : in std_logic_vector(4 downto 0);
               slect : in std_logic;
               vout : out std_logic_vector(4 downto 0));
end entity;

architecture behavioural of MUX2x5 is
begin
  vout <= inp0 when slect = '0' else
          inp1 when slect = '1' else
          (others => 'Z');
          
end architecture;
