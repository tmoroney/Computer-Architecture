library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg_20332993 is
    Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end reg_20332993;

architecture Behavioral of reg_20332993 is

begin

process (CLK)
begin
    if (rising_edge(CLK)) then
        if load = '1' then
            Q<=D;
        end if;
    end if;
end process;

end Behavioral;