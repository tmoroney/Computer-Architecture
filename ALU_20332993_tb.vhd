library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_20332993_tb is
--  Port ( );
end ALU_20332993_tb;

architecture Behavioral of ALU_20332993_tb is

component ALU_20332993
Port ( carry_in : in std_logic;
       Ain : in std_logic_vector (31 downto 0);
       Bin : in std_logic_vector (31 downto 0);
       S0 : in std_logic;
       S1 : in std_logic;
       S2 : in std_logic;
       carry_out : out std_logic;
       Gout : out std_logic_vector (31 downto 0)
     );
end component;

signal carry_in : std_logic;
signal Ain : std_logic_vector (31 downto 0);
signal Bin : std_logic_vector (31 downto 0);
signal S0 : std_logic;
signal S1 : std_logic;
signal S2 : std_logic;
signal carry_out : std_logic;
signal Gout : std_logic_vector (31 downto 0);

begin
uut: ALU_20332993 port map (
    carry_in => carry_in,
    Ain => Ain,
    Bin => Bin,
    S0 => S0,
    S1 => S1,
    S2 => S2,
    carry_out => carry_out,
    Gout => Gout
);
       
stim_process : process
   begin
       carry_in <= '0';
       Ain <= x"00000000";
       Bin <= x"00000001";
       S0 <= '0';
       S1 <= '1';
       S2 <= '1';
       wait;
   end process;

end Behavioral;
