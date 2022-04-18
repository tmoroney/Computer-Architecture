----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.11.2021 17:15:22
-- Design Name: 
-- Module Name: funit_20332993_tb - Behavioral
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

entity funit_20332993_tb is
--  Port ( );
end funit_20332993_tb;

architecture Behavioral of funit_20332993_tb is

component funit_20332993
    Port ( A : in std_logic_vector (31 downto 0);
           B : in std_logic_vector (31 downto 0);
           S : in std_logic_vector (4 downto 0);
           output : out std_logic_vector (31 downto 0)
    );
end component;

signal A, B, output : std_logic_vector (31 downto 0);
signal S : std_logic_vector (4 downto 0);

begin

uut : funit_20332993 port map (
    A => A,
    B => B,
    S => S,
    output => output
);

stim_process : process
begin
    --A <= "00000000000000000000000000000001";
    --B <= "00000000000000000000000000000100";
    --S <= "11000";
    --wait for 10 ns;
    
    A <= "00000000000000000000000000000001";
    B <= "00000000000000000000000000000010";
    S <= "00000";
    wait for 10 ns;
    
    --A <= "00000000000000000000000000000111";
    --B <= "00000000000000000000000000001110";
    --S <= "01000";
    --wait for 10 ns;
end process;
    

end Behavioral;
