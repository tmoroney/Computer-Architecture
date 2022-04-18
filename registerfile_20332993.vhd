library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registerfile_20332993 is
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
end registerfile_20332993;

architecture Behavioral of registerfile_20332993 is

component decoder_6to32_20332993
port (
    S : in std_logic_vector (4 downto 0);
    Extra : in std_logic;
    z : out std_logic_vector(31 downto 0)
);
end component;

component mux_20332993
    Port ( S : in std_logic_vector (4 downto 0);
           Extra : in std_logic;
           In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10,
           In11, In12, In13, In14, In15, In16, In17, In18, In19, In20,
           In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31, In32 : in std_logic_vector(31 downto 0);
           Z : out std_logic_vector (31 downto 0));
end component;

component reg_20332993
port (
   D : in STD_LOGIC_VECTOR (31 downto 0);
   Load : in STD_LOGIC;
   CLK : in STD_LOGIC;
   Q : out STD_LOGIC_VECTOR (31 downto 0)
);
end component;

signal Load0 : std_logic;
signal Load1 : std_logic;
signal Load2 : std_logic;
signal Load3 : std_logic;
signal Load4 : std_logic;
signal Load5 : std_logic;
signal Load6 : std_logic;
signal Load7 : std_logic;
signal Load8 : std_logic;
signal Load9 : std_logic;
signal Load10 : std_logic;
signal Load11 : std_logic;
signal Load12 : std_logic;
signal Load13 : std_logic;
signal Load14 : std_logic;
signal Load15 : std_logic;
signal Load16 : std_logic;
signal Load17 : std_logic;
signal Load18 : std_logic;
signal Load19 : std_logic;
signal Load20 : std_logic;
signal Load21 : std_logic;
signal Load22 : std_logic;
signal Load23 : std_logic;
signal Load24 : std_logic;
signal Load25 : std_logic;
signal Load26 : std_logic;
signal Load27 : std_logic;
signal Load28 : std_logic;
signal Load29 : std_logic;
signal Load30 : std_logic;
signal Load31 : std_logic;
signal Load32 : std_logic;

signal regout0 : STD_LOGIC_VECTOR (31 downto 0);
signal regout1 : STD_LOGIC_VECTOR (31 downto 0);
signal regout2 : STD_LOGIC_VECTOR (31 downto 0);
signal regout3 : STD_LOGIC_VECTOR (31 downto 0);
signal regout4 : STD_LOGIC_VECTOR (31 downto 0);
signal regout5 : STD_LOGIC_VECTOR (31 downto 0);
signal regout6 : STD_LOGIC_VECTOR (31 downto 0);
signal regout7 : STD_LOGIC_VECTOR (31 downto 0);
signal regout8 : STD_LOGIC_VECTOR (31 downto 0);
signal regout9 : STD_LOGIC_VECTOR (31 downto 0);
signal regout10 : STD_LOGIC_VECTOR (31 downto 0);
signal regout11 : STD_LOGIC_VECTOR (31 downto 0);
signal regout12 : STD_LOGIC_VECTOR (31 downto 0);
signal regout13 : STD_LOGIC_VECTOR (31 downto 0);
signal regout14 : STD_LOGIC_VECTOR (31 downto 0);
signal regout15 : STD_LOGIC_VECTOR (31 downto 0);
signal regout16 : STD_LOGIC_VECTOR (31 downto 0);
signal regout17 : STD_LOGIC_VECTOR (31 downto 0);
signal regout18 : STD_LOGIC_VECTOR (31 downto 0);
signal regout19 : STD_LOGIC_VECTOR (31 downto 0);
signal regout20 : STD_LOGIC_VECTOR (31 downto 0);
signal regout21 : STD_LOGIC_VECTOR (31 downto 0);
signal regout22 : STD_LOGIC_VECTOR (31 downto 0);
signal regout23 : STD_LOGIC_VECTOR (31 downto 0);
signal regout24 : STD_LOGIC_VECTOR (31 downto 0);
signal regout25 : STD_LOGIC_VECTOR (31 downto 0);
signal regout26 : STD_LOGIC_VECTOR (31 downto 0);
signal regout27 : STD_LOGIC_VECTOR (31 downto 0);
signal regout28 : STD_LOGIC_VECTOR (31 downto 0);
signal regout29 : STD_LOGIC_VECTOR (31 downto 0);
signal regout30 : STD_LOGIC_VECTOR (31 downto 0);
signal regout31 : STD_LOGIC_VECTOR (31 downto 0);
signal regout32 : STD_LOGIC_VECTOR (31 downto 0);

signal decoderOut : STD_LOGIC_VECTOR (31 downto 0);

begin

Decoder : decoder_6to32_20332993
port map (
    S  => Detination,
    Extra => TD,
    z => decoderOut
);

Load0 <= (decoderOut(0) AND writeSignal) after 2 ns;
Load1 <= (decoderOut(1) AND writeSignal) after 2 ns;
Load2 <= (decoderOut(2) AND writeSignal) after 2 ns;
Load3 <= (decoderOut(3) AND writeSignal) after 2 ns;
Load4 <= (decoderOut(4) AND writeSignal) after 2 ns;
Load5 <= (decoderOut(5) AND writeSignal) after 2 ns;
Load6 <= (decoderOut(6) AND writeSignal) after 2 ns;
Load7 <= (decoderOut(7) AND writeSignal) after 2 ns;
Load8 <= (decoderOut(8) AND writeSignal) after 2 ns;
Load9 <= (decoderOut(9) AND writeSignal) after 2 ns;
Load10 <= (decoderOut(10) AND writeSignal) after 2 ns;
Load11 <= (decoderOut(11) AND writeSignal) after 2 ns;
Load12 <= (decoderOut(12) AND writeSignal) after 2 ns;
Load13 <= (decoderOut(13) AND writeSignal) after 2 ns;
Load14 <= (decoderOut(14) AND writeSignal) after 2 ns;
Load15 <= (decoderOut(15) AND writeSignal) after 2 ns;
Load16 <= (decoderOut(16) AND writeSignal) after 2 ns;
Load17 <= (decoderOut(17) AND writeSignal) after 2 ns;
Load18 <= (decoderOut(18) AND writeSignal) after 2 ns;
Load19 <= (decoderOut(19) AND writeSignal) after 2 ns;
Load20 <= (decoderOut(20) AND writeSignal) after 2 ns;
Load21 <= (decoderOut(21) AND writeSignal) after 2 ns;
Load22 <= (decoderOut(22) AND writeSignal) after 2 ns;
Load23 <= (decoderOut(23) AND writeSignal) after 2 ns;
Load24 <= (decoderOut(24) AND writeSignal) after 2 ns;
Load25 <= (decoderOut(25) AND writeSignal) after 2 ns;
Load26 <= (decoderOut(26) AND writeSignal) after 2 ns;
Load27 <= (decoderOut(27) AND writeSignal) after 2 ns;
Load28 <= (decoderOut(28) AND writeSignal) after 2 ns;
Load29 <= (decoderOut(29) AND writeSignal) after 2 ns;
Load30 <= (decoderOut(30) AND writeSignal) after 2 ns;
Load31 <= (decoderOut(31) AND writeSignal) after 2 ns;
Load32 <= (TD AND writeSignal) after 2 ns;

MuxA : mux_20332993 PORT MAP (
           S => SelectA,
           Extra => TA,
           In0 => regout0, 
           In1 => regout1, 
           In2 => regout2, 
           In3 => regout3,
           In4 => regout4, 
           In5 => regout5, 
           In6 => regout6, 
           In7 => regout7, 
           In8 => regout8, 
           In9 => regout9, 
           In10 => regout10, 
           In11 => regout11, 
           In12 => regout12, 
           In13 => regout13, 
           In14 => regout14, 
           In15 => regout15,
           In16 => regout16, 
           In17 => regout17, 
           In18 => regout18, 
           In19 => regout19, 
           In20 => regout20, 
           In21 => regout21, 
           In22 => regout22, 
           In23 => regout23, 
           In24 => regout24, 
           In25 => regout25, 
           In26 => regout26,
           In27 => regout27,
           In28 => regout28,
           In29 => regout29,
           In30 => regout30,
           In31 => regout31,
           In32 => regout32,
           
           Z => Aout   
        );
        
MuxB : mux_20332993 PORT MAP (
           S => SelectB,
           Extra => TB,
           In0 => regout0, 
           In1 => regout1, 
           In2 => regout2, 
           In3 => regout3,
           In4 => regout4, 
           In5 => regout5, 
           In6 => regout6, 
           In7 => regout7, 
           In8 => regout8, 
           In9 => regout9, 
           In10 => regout10, 
           In11 => regout11, 
           In12 => regout12, 
           In13 => regout13, 
           In14 => regout14, 
           In15 => regout15,
           In16 => regout16, 
           In17 => regout17, 
           In18 => regout18, 
           In19 => regout19, 
           In20 => regout20, 
           In21 => regout21, 
           In22 => regout22, 
           In23 => regout23, 
           In24 => regout24, 
           In25 => regout25, 
           In26 => regout26,
           In27 => regout27,
           In28 => regout28,
           In29 => regout29,
           In30 => regout30,
           In31 => regout31,
           In32 => regout32,
           
           Z => Bout
);
        

Register0 : reg_20332993
port map (
    D => DataIn,
    Load => Load0,
    CLK => CLK,
    Q => regout0
);

Register1 : reg_20332993
port map (
    D => DataIn,
    Load => Load1,
    CLK => CLK,
    Q => regout1
);

Register2 : reg_20332993
port map (
    D => DataIn,
    Load => Load2,
    CLK => CLK,
    Q => regout2
);

Register3 : reg_20332993
port map (
    D => DataIn,
    Load => Load3,
    CLK => CLK,
    Q => regout3
);

Register4 : reg_20332993
port map (
    D => DataIn,
    Load => Load4,
    CLK => CLK,
    Q => regout4
);

Register5 : reg_20332993
port map (
    D => DataIn,
    Load => Load5,
    CLK => CLK,
    Q => regout5
);

Register6 : reg_20332993
port map (
    D => DataIn,
    Load => Load6,
    CLK => CLK,
    Q => regout6
);

Register7 : reg_20332993
port map (
    D => DataIn,
    Load => Load7,
    CLK => CLK,
    Q => regout7
);

Register8 : reg_20332993
port map (
    D => DataIn,
    Load => Load8,
    CLK => CLK,
    Q => regout8
);
Register9 : reg_20332993
port map (
    D => DataIn,
    Load => Load9,
    CLK => CLK,
    Q => regout9
);
Register10 : reg_20332993
port map (
    D => DataIn,
    Load => Load10,
    CLK => CLK,
    Q => regout10
);
Register11 : reg_20332993
port map (
    D => DataIn,
    Load => Load11,
    CLK => CLK,
    Q => regout11
);
Register12 : reg_20332993
port map (
    D => DataIn,
    Load => Load12,
    CLK => CLK,
    Q => regout12
);
Register13 : reg_20332993
port map (
    D => DataIn,
    Load => Load13,
    CLK => CLK,
    Q => regout13
);
Register14 : reg_20332993
port map (
    D => DataIn,
    Load => Load14,
    CLK => CLK,
    Q => regout14
);
Register15 : reg_20332993
port map (
    D => DataIn,
    Load => Load15,
    CLK => CLK,
    Q => regout15
);
Register16 : reg_20332993
port map (
    D => DataIn,
    Load => Load16,
    CLK => CLK,
    Q => regout16
);
Register17 : reg_20332993
port map (
    D => DataIn,
    Load => Load17,
    CLK => CLK,
    Q => regout17
);
Register18 : reg_20332993
port map (
    D => DataIn,
    Load => Load18,
    CLK => CLK,
    Q => regout18
);
Register19 : reg_20332993
port map (
    D => DataIn,
    Load => Load19,
    CLK => CLK,
    Q => regout19
);
Register20 : reg_20332993
port map (
    D => DataIn,
    Load => Load20,
    CLK => CLK,
    Q => regout20
);
Register21 : reg_20332993
port map (
    D => DataIn,
    Load => Load21,
    CLK => CLK,
    Q => regout21
);
Register22 : reg_20332993
port map (
    D => DataIn,
    Load => Load22,
    CLK => CLK,
    Q => regout22
);
Register23 : reg_20332993
port map (
    D => DataIn,
    Load => Load23,
    CLK => CLK,
    Q => regout23
);
Register24 : reg_20332993
port map (
    D => DataIn,
    Load => Load24,
    CLK => CLK,
    Q => regout24
);
Register25 : reg_20332993
port map (
    D => DataIn,
    Load => Load25,
    CLK => CLK,
    Q => regout25
);
Register26 : reg_20332993
port map (
    D => DataIn,
    Load => Load26,
    CLK => CLK,
    Q => regout26
);
Register27 : reg_20332993
port map (
    D => DataIn,
    Load => Load27,
    CLK => CLK,
    Q => regout27
);
Register28 : reg_20332993
port map (
    D => DataIn,
    Load => Load28,
    CLK => CLK,
    Q => regout28
);
Register29 : reg_20332993
port map (
    D => DataIn,
    Load => Load29,
    CLK => CLK,
    Q => regout29
);
Register30 : reg_20332993
port map (
    D => DataIn,
    Load => Load30,
    CLK => CLK,
    Q => regout30
);
Register31 : reg_20332993
port map (
    D => DataIn,
    Load => Load31,
    CLK => CLK,
    Q => regout31
);
Register32 : reg_20332993
port map (
    D => DataIn,
    Load => Load32,
    CLK => CLK,
    Q => regout32
);

end Behavioral;