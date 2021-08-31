library ieee;
use ieee.std_logic_1164.all;


entity addsub8 is
   port(sub : in STD_LOGIC;
        a, b : in STD_LOGIC_VECTOR(7 downto 0);
        cout: out STD_LOGIC;
        s : out STD_LOGIC_VECTOR(7 downto 0));
end;

architecture Behavioural of addsub8 is
    signal c: STD_LOGIC_VECTOR(7 downto 1);
    signal x : STD_LOGIC_VECTOR(7 downto 0);
    component fulladd is
        port (a, b,  ci: in std_logic; 
               co, s: out std_logic);
    end component;
    begin
        x <= a xor b;
        fa_0: fulladd port map(a(0), x(0), sub, s(0), c(1));
        fa_1: fulladd port map(a(1), x(1), c(1), s(1), c(2));
        fa_2: fulladd port map(a(2), x(2), c(2), s(2), c(3));
        fa_3: fulladd port map(a(3), x(3), c(3), s(3), c(4));
        fa_4: fulladd port map(a(4), x(4), c(4), s(4), c(5));
        fa_5: fulladd port map(a(5), x(5), c(5), s(5), c(6));
        fa_6: fulladd port map(a(6), x(6), c(6), s(6), c(7));
        fa_7: fulladd port map(a(7), x(7), c(7), s(7), cout);
end Behavioural;
