library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit_20332993 is
    Port ( input1, input2 : in std_logic_vector(31 downto 0);
           s0, s1 : in std_logic;
           G : out std_logic_vector(31 downto 0));
           
end logic_circuit_20332993;

architecture Behavioral of logic_circuit_20332993 is
begin
    G <= (input1 and input2) when s0 <= '0' and s1 <= '0' else
    (input1 or input2) when s0 <= '0' and s1 <= '1' else
    (input1 xor input2) when s0 <= '1' and s1 <= '0' else
    not(input1);
    
end Behavioral;
