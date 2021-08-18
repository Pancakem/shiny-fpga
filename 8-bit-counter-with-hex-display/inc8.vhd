library ieee;
use ieee.std_logic_1164.all;


entity inc8 is
   port( a : in std_logic_vector(7 downto 0);
        cin: in std_logic;
        s : out std_logic_vector(7 downto 0);
        cout : out std_logic);
end;

architecture Behavioural of inc8 is
    signal ci : std_logic_vector(7 downto 1);
    component halfadd is
        port (a, b : in std_logic; 
               sum, co: out std_logic);
    end component;
    begin
        hfa_0: halfadd port map(a(0), cin, s(0), ci(1));
        hfa_1: halfadd port map(a(1), ci(1), s(1), ci(2));
        hfa_2: halfadd port map(a(2), ci(2), s(2), ci(3));
        hfa_3: halfadd port map(a(3), ci(3), s(3), ci(4));
        hfa_4: halfadd port map(a(4), ci(4), s(4), ci(5));
        hfa_5: halfadd port map(a(5), ci(5), s(5), ci(6));
        hfa_6: halfadd port map(a(6), ci(6), s(6), ci(7));
        hfa_7: halfadd port map(a(7), ci(7), s(7), cout);
end Behavioural;
