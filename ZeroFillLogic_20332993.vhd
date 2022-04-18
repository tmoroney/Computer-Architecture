library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZeroFillLogic_20332993 is
    Port ( SB : in std_logic_vector (4 downto 0);
           output : out std_logic_vector (31 downto 0)
    );
end ZeroFillLogic_20332993;

architecture Behavioral of ZeroFillLogic_20332993 is

begin

output(4 downto 0) <= SB;
output(31 downto 5) <= "000000000000000000000000000";

end Behavioral;
