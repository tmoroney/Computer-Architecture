library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath_20332993 is
    Port ( controlWord : in std_logic_vector (22 downto 0);
           extraSelects : in std_logic_vector (2 downto 0); -- DR SA SB
           dataIn : in std_logic_vector (31 downto 0);
           constantIn : in std_logic_vector (31 downto 0);
           Clk : in STD_LOGIC;
           VCNZflags : out std_logic_vector (3 downto 0);
           addressOut : out std_logic_vector (31 downto 0);
           dataOut : out std_logic_vector (31 downto 0)
    );
end datapath_20332993;

architecture Behavioral of datapath_20332993 is

component registerfile_20332993
Port ( Detination : in STD_LOGIC_VECTOR (4 downto 0);
       DataIn : in STD_LOGIC_VECTOR (31 downto 0);
       SelectA : in STD_LOGIC_VECTOR (4 downto 0);
       SelectB : in STD_LOGIC_VECTOR (4 downto 0);
       writeSignal : in STD_LOGIC;
       TD : in STD_LOGIC;
       TA : in STD_LOGIC;
       TB : in STD_LOGIC;
       CLK : in STD_LOGIC;
       Aout : out STD_LOGIC_VECTOR (31 downto 0);
       Bout : out STD_LOGIC_VECTOR (31 downto 0)
     );
end component;

component funit_20332993
Port ( A : in std_logic_vector (31 downto 0);
       B : in std_logic_vector (31 downto 0);
       S : in std_logic_vector (4 downto 0);
       VCNZflags : out std_logic_vector (3 downto 0);
       output : out std_logic_vector (31 downto 0)
     );
end component;  

component mux1_20332993
Port ( In0 : in std_logic_vector(31 downto 0);
       In1 : in std_logic_vector(31 downto 0);
       S : in std_logic;
       Z : out std_logic_vector(31 downto 0)); 
end component;

signal A, B : std_logic_vector (31 downto 0);
signal MuxBout : std_logic_vector (31 downto 0);
signal MuxDout : std_logic_vector (31 downto 0);
signal Fout : std_logic_vector (31 downto 0);


begin

RegisterFile : registerfile_20332993 Port Map (
      TD => extraSelects(0),
      TA => extraSelects(1),
      TB => extraSelects(2),
      writeSignal => controlWord(0),
      DataIn => MuxDout,
      SelectB(0) => controlWord(8),
      SelectB(1) => controlWord(9),
      SelectB(2) => controlWord(10),
      SelectB(3) => controlWord(11),
      SelectB(4) => controlWord(12),
      SelectA(0) => controlWord(13),
      SelectA(1) => controlWord(14),
      SelectA(2) => controlWord(15),
      SelectA(3) => controlWord(16),
      SelectA(4) => controlWord(17),
      Detination(0) => controlWord(18),
      Detination(1) => controlWord(19),
      Detination(2) => controlWord(20),
      Detination(3) => controlWord(21),
      Detination(4) => controlWord(22),
      CLK => Clk,
      Aout => A,
      Bout => B
);

MuxB : mux1_20332993 Port Map (
      In0 => B,
      In1 => constantIn,
      S => controlWord(7),
      Z => MuxBout
);

-- set outputs
addressOut <= A;
dataOut <= MuxBout;

FunctionalUnit : funit_20332993 Port Map (
      A => A,
      B => MuxBout,
      S => controlWord(6 downto 2),
      VCNZflags => VCNZflags,
      output => Fout
);

MuxD : mux1_20332993 Port Map (
      In0 => Fout,
      In1 => dataIn,
      S => controlWord(1),
      Z => MuxDout
);
       
end Behavioral;
