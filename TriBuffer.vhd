library ieee;
library ee_212_decoder;

use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
use ee_212_decoder.decodelogic_pkg.all;

entity TriBuffer is
	port( inp : in std_logic;
              en : in std_logic;
              outp : out std_logic);
end entity;

architecture behavioural of TriBuffer is
	begin
          process(inp, en)
          begin
            if (en = '1') then
              outp <= not inp;
            elsif (en = '0') then
              outp <= 'Z';
            end if;
          end process;
          
end architecture;
