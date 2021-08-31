library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity blink is
    port (
        G_CLOCK_50: in std_logic; --50MHz
        V_BT: in std_logic_vector (0 downto 0);
        G_LED: out std_logic_vector (0 downto 0)
    );
end;

architecture behav of blink is
    signal count : unsigned(32 downto 0) := (others => '0');
    signal brightness : std_logic;
    signal reset : std_logic;
begin
    G_LED(0) <= brightness;
    reset <= not V_BT(0);

    process(G_CLOCK_50, reset)
    begin
        if rising_edge(G_CLOCK_50) then
            count <= count + 1;
            if count(26) = '1' then
                brightness <= '1';
            else
                brightness <= '0' ;
            end if;
        end if; -- end of sync

        if reset = '1' then
            count <= (others => '0');
            brightness <= '0';
        end if;
    end process;
end behav;
