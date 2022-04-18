library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rippleadder_20332993_tb is
--  Port ( );
end rippleadder_20332993_tb;

architecture Behavioral of rippleadder_20332993_tb is

component rippleadder_20332993
Port ( A,B : in STD_LOGIC_VECTOR (31 downto 0);
       c0 : in std_logic;
       S : out std_logic_vector(31 downto 0);
       carry_out: out std_logic);
end component;

    signal A,B : STD_LOGIC_VECTOR (31 downto 0):= (others => '0');
    signal c0 : std_logic;
    signal S : std_logic_vector(31 downto 0);
    signal carry_out: std_logic;

begin
	
uut: rippleadder_20332993 port map (
    A => A,
    B => B,
    c0 => c0,
    S => S,
    carry_out => carry_out
);
       
stim_process : process
   begin
       A <= x"00000001";
       B <= x"00000000";
       c0 <= '0';
       wait;
   end process;
  
end Behavioral;
