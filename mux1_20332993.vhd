library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux1_20332993 is
  port ( In0 : in std_logic_vector(31 downto 0);
         In1 : in std_logic_vector(31 downto 0);
         S : in std_logic;
         Z : out std_logic_vector(31 downto 0));
end mux1_20332993;

architecture Behavioral of mux1_20332993 is
begin
Z <= In0 after 5 ns when S='0' else 
     In1 after 5 ns when S='1' else
     "00000000000000000000000000000000" after 5 ns;
     
end Behavioral;