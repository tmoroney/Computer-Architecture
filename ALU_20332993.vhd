library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_20332993 is
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
    
end ALU_20332993;

architecture Behavioral of ALU_20332993 is

component RippleCarryAdderSubtracter_20332993
Port ( s0 : in std_logic ;
       s1 : in std_logic ;
       B : in std_logic_vector (31 downto 0);
       A : in std_logic_vector (31 downto 0);
       Cin : in std_logic;
       Cout : out std_logic;
       G : out std_logic_vector(31 downto 0) ;
       V : out std_logic);
end component;

component logic_circuit_20332993
Port ( s0 : in std_logic;
       s1 : in std_logic;
       input1 : in std_logic_vector (31 downto 0);
       input2 : in std_logic_vector (31 downto 0);
       G : out std_logic_vector (31 downto 0));
end component;

component mux1_20332993
Port ( In0 : in std_logic_vector(31 downto 0);
       In1 : in std_logic_vector(31 downto 0);
       S : in std_logic;
       Z : out std_logic_vector(31 downto 0));
end component;

--signals
signal arithmeticOut : STD_LOGIC_VECTOR (31 downto 0);
signal logicOut : STD_LOGIC_VECTOR (31 downto 0);

begin

RCAS : RippleCarryAdderSubtracter_20332993 PORT MAP (
           A => Ain,
           B => Bin,
           s0 => s0,
           s1 => s1,
           Cin => carryIn,
           Cout => carryOut,
           G => arithmeticOut,
           V => overflowOut
);

Logic : logic_circuit_20332993 PORT MAP (
           input1 => Ain,
           input2 => Bin,
           s0 => S0,
           s1 => S1,
           G => logicOut
);

Mux : mux1_20332993 PORT MAP (
           S => S2,
           In0 => arithmeticOut, 
           In1 => logicOut, 
           Z => Gout
);
  
end Behavioral;
