library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memory_module_20332993_tb is
--  Port ( );
end memory_module_20332993_tb;

architecture Behavioral of memory_module_20332993_tb is

component memory_module_20332993 is
  Port (address : in std_logic_vector(31 downto 0);
        write_data : in std_logic_vector(31 downto 0);
        write_enable : in std_logic;
        clock : in std_logic;
        read_data : out std_logic_vector(31 downto 0));
end component;

signal address : std_logic_vector(31 downto 0);
signal write_data : std_logic_vector(31 downto 0);
signal write_enable : std_logic;
signal clock : std_logic := '0';
signal read_data : std_logic_vector(31 downto 0);

constant clock_period : time := 2 ns;

begin

uut: memory_module_20332993 port map (
    address => address,
    write_data => write_data,
    write_enable => write_enable,
    clock => clock,
    read_data => read_data
);

clock <= not clock after clock_period/2;

stim_process: process
    begin
    address <= x"00000000";
    write_data <= x"00000000";
    write_enable <= '1';
    
    for I in 0 to 511 loop -- loops 512 times
      wait until clock'event and clock = '1';
      address <= std_logic_vector ( conv_std_logic_vector(I, 32) ); -- address = index converted to 32 bits
      write_data <= std_logic_vector ( conv_std_logic_vector((93 + I), 32) ); -- last 2 digits of student number + index
    end loop;
    
    for I in 0 to 511 loop
      wait until clock'event and clock = '1';
      address <= std_logic_vector ( conv_std_logic_vector(I, 32) ); -- address = index converted to 32 bits
    end loop;
    
    for I in 0 to 31 loop
      wait until clock'event and clock = '1';
      address <= std_logic_vector ( conv_std_logic_vector(I, 32) ); -- address = index converted to 32 bits
      write_data <= x"00000000";
    end loop;
    
    wait until clock'event and clock = '1';
    write_enable <= '0';
    address <= x"00000000";
    write_data <= x"00000001";
    
wait; 
end process;

end Behavioral;
