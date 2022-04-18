library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExtendLogic_20332993 is
    Port ( input : in std_logic_vector (9 downto 0);
           output : out std_logic_vector (31 downto 0)
    );
end ExtendLogic_20332993;

architecture Behavioral of ExtendLogic_20332993 is

begin

output(9 downto 0) <= input;

process(input)
begin
  if(input(9) = '1') then
    output(31 downto 10) <= "1111111111111111111111";
  else
    output(31 downto 10) <= "0000000000000000000000";
  end if;
end process;

end Behavioral;
