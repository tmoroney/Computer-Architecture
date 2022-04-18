library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux1_20332993_tb is
--  Port ( );
end mux1_20332993_tb;

architecture Behavioral of mux1_20332993_tb is
    component mux1_20332993
        port ( In0 : in std_logic_vector(31 downto 0);
               In1 : in std_logic_vector(31 downto 0);
               S : in std_logic;
               Z : out std_logic_vector(31 downto 0));
     end component;
     
     --signal
     signal In0 : std_logic_vector(31 downto 0) := (others => '0');
     signal In1 : std_logic_vector(31 downto 0) := (others => '0');
     signal S : std_logic := '0';
     
     --signal
     signal Z : std_logic_vector(31 downto 0) := (others => '0');
     

begin
  
    uut: mux1_20332993 PORT MAP(
    In0 => In0,
    In1 => In1,
    Z => Z,
    S => S );
    
    stim_process: process
    begin
        In0 <= "00000001001101100100000111000001";
        In1 <= "00000001001101100100000111000000";
    
    wait for 10 ns;
        S<= '0';
        
    wait for 10 ns;
        S<= '1';
        
END process;
end Behavioral;