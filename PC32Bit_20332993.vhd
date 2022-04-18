library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PC32Bit_20332993 is
    Port ( input : in std_logic_vector (31 downto 0);
           PL : in std_logic; -- (PC load signal)
           PI : in std_logic; -- (Increment enable signal)
           Clk : in std_logic;
           output : out std_logic_vector (31 downto 0)
    );
end PC32Bit_20332993;

architecture Behavioral of PC32Bit_20332993 is

component reg_20332993
port (
   D : in STD_LOGIC_VECTOR (31 downto 0);
   Load : in STD_LOGIC;
   CLK : in STD_LOGIC;
   Q : out STD_LOGIC_VECTOR (31 downto 0)
);
end component;

signal regout : std_logic_vector (31 downto 0);
signal regInput : std_logic_vector (31 downto 0);

begin

Reg : reg_20332993 PORT MAP (
    D => regInput,
    Load => PI,
    CLK => Clk,
    Q => regout
);

process(PI, Clk)
begin
    if (rising_edge(Clk)) then
      regInput <= input;
    end if;
    
    if (rising_edge(Clk)) then
      if(PI = '1') then
        regInput <= regout + std_logic_vector ( conv_std_logic_vector(1, 32) );
      end if;
    end if;
      
end process;
end Behavioral;
