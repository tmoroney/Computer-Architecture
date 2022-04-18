library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IR32Bit_20332993 is
    Port ( Input : in std_logic_vector (31 downto 0);
           Clk : in std_logic;
           IL : in std_logic;
           Opcode : out std_logic_vector (16 downto 0);
           DR : out std_logic_vector (4 downto 0);
           SA : out std_logic_vector (4 downto 0);
           SB : out std_logic_vector (4 downto 0)
    );
end IR32Bit_20332993;

architecture Behavioral of IR32Bit_20332993 is

component reg_20332993
port (
   D : in STD_LOGIC_VECTOR (31 downto 0);
   Load : in STD_LOGIC;
   CLK : in STD_LOGIC;
   Q : out STD_LOGIC_VECTOR (31 downto 0)
);
end component;

signal regout : std_logic_vector (31 downto 0);

begin

Reg : reg_20332993
 
PORT MAP (
    D => Input,
    Load => IL,
    CLK => Clk,
    Q => regout
);

SB <= regout(4 downto 0);
SA <= regout(9 downto 5);
DR <= regout(14 downto 10);
Opcode <= regout(31 downto 15);


end Behavioral;
