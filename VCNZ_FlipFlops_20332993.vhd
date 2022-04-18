library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VCNZ_FlipFlops_20332993 is
    Port ( VCNZflags : in std_logic_vector (3 downto 0);
           Clk : in std_logic;
           RZ : in std_logic;
           RN : in std_logic;
           RC : in std_logic;
           RV : in std_logic;
           FL : in std_logic;
           VCNZout : out std_logic_vector (3 downto 0)
     );
end VCNZ_FlipFlops_20332993;

architecture Behavioral of VCNZ_FlipFlops_20332993 is

begin

process (VCNZflags, Clk, RZ, RN, RC, RV, FL)
begin
    if(rising_edge(CLK)) then
    if(FL = '1' and RZ = '1' and VCNZflags(0) = '1') then   
      VCNZout(0) <= '0';
    else
      VCNZout(0) <= VCNZflags(0);
    end if;
    
    if(FL = '1' and RN = '1' and VCNZflags(1) = '1') then   
      VCNZout(1) <= '0';
    else
      VCNZout(1) <= VCNZflags(1);
    end if;
    
    if(FL = '1' and RC = '1' and VCNZflags(2) = '1') then   
      VCNZout(2) <= '0';
    else
      VCNZout(2) <= VCNZflags(2);
    end if;
    
    if(FL = '1' and RV = '1' and VCNZflags(3) = '1') then   
      VCNZout(3) <= '0';
    else
      VCNZout(3) <= VCNZflags(3);
    end if;
    end if;

end process;

end Behavioral;
