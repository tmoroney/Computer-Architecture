library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ZeroFillLogic_20332993_tb is
--  Port ( );
end ZeroFillLogic_20332993_tb;

architecture Behavioral of ZeroFillLogic_20332993_tb is

component ZeroFillLogic_20332993
Port ( SB : in std_logic_vector (4 downto 0);
       output : out std_logic_vector (31 downto 0)
    );
end component;

signal SB : std_logic_vector (4 downto 0);
signal output : std_logic_vector (31 downto 0);

begin

uut: ZeroFillLogic_20332993 Port Map (
      SB => SB,
      output => output
);

stim_process : process
begin

    SB <= "11111";
    
    wait for 500 ns;
    SB <= "11000";
    
    wait;

end process;
end Behavioral;
