library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity funit_20332993 is
    Port ( A : in std_logic_vector (31 downto 0);
           B : in std_logic_vector (31 downto 0);
           S : in std_logic_vector (4 downto 0);
           VCNZflags : out std_logic_vector (3 downto 0);
           output : out std_logic_vector (31 downto 0)
    );
end funit_20332993;

architecture Behavioral of funit_20332993 is

component ALU_20332993
Port ( carryIn : in std_logic;
       Ain : in std_logic_vector (31 downto 0);
       Bin : in std_logic_vector (31 downto 0);
       S0 : in std_logic;
       S1 : in std_logic;
       S2 : in std_logic;
       carryOut : out std_logic;
       overflowOut : out std_logic;
       Gout : out std_logic_vector (31 downto 0)
     );
end component;

component shifter_20332993
Port ( input : in std_logic_vector (31 downto 0);
       Ir : in std_logic;
       Il : in std_logic;
       S : in std_logic_vector (1 downto 0);
       output : out std_logic_vector (31 downto 0)
     );
end component;

component mux1_20332993
Port ( In0 : in std_logic_vector(31 downto 0);
       In1 : in std_logic_vector(31 downto 0);
       S : in std_logic;
       Z : out std_logic_vector(31 downto 0));
end component;

signal aluOut : STD_LOGIC_VECTOR (31 downto 0);
signal shifterOut : STD_LOGIC_VECTOR (31 downto 0);
signal carry : STD_LOGIC;
signal overflow : STD_LOGIC;

begin

ALU : ALU_20332993 PORT MAP (
    carryIn => S(0),
    Ain => A,
    Bin => B,
    S0 => S(1),
    S1 => S(2),
    S2 => S(3),
    carryOut => carry,
    overflowOut => overflow,
    Gout => aluOut
);

Shifter : shifter_20332993 PORT MAP (
    input => B,
    Ir => '0',
    Il => '0',
    S(0) => S(2),
    S(1) => S(3),
    output => shifterOut
);

MuxF : mux1_20332993 PORT MAP (
    S => S(4),
    In0 => aluOut, 
    In1 => shifterOut, 
    Z => output
);

process(aluOut)
    begin
    
    if(aluOut = x"00000000") then
    VCNZflags(0) <= '1'; 
    else VCNZflags(0) <= '0';
    end if;
    
    if(aluOut(31) = '1') then
    VCNZflags(1) <= '1';
    else VCNZflags(1) <= '0';
    end if;
    
    if(carry = '1') then
    VCNZflags(2) <= '1';
    else VCNZflags(2) <= '0';
    end if;
    
    if(overflow = '1') then
    VCNZflags(3) <= '1';
    else VCNZflags(3) <= '0';
    end if;
    end process;

--VCNZflags(0) <= '1' when aluOut = x"00000000";
--VCNZflags(1) <= '1' when aluOut = "1XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
--VCNZflags(2) <= '1' when carry <= '1';
--VCNZflags(3) <= '1' when overflow <= '1';

end Behavioral;
