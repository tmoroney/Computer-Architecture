library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter_20332993_tb is
--  Port ( );
end shifter_20332993_tb;

architecture Behavioral of shifter_20332993_tb is

component shifter_20332993
    Port ( input : in std_logic_vector (31 downto 0);
           Ir : in std_logic;
           Il : in std_logic;
           S : in std_logic_vector (1 downto 0);
           output : out std_logic_vector (31 downto 0));
end component;

signal input, output : std_logic_vector (31 downto 0);
signal Ir, Il : std_logic;
signal S : std_logic_vector(1 downto 0);

begin

uut: shifter_20332993 port map (
    input => input,
    Ir => Ir,
    Il => Il,
    S => S,
    output => output
);

stim_process : process
  begin
    input <= x"00000001";
    Ir <= '0';
    Il <= '0';
    S <= "01";
    wait;
  end process;

end Behavioral;
