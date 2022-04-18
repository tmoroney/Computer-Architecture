library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity microprocessor_20332993 is
    Port ( controlWord : in std_logic_vector (22 downto 0);
           extraSelects : in std_logic_vector (2 downto 0); -- DR SA SB
           instructionAddress : in std_logic_vector (31 downto 0);
           MB : in std_logic;
           constantIn : in std_logic_vector (31 downto 0);
           Clk : in STD_LOGIC;
           write_enable : in std_logic;
           VCNZflags : out std_logic_vector (3 downto 0);
           instructions : out std_logic_vector (31 downto 0)
    );
    
end microprocessor_20332993;

architecture Behavioral of microprocessor_20332993 is

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

signal dataAddress : std_logic_vector (31 downto 0);
signal address : std_logic_vector (31 downto 0);
signal writeData : std_logic_vector (31 downto 0);
signal memoryOut : std_logic_vector (31 downto 0);

begin

MuxM: mux1_20332993 Port Map (
      In0 => dataAddress,
      In1 => instructionAddress,
      S => MB,
      Z => address
    );

Memory : memory_module_20332993 Port Map (
      address => address,
      write_data => writeData,
      write_enable => write_enable,
      clock => Clk,
      read_data => memoryOut
    );
    
instructions <= memoryOut;

Datapath : datapath_20332993 Port Map (
      controlWord => controlWord,
      extraSelects => extraSelects, -- DR SA SB
      dataIn => memoryOut,
      constantIn => constantIn,
      Clk => Clk,
      VCNZflags => VCNZflags,
      addressOut => dataAddress,
      dataOut => writeData
    );
    
end Behavioral;
