library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microprocessor2_20332993_tb is
--  Port ( );
end microprocessor2_20332993_tb;

architecture Behavioral of microprocessor2_20332993_tb is

component microprocessor2_20332993
    Port ( IN_CAR : in std_logic_vector (16 downto 0);
           instructionAddress : in std_logic_vector (31 downto 0);
           SelectA : in std_logic_vector (4 downto 0);
           SelectB : in std_logic_vector (4 downto 0);
           Destination : in std_logic_vector (4 downto 0);
           constantIn : in std_logic_vector (31 downto 0);
           Clk : in STD_LOGIC;
           VCNZflags : out std_logic_vector (3 downto 0);
           instructions : out std_logic_vector (31 downto 0);
           RZ : out std_logic;
           RN : out std_logic; 
           RC : out std_logic;
           RV : out std_logic;
           PL : out std_logic; -- 18 (PC load signal)
           PI : out std_logic; -- 19 (Increment enable signal)
           IL : out std_logic; -- 20 (IR Load enable control signal - part of the control word)
           MC : out std_logic; -- 21 (Mux C determines source of the loaded address - Opcode or NA)
           MS : out std_logic_vector(2 downto 0); -- 22 to 24 (Mux S determines whether CAR is incremented on loaded)
           NA : out std_logic_vector(16 downto 0) -- 25 to 41 (Next Address)
    );
end component;

signal IN_CAR : std_logic_vector (16 downto 0);
signal instructionAddress : std_logic_vector (31 downto 0);
signal SelectA : std_logic_vector (4 downto 0);
signal SelectB : std_logic_vector (4 downto 0);
signal Destination : std_logic_vector (4 downto 0);
signal constantIn : std_logic_vector (31 downto 0);
signal Clock : std_logic := '0';
signal VCNZflags : std_logic_vector (3 downto 0);
signal instructions : std_logic_vector (31 downto 0);
signal RZ : std_logic;
signal RN : std_logic; 
signal RC : std_logic;
signal RV : std_logic;
signal PL : std_logic; -- 18 (PC load signal)
signal PI : std_logic; -- 19 (Increment enable signal)
signal IL : std_logic; -- 20 (IR Load enable control signal - part of the control word)
signal MC : std_logic; -- 21 (Mux C determines source of the loaded address - Opcode or NA)
signal MS : std_logic_vector(2 downto 0); -- 22 to 24 (Mux S determines whether CAR is incremented on loaded)
signal NA : std_logic_vector(16 downto 0); -- 25 to 41 (Next Address)

constant clock_period : time := 200 ns;

begin

uut: microprocessor2_20332993 Port Map (
    IN_CAR => IN_CAR,
    Clk => Clock,
    constantIn => constantIn,
    
    instructionAddress => instructionAddress,
    SelectA => SelectA,
    SelectB => SelectB,
    Destination => Destination,
    NA => NA,
    MS => MS, 
    MC => MC,
    IL => IL,
    PI => PI,   
    PL => PL,  
    RV => RV,    
    RC => RC,
    RN => RN,   
    RZ => RZ, 
    VCNZflags => VCNZflags,
    instructions => instructions
);

Clock <= not Clock after clock_period/2;

stim_proc: process
begin ----------------Load the registers
SelectA <= "00000";
SelectB <= "00000";
constantIn <= x"00000000";
IN_CAR(16 downto 8) <= "000000000";

IN_CAR(7 downto 0) <= x"00";
Destination <= "00000";
instructionAddress <= x"00000000";

wait until Clock'event and Clock = '1';
Destination <= "00001";
instructionAddress <= x"00000001";

wait until Clock'event and Clock = '1';
Destination <= "00010";
instructionAddress <= x"00000002";

wait until Clock'event and Clock = '1';
Destination <= "00011";
instructionAddress <= x"00000003";

wait until Clock'event and Clock = '1';
Destination <= "00100";
instructionAddress <= x"00000004";

wait until Clock'event and Clock = '1';
Destination <= "00101";
instructionAddress <= x"00000005";

wait until Clock'event and Clock = '1';
Destination <= "00110";
instructionAddress <= x"00000006";

wait until Clock'event and Clock = '1';
Destination <= "00111";
instructionAddress <= x"00000007";

wait until Clock'event and Clock = '1';
Destination <= "01000";
instructionAddress <= x"00000008";

wait until Clock'event and Clock = '1';
Destination <= "01001";
instructionAddress <= x"00000009";

wait until Clock'event and Clock = '1';
Destination <= "01010";
instructionAddress <= x"0000000a";

wait until Clock'event and Clock = '1';
Destination <= "01011";
instructionAddress <= x"0000000b";

wait until Clock'event and Clock = '1';
Destination <= "01100";
instructionAddress <= x"0000000c";

wait until Clock'event and Clock = '1';
Destination <= "01101";
instructionAddress <= x"0000000d";

wait until Clock'event and Clock = '1';
Destination <= "01110";
instructionAddress <= x"0000000e";

wait until Clock'event and Clock = '1';
Destination <= "01111";
instructionAddress <= x"0000000f";

wait until Clock'event and Clock = '1';
Destination <= "10000";
instructionAddress <= x"00000010";

wait until Clock'event and Clock = '1';
Destination <= "10001";
instructionAddress <= x"00000011";

wait until Clock'event and Clock = '1';
Destination <= "10010";
instructionAddress <= x"00000012";

wait until Clock'event and Clock = '1';
Destination <= "10011";
instructionAddress <= x"00000013";

wait until Clock'event and Clock = '1';
Destination <= "10100";
instructionAddress <= x"00000014";

wait until Clock'event and Clock = '1';
Destination <= "10101";
instructionAddress <= x"00000015";

wait until Clock'event and Clock = '1';
Destination <= "10110";
instructionAddress <= x"00000016";

wait until Clock'event and Clock = '1';
Destination <= "10111";
instructionAddress <= x"00000017";

wait until Clock'event and Clock = '1';
Destination <= "11000";
instructionAddress <= x"00000018";

wait until Clock'event and Clock = '1';
Destination <= "11001";
instructionAddress <= x"00000019";

wait until Clock'event and Clock = '1';
Destination <= "11010";
instructionAddress <= x"0000001a";

wait until Clock'event and Clock = '1';
Destination <= "11011";
instructionAddress <= x"0000001b";

wait until Clock'event and Clock = '1';
Destination <= "11100";
instructionAddress <= x"0000001c";

wait until Clock'event and Clock = '1';
Destination <= "11101";
instructionAddress <= x"0000001d";

wait until Clock'event and Clock = '1';
Destination <= "11110";
instructionAddress <= x"0000001e";

wait until Clock'event and Clock = '1';
Destination <= "11111";
instructionAddress <= x"0000001f";

wait until Clock'event and Clock = '1';
IN_CAR(7 downto 0) <= x"01";
instructionAddress <= x"00000020";

--------------------------------operations begin here
wait until Clock'event and Clock = '1';
Destination <= "00011";  --Dest = 3
SelectA <= "01000";  --SelectA = 3 + 5 = 8
SelectB <= "10010";  --SelectB = 3 + 15 = 18
IN_CAR(7 downto 0) <= x"02"; --A + not B

wait until Clock'event and Clock = '1'; --A or B
IN_CAR(7 downto 0) <= x"03";

wait until Clock'event and Clock = '1'; --A + B + 1
IN_CAR(7 downto 0) <= x"04";

wait until Clock'event and Clock = '1'; --A xor B 
IN_CAR(7 downto 0) <= x"05";

wait until Clock'event and Clock = '1'; --A + B
IN_CAR(7 downto 0) <= x"06";

wait until Clock'event and Clock = '1'; --sl B
IN_CAR(7 downto 0) <= x"07";

wait until Clock'event and Clock = '1'; --A
IN_CAR(7 downto 0) <= x"08";

wait until Clock'event and Clock = '1'; --B
IN_CAR(7 downto 0) <= x"09";

wait until Clock'event and Clock = '1'; --A + 1
IN_CAR(7 downto 0) <= x"0a";

wait until Clock'event and Clock = '1'; --A + not B + 1
IN_CAR(7 downto 0) <= x"0b";

wait until Clock'event and Clock = '1'; --A - 1
IN_CAR(7 downto 0) <= x"0c";

wait until Clock'event and Clock = '1'; --not A
IN_CAR(7 downto 0) <= x"0d";

wait until Clock'event and Clock = '1'; --A and B
IN_CAR(7 downto 0) <= x"0e";

wait until Clock'event and Clock = '1'; --sr B
IN_CAR(7 downto 0) <= x"0f";

wait until Clock'event and Clock = '1'; --A + B + 1
IN_CAR(7 downto 0) <= x"10";

wait until Clock'event and Clock = '1'; --A
IN_CAR(7 downto 0) <= x"11";

wait;
end process;



end Behavioral;
