library ieee;
use ieee.std_logic_1164.all;

-- 4-bit
entity addsub4 is
   port(sub : in std_logic;
        a, b : in std_logic_vector(3 downto 0);
        cout: out std_logic;
        s : out std_logic_vector(3 downto 0));
end;

architecture Behavioural of addsub4 is
    signal c: std_logic_vector(3 downto 1);
    signal x : std_logic_vector(3 downto 0);
    component fulladd is
        port (a, b,  ci: in std_logic; 
               co, s: out std_logic);
    end component;
    begin
        x <= a xor b;
        fa_0: fulladd port map(a(0), x(0), sub, s(0), c(1));
        fa_1: fulladd port map(a(1), x(1), c(1), s(1), c(2));
        fa_2: fulladd port map(a(2), x(2), c(2), s(2), c(3));
        fa_3: fulladd port map(a(3), x(3), c(3), s(3), cout);
end Behavioural;
