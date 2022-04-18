library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microprocessor3_20332993 is
    Port ( IN_CAR : in std_logic_vector (16 downto 0);
           instructionAddress : in std_logic_vector (31 downto 0);
           SelectA : in std_logic_vector (4 downto 0);
           SelectB : in std_logic_vector (4 downto 0);
           Destination : in std_logic_vector (4 downto 0);
           constantIn : in std_logic_vector (31 downto 0);
           Clk : in STD_LOGIC;
           VCNZout : out std_logic_vector (3 downto 0);
           instructions : out std_logic_vector (31 downto 0);
           PL : out std_logic; -- 18 (PC load signal)
           PI : out std_logic; -- 19 (Increment enable signal)
           IL : out std_logic; -- 20 (IR Load enable control signal - part of the control word)
           MC : out std_logic; -- 21 (Mux C determines source of the loaded address - Opcode or NA)
           MS : out std_logic_vector(2 downto 0); -- 22 to 24 (Mux S determines whether CAR is incremented on loaded)
           NA : out std_logic_vector(16 downto 0) -- 25 to 41 (Next Address)
    );
end microprocessor3_20332993;

architecture Behavioral of microprocessor3_20332993 is

component control_memory_20332993
    Port ( IN_CAR : in std_logic_vector(16 downto 0);
           FL : out std_logic; -- 0
           RZ : out std_logic; -- 1 (Reset signal for Z flag)
           RN : out std_logic; -- 2 (Reset signal for N flag)
           RC : out std_logic; -- 3 (Reset signal for C flag)
           RV : out std_logic; -- 4 (Reset signal for V flag)
           MW : out std_logic; -- 5 (Write to memory)
           MM : out std_logic; -- 6 (Mux M select)
           RW : out std_logic; -- 7 (Write to registers)
           MD : out std_logic; -- 8 (Mux D select)
           FS : out std_logic_vector(4 downto 0); -- 9 to 13 (Function Unit)
           MB : out std_logic; -- 14 (Mux B select)
           TB : out std_logic; -- 15 (Bit to override SB)
           TA : out std_logic; -- 16 (Bit to override SA)
           TD : out std_logic; -- 17 (Bit to override DR)
           PL : out std_logic; -- 18 (PC load signal)
           PI : out std_logic; -- 19 (Increment enable signal)
           IL : out std_logic; -- 20 (IR Load enable control signal - part of the control word)
           MC : out std_logic; -- 21 (Mux C determines source of the loaded address - Opcode or NA)
           MS : out std_logic_vector(2 downto 0); -- 22 to 24 (Mux S determines whether CAR is incremented on loaded)
           NA : out std_logic_vector(16 downto 0) -- 25 to 41
         );
end component;

component memory_module_20332993
Port ( address : in std_logic_vector(31 downto 0);
       write_data : in std_logic_vector(31 downto 0);
       write_enable : in std_logic;
       clock : in std_logic;
       read_data : out std_logic_vector(31 downto 0)
     );
end component;

component datapath_20332993
Port ( controlWord : in std_logic_vector (22 downto 0);
       extraSelects : in std_logic_vector (2 downto 0); -- DR SA SB
       dataIn : in std_logic_vector (31 downto 0);
       constantIn : in std_logic_vector (31 downto 0);
       Clk : in STD_LOGIC;
       VCNZflags : out std_logic_vector (3 downto 0);
       addressOut : out std_logic_vector (31 downto 0);
       dataOut : out std_logic_vector (31 downto 0)
    );
end component;

component mux1_20332993
Port ( In0 : in std_logic_vector(31 downto 0);
       In1 : in std_logic_vector(31 downto 0);
       S : in std_logic;
       Z : out std_logic_vector(31 downto 0)
     );
end component;

component VCNZ_FlipFlops_20332993 is
Port ( VCNZflags : in std_logic_vector (3 downto 0);
       Clk : in std_logic;
       RZ : in std_logic;
       RN : in std_logic;
       RC : in std_logic;
       RV : in std_logic;
       FL : in std_logic;
       VCNZout : out std_logic_vector (3 downto 0)
     );
end component;

signal dataAddress : std_logic_vector (31 downto 0);
signal address : std_logic_vector (31 downto 0);
signal writeData : std_logic_vector (31 downto 0);
signal memoryOut : std_logic_vector (31 downto 0);
signal VCNZflags : std_logic_vector (3 downto 0);

signal FL : std_logic; -- 0
signal RZ : std_logic; -- 1
signal RN : std_logic; -- 2
signal RC : std_logic; -- 3
signal RV : std_logic; -- 4
signal MW : std_logic; -- 5
signal MM : std_logic; -- 6
signal RW : std_logic; -- 7
signal MD : std_logic; -- 8
signal FS : std_logic_vector(4 downto 0); -- 9 to 13
signal MB : std_logic; -- 14
signal TB : std_logic; -- 15
signal TA : std_logic; -- 16
signal TD : std_logic; -- 17
-- signal PL : std_logic; -- 18
-- signal PI : std_logic; -- 19
-- signal IL : std_logic; -- 20
-- signal MC : std_logic; -- 21
-- signal MS : std_logic_vector(2 downto 0); -- 22 to 24
--signal NA : std_logic_vector(16 downto 0); -- 25 to 41

begin

Control_Memory: control_memory_20332993 Port Map (
      IN_CAR => IN_CAR,
      FL => FL,
      RZ => RZ,
      RN => RN,
      RC => RC,
      RV => RV,
      MW => MW,
      RW => RW,
      MM => MM,
      MD => MD,
      FS => FS,
      MB => MB,
      TB => TB,
      TA => TA,
      TD => TD,
      PL => PL,
      PI => PI,
      IL => IL,
      MC => MC,
      MS => MS,
      NA => NA
    );      

MuxM: mux1_20332993 Port Map (
      In0 => dataAddress,
      In1 => instructionAddress,
      S => MM,
      Z => address
    );

Memory : memory_module_20332993 Port Map (
      address => address,
      write_data => writeData,
      write_enable => MW,
      clock => Clk,
      read_data => memoryOut
    );
    
instructions <= memoryOut;

Datapath : datapath_20332993 Port Map (
      controlWord(0) => RW,
      controlWord(1) => MD,
      controlWord(6 downto 2) => FS,
      controlWord(7) => MB,
      controlWord(12 downto 8) => SelectB,
      controlWord(17 downto 13) => SelectA,
      controlWord(22 downto 18) => Destination,
      extraSelects(0) => TD,
      extraSelects(1) => TA,
      extraSelects(2) => TB,
      dataIn => memoryOut,
      constantIn => constantIn,
      Clk => Clk,
      VCNZflags => VCNZflags,
      addressOut => dataAddress,
      dataOut => writeData
    );
    
VCNZ_FlipFlops : VCNZ_FlipFlops_20332993 Port Map (
      VCNZflags => VCNZflags,
      Clk => Clk,
      RZ => RZ,
      RN => RN,
      RC => RC,
      RV => RV,
      FL => FL,
      VCNZout => VCNZout
);


end Behavioral;
