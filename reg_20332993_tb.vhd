library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg_20332993_tb is
--  Port ( ); We don't need ports
end reg_20332993_tb;

architecture Sim of reg_20332993_tb is

-- Component Declaration for the Unit Under Test (UUT)

component reg_20332993
port ( 
    D : in STD_LOGIC_VECTOR (31 downto 0);
    CLK : in STD_LOGIC;
    Load : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR (31 downto 0)
      );
end component;

--Inputs

    signal D : std_logic_vector(31 downto 0):= (others => '0');
    signal CLK : std_logic:= '0';
    signal Load : std_logic:= '0';
    
--Outputs

    signal Q : std_logic_vector(31 downto 0):= (others => '0');
    
    constant PERIOD : time := 10ns;
   
begin

	-- Instantiate the Unit Under Test (UUT)
	
   uut: reg_20332993 port map (
          D => D,
          CLK => CLK,
          Load => Load,
          Q => Q
        );
        
   CLK <= not CLK after PERIOD/2;
   
   stim_proc: process

   begin
   
      wait until CLK'event and CLK='1';
      Load <= '0';
      D <= "00000000000000000000000000000001";
      
      wait until CLK'event and CLK='1';
      Load <= '1';
      
      wait until CLK'event and CLK='1';
      Load <= '0';
      D <= "00000000000000000000000000000010";
      
      wait until CLK'event and CLK='1';
      Load <= '1';
      
      wait until CLK'event and CLK='1';
      Load <= '0';
      D <= "00000000000000000000000000000011";
      
      wait until CLK'event and CLK='1';
      Load <= '1';
      
      
   end process;
   
        
end Sim;