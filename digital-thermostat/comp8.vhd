library ieee;
use ieee.std_logic_1164.all;


entity comp8 is
   port ( a, b : in std_logic_vector(7 downto 0);
            GT, EQ, LT : out std_logic);
end;

architecture Behavioural of comp8 is
    signal sb : STD_LOGIC := '1';
    signal co : STD_LOGIC;
    signal ss : STD_LOGIC_VECTOR(7 downto 0);
    component addsub8 is
        port(sub : in STD_LOGIC;
            a, b : in STD_LOGIC_VECTOR(7 downto 0);
            cout: out STD_LOGIC;
            s : out STD_LOGIC_VECTOR(7 downto 0));
    end component;
    
    begin
        addsub80 : addsub8 port map(sb, a, b, co, ss);
        LT <= not co;
        EQ <= not (ss(0) or ss(1) or ss(2) or ss(3) or ss(4) or ss(5) or ss(6) or ss(7)); -- nor
        GT <= co;
    
end Behavioural;
