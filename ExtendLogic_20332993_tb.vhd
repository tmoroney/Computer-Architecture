library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ExtendLogic_20332993_tb is
--  Port ( );
end ExtendLogic_20332993_tb;

architecture Behavioral of ExtendLogic_20332993_tb is

component ExtendLogic_20332993
Port ( input : in std_logic_vector (9 downto 0);
       output : out std_logic_vector (31 downto 0)
     );
end component;

signal input : std_logic_vector (9 downto 0);
signal output : std_logic_vector (31 downto 0);

begin

uut: ExtendLogic_20332993 Port Map (
      input => input,
      output => output
);

stim_process : process
begin
    input <= "1111111111";
    
    wait for 500 ns;
    input <= "0000011111";
    
    wait;
end process;


end Behavioral;
