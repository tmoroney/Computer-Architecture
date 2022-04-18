library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux3_20332993_tb is
--  Port ( );
end mux3_20332993_tb;

architecture Behavioral of mux3_20332993_tb is
     component mux3_20332993
        port ( In0 : in std_logic;
               In1 : in std_logic;
               In2 : in std_logic;
               S : in std_logic_vector(1 downto 0);
               Z : out std_logic);
     end component;
     
     --signal
     signal In0 : std_logic;
     signal In1 : std_logic;
     signal In2 : std_logic;
     signal S : std_logic_vector (1 downto 0);
     
     --signal
     signal Z : std_logic;
     

begin
  
uut: mux3_20332993 PORT MAP(
    In0 => In0,
    In1 => In1,
    In2 => In2,
    Z => Z,
    S => S );
    
stim_process: process
  begin
    In0 <= '0';
    In1 <= '1';
    In2 <= '0';
    S <= "10";
    wait;  
  end process;

end Behavioral;
