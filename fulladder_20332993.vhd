library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fulladder_20332993 is
  port (In1, In2, Cin: in std_logic;
        s, Cout : out std_logic);
end fulladder_20332993;

architecture Behavioral of fulladder_20332993 is

begin
    s <= In1 xor In2 xor Cin;   -- sum of 2 bits
    Cout <= (In1 and In2) or (In1 and Cin) or (In2 and Cin);  -- there are 3 inputs
    -- have to check that all 3 parings equal to zero. If not, then the Carry out is set to 1
   
end Behavioral;
