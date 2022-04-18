library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath_20332993_tb is
--  Port ( );
end datapath_20332993_tb;

architecture Behavioral of datapath_20332993_tb is

component datapath_20332993
    Port ( controlWord : in std_logic_vector (22 downto 0);
           dataIn : in std_logic_vector (31 downto 0);
           constantIn : in std_logic_vector (31 downto 0);
           Clk : in STD_LOGIC;
           VCNZflags : out std_logic_vector (3 downto 0);
           addressOut : out std_logic_vector (31 downto 0);
           dataOut : out std_logic_vector (31 downto 0)
    );
end component;

signal controlWord : std_logic_vector (22 downto 0);
signal Clk : std_logic := '0';
signal constantIn : std_logic_vector (31 downto 0);
signal dataIn : std_logic_vector (31 downto 0);

signal VCNZflags : std_logic_vector (3 downto 0);
signal addressOut : std_logic_vector (31 downto 0);
signal dataOut : std_logic_vector (31 downto 0);

constant clock_period : time := 200 ns;

begin

uut: datapath_20332993 port map (
    controlWord => controlWord,
    dataIn => dataIn,
    constantIn => constantIn,
    Clk => Clk,
    VCNZflags => VCNZflags,
    addressOut => addressOut,
    dataOut => dataOut
);

Clk <= not Clk after clock_period/2;

stim_process: process
    begin
    controlWord <= "00000000000000000000000";
    constantIn <= x"00000000";
    dataIn <= x"00000000";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00000100011000100000011";
    dataIn <= x"20332993";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00001100011000100000011";
    dataIn <= x"20332992";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00010100011000100000011";
    dataIn <= x"20332991";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00011100011000100000011";
    dataIn <= x"20332990";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00100100011000100000011";
    dataIn <= x"20332989";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00101100011000100000011";
    dataIn <= x"20332988";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00110100011000100000011";
    dataIn <= x"20332987";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00111100011000100000011";
    dataIn <= x"20332986";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01000100011000100000011";
    dataIn <= x"20332985";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01001100011000100000011";
    dataIn <= x"20332984";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01010100011000100000011";
    dataIn <= x"20332983";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01011100011000100000011";
    dataIn <= x"20332982";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01100100011000100000011";
    dataIn <= x"20332981";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01101100011000100000011";
    dataIn <= x"20332980";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01110100011000100000011";
    dataIn <= x"20332979";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01111100011000100000011";
    dataIn <= x"20332978";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10000100011000100000011";
    dataIn <= x"20332977";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10001100011000100000011";
    dataIn <= x"20332976";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10010100011000100000011";
    dataIn <= x"20332975";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10011100011000100000011";
    dataIn <= x"20332974";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10100100011000100000011";
    dataIn <= x"20332973";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10101100011000100000011";
    dataIn <= x"20332972";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10110100011000100000011";
    dataIn <= x"20332971";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10111100011000100000011";
    dataIn <= x"20332970";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11000100011000100000011";
    dataIn <= x"20332969";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11001100011000100000011";
    dataIn <= x"20332968";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11010100011000100000011";
    dataIn <= x"20332967";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11011100011000100000011";
    dataIn <= x"20332966";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11100100011000100000011";
    dataIn <= x"20332965";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11101100011000100000011";
    dataIn <= x"20332964";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11110100011000100000011";
    dataIn <= x"20332963";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11111100011000100000011";
    dataIn <= x"20332962";
    
    --destination reg = 2, addressA = 7, addressB = 17                                        
    wait until Clk'event and Clk = '1';         --A + B + 1
    controlWord <= "00010001111000100001101";
    
    wait until Clk'event and Clk = '1';         --A xor B
    controlWord <= "00010001111000100110001";
    
    wait until Clk'event and Clk = '1';         --A + B 
    controlWord <= "00010001111000100001001";
    
    wait until Clk'event and Clk = '1';         --A & B 
    controlWord <= "00010001111000100100001";
    
    wait until Clk'event and Clk = '1';         --A 
    controlWord <= "00010001111000100000001";
    
    wait until Clk'event and Clk = '1';         --B
    controlWord <= "00010001111000101000001";
    
    wait until Clk'event and Clk = '1';         --not A 
    controlWord <= "00010001111000100111001";
    
    wait until Clk'event and Clk = '1';         --A + not B + 1
    controlWord <= "00010001111000100010101";
    
    wait until Clk'event and Clk = '1';         --sr B
    controlWord <= "00010001111000101100001";
    
    wait until Clk'event and Clk = '1';         --A + not B
    controlWord <= "00010001111000100010001";
    
    wait until Clk'event and Clk = '1';         --sl B
    controlWord <= "00010001111000101010001";
    
    wait until Clk'event and Clk = '1';         --A - 1
    controlWord <= "00010001111000100011001";
    
    wait until Clk'event and Clk = '1';         --A 
    controlWord <= "00010001111000100011101";
    
    wait until Clk'event and Clk = '1';         --A or B
    controlWord <= "00010001111000100101001";
    
    --constantIn swap
    
    wait until Clk'event and Clk = '1';         --A + B + 1
    constantIn <= x"20332993";
    controlWord <= "00010001111000110001101";
   
    wait until Clk'event and Clk = '1';        --A xor B 
    controlWord <= "00010001111000110110001";
   
    wait until Clk'event and Clk = '1';        --A + B 
    controlWord <= "00010001111000110001001";
   
    wait until Clk'event and Clk = '1';        --A & B 
    controlWord <= "00010001111000110100001";
   
    wait until Clk'event and Clk = '1';        --B
    controlWord <= "00010001111000111000001";
   
    wait until Clk'event and Clk = '1';        --A + not B + 1
    controlWord <= "00010001111000110010101";
   
    wait until Clk'event and Clk = '1';        --sr B
    controlWord <= "00010001111000111100001";
   
    wait until Clk'event and Clk = '1';        --A + not B 
    controlWord <= "00010001111000110010001";
   
    wait until Clk'event and Clk = '1';        --sl B
    controlWord <= "00010001111000111010001";
   
    wait until Clk'event and Clk = '1';        --A or B
    controlWord <= "00010001111000110101001";
    
wait;    
end process;

end Behavioral;
