library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registerfile_20332993_tb is
--  Port ( ); We don't need ports 
end registerfile_20332993_tb;

architecture Behavioral of registerfile_20332993_tb is

-- Component Declaration for the Unit Under Test (UUT)

component registerfile_20332993
Port ( Detination : in STD_LOGIC_VECTOR (4 downto 0);
       DataIn : in STD_LOGIC_VECTOR (31 downto 0);
       SelectA : in STD_LOGIC_VECTOR (4 downto 0);
       SelectB : in STD_LOGIC_VECTOR (4 downto 0);
       writeSignal : in STD_LOGIC;
       CLK : in STD_LOGIC;
       Aout : out STD_LOGIC_VECTOR (31 downto 0);
       Bout : out STD_LOGIC_VECTOR (31 downto 0)
      );
end component;

--Inputs

    signal Detination : STD_LOGIC_VECTOR (4 downto 0);
    signal DataIn : STD_LOGIC_VECTOR (31 downto 0);
    signal SelectA : STD_LOGIC_VECTOR (4 downto 0);
    signal SelectB : STD_LOGIC_VECTOR (4 downto 0);
    signal writeSignal : STD_LOGIC;
    signal CLK : STD_LOGIC := '0';
    signal Aout : STD_LOGIC_VECTOR (31 downto 0);
    signal Bout : STD_LOGIC_VECTOR (31 downto 0);
    
    constant PERIOD : time := 20ns;
    
    
    -- clock: process
    -- begin
    --   while not stop_clock loop
    --     Clk <= '0', '1' after signal_period / 2;
    --     wait for clock_period;
    --   end loop;
    -- wait;
    -- end process;
    
begin
   --Clk <= not Clk after PERIOD / 2;

	-- Instantiate the Unit Under Test (UUT)
	
   uut: registerfile_20332993 port map (
       Detination => Detination,
       DataIn => DataIn,
       SelectA => SelectA,
       SelectB => SelectB,
       writeSignal => writeSignal,
       CLK => CLK,
       Aout => Aout,
       Bout => Bout
    );
        
   CLK <= not CLK after PERIOD/2;
   
   stim_proc: process

      begin
      Detination <= "00000";
      DataIn <= "00000000000000000000000000000000";
      SelectA <= "00000";
      SelectB <= "00001";
      writeSignal <= '0';
      -- enables register loading
      writeSignal <= '1';
      
      -- Student Number: 00000001001101100100000111000001
      -- Detination Register 0
      wait until CLK'event and CLK='1';
      Detination <= "00000";
      DataIn <= x"20332993";
                 
      -- Detination Register 1
      wait until CLK'event and CLK='1';
      Detination <= "00001";
      DataIn <= x"20332992";
       
      -- Detination Register 2
      wait until CLK'event and CLK='1';
      Detination <= "00010";
      DataIn <= x"20332991";
           
      -- Detination Register 3
      wait until CLK'event and CLK='1';
      Detination <= "00011";
      DataIn <= x"20332990";
      
      -- Detination Register 4
      wait until CLK'event and CLK='1';
      Detination <= "00100";
      DataIn <= x"20332989";
          
      -- Detination Register 5
      wait until CLK'event and CLK='1';
      Detination <= "00101";
      DataIn <= x"20332988";
      
      -- Detination Register 6
      wait until CLK'event and CLK='1';
      Detination <= "00110";
      DataIn <= x"20332987";
      
      -- Detination Register 7
      wait until CLK'event and CLK='1';
      Detination <= "00111";
      DataIn <= x"20332986";
      
      -- Detination Register 8
      wait until CLK'event and CLK='1';
      Detination <= "01000";
      DataIn <= x"20332985";
      
      -- Detination Register 9
      wait until CLK'event and CLK='1';
      Detination <= "01001";
      DataIn <= x"20332984";
      
      -- Detination Register 10
      wait until CLK'event and CLK='1';
      Detination <= "01010";
      DataIn <= x"20332983";
      
      -- Detination Register 11
      wait until CLK'event and CLK='1';
      Detination <= "01011";
      DataIn <= x"20332982";
      
      -- Detination Register 12
      wait until CLK'event and CLK='1';
      Detination <= "01100";
      DataIn <= x"20332981";
      
      -- Detination Register 13
      wait until CLK'event and CLK='1';
      Detination <= "01101";
      DataIn <= x"20332980";
      
      -- Detination Register 14
      wait until CLK'event and CLK='1';
      Detination <= "01110";
      DataIn <= x"20332979";
      
      -- Detination Register 15
      wait until CLK'event and CLK='1';
      Detination <= "01111";
      DataIn <= x"20332978";
      
      -- Detination Register 16
      wait until CLK'event and CLK='1';
      Detination <= "10000";
      DataIn <= x"20332977";
      
      -- Detination Register 17
      wait until CLK'event and CLK='1';
      Detination <= "10001";
      DataIn <= x"20332976";
      
      -- Detination Register 18
      wait until CLK'event and CLK='1';
      Detination <= "10010";
      DataIn <= x"20332975";
      
      -- Detination Register 19
      wait until CLK'event and CLK='1';
      Detination <= "10011";
      DataIn <= x"20332974";
      
      -- Detination Register 20
      wait until CLK'event and CLK='1';
      Detination <= "10100";
      DataIn <= x"20332973";
      
      -- Detination Register 21
      wait until CLK'event and CLK='1';
      Detination <= "10101";
      DataIn <= x"20332972";
      
      -- Detination Register 22
      wait until CLK'event and CLK='1';
      Detination <= "10110";
      DataIn <= x"20332971";
      
      -- Detination Register 23
      wait until CLK'event and CLK='1';
      Detination <= "10111";
      DataIn <= x"20332970";
      
      -- Detination Register 24
      wait until CLK'event and CLK='1';
      Detination <= "11000";
      DataIn <= x"20332969";
      
      -- Detination Register 25
      wait until CLK'event and CLK='1';
      Detination <= "11001";
      DataIn <= x"20332968";
      
      -- Detination Register 26
      wait until CLK'event and CLK='1';
      Detination <= "11010";
      DataIn <= x"20332967";
      
      -- Detination Register 27
      wait until CLK'event and CLK='1';
      Detination <= "11011";
      DataIn <= x"20332966";
      
      -- Detination Register 28
      wait until CLK'event and CLK='1';
      Detination <= "11100";
      DataIn <= x"20332965";
      
      -- Detination Register 29
      wait until CLK'event and CLK='1';
      Detination <= "11101";
      DataIn <= x"20332964";
      
      -- Detination Register 30
      wait until CLK'event and CLK='1';
      Detination <= "11110";
      DataIn <= x"20332963";
      
      -- Detination Register 31
      wait until CLK'event and CLK='1';
      Detination <= "11111";
      DataIn <= x"20332962";
      
      wait;
      
   end process;

end Behavioral;
