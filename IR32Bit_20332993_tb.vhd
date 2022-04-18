library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR32Bit_20332993_tb is
--  Port ( );
end IR32Bit_20332993_tb;

architecture Behavioral of IR32Bit_20332993_tb is

component IR32Bit_20332993
Port ( Input : in std_logic_vector (31 downto 0);
       Clk : in std_logic;
       IL : in std_logic;
       Opcode : out std_logic_vector (16 downto 0);
       DR : out std_logic_vector (4 downto 0);
       SA : out std_logic_vector (4 downto 0);
       SB : out std_logic_vector (4 downto 0)
);
end component;

signal Input : std_logic_vector (31 downto 0);
signal Clk : std_logic := '0';
signal IL : std_logic;
signal Opcode : std_logic_vector (16 downto 0);
signal DR : std_logic_vector (4 downto 0);
signal SA : std_logic_vector (4 downto 0);
signal SB : std_logic_vector (4 downto 0);

constant clock_period : time := 200 ns;

begin

uut: IR32Bit_20332993 PORT MAP (
      Input => Input,
      Clk => Clk,
      IL => IL,
      Opcode => Opcode,
      DR => DR,
      SA => SA,
      SB => SB
);
    
Clk <= not Clk after clock_period/2;

stim_proc: process
begin
   
    IL <= '1';
    Input <= x"00000001";

    wait until Clk'event and Clk = '1';
    Input <= "11111111111111111111111111111111";
    
    wait until Clk'event and Clk = '1';
    IL <= '0';
    Input <= "00000000000000001111111111111111";
    
    wait;
end process;

end Behavioral;
