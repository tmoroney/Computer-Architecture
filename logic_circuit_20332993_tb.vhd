library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit_20332993_tb is
--  Port ( );
end logic_circuit_20332993_tb;

architecture Behavioral of logic_circuit_20332993_tb is

component logic_circuit_20332993
Port ( input1, input2 : in std_logic_vector(31 downto 0);
       s0, s1 : in std_logic;
       G : out std_logic_vector(31 downto 0));
end component;

signal input1, input2 : std_logic_vector(31 downto 0);
signal s0, s1 : std_logic;
signal G : std_logic_vector(31 downto 0);
    
begin

uut: logic_circuit_20332993 port map (
    input1 => input1,
    input2 => input2,
    s0 => s0,
    s1 => s1,
    G => G
);
       
stim_process : process
   begin
       input1 <= x"00000000";
       input2 <= x"00000001";
       s0 <= '0';
       s1 <= '1';
       wait;
   end process;
end Behavioral;
