----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.11.2021 14:22:08
-- Design Name: 
-- Module Name: mux3_20332993 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux3_20332993 is
    port ( In0 : in std_logic;
           In1 : in std_logic;
           In2 : in std_logic;
           S : in std_logic_vector(1 downto 0);
           Z : out std_logic);
end mux3_20332993;

architecture Behavioral of mux3_20332993 is

begin
Z <= In0 after 5 ns when S="00" else 
     In1 after 5 ns when S="01" else
     In2 after 5 ns when S="10" else
     '0' after 5 ns;

end Behavioral;
