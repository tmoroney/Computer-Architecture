library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity microprocessor_20332993_tb is
--  Port ( );
end microprocessor_20332993_tb;

architecture Behavioral of microprocessor_20332993_tb is

component microprocessor_20332993
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
end component;

signal controlWord : std_logic_vector (22 downto 0);
signal extraSelects : std_logic_vector (2 downto 0); -- DR SA SB
signal instructionAddress : std_logic_vector(31 downto 0);
signal MB : std_logic;
signal constantIn : std_logic_vector (31 downto 0);
signal Clk : std_logic := '0';
signal write_enable : std_logic;
signal VCNZflags : std_logic_vector (3 downto 0);
signal instructions : std_logic_vector(31 downto 0);

constant clock_period : time := 25 ns;

begin

uut: microprocessor_20332993 port map (
    controlWord => controlWord,
    extraSelects => extraSelects,
    instructionAddress => instructionAddress,
    MB => MB,
    constantIn => constantIn,
    Clk => Clk,
    write_enable => write_enable,
    VCNZflags => VCNZflags,
    instructions => instructions
);

Clk <= not Clk after clock_period/2;

stim_process : process
begin 
    controlWord <= "00000000000000000000000";
    extraSelects <= "000";
    constantIn <= x"00000000";
    instructionAddress <= x"00000000";
    MB <= '1'; -- instructionAddress should be selected as input to Memory
    write_enable <= '0'; -- only needs to read from memory

    wait until Clk'event and Clk = '1';
    controlWord <= "00000100011000100000011"; -- register 1
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(93, 32) ); -- data at address 93
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00001100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(94, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00010100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(95, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00011100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(96, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00100100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(97, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00101100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(98, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00110100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(99, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00111100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(100, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01000100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(101, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01001100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(102, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01010100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(103, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01011100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(104, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01100100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(105, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01101100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(106, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01110100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(107, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01111100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(108, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10000100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(109, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10001100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(110, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10010100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(111, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10011100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(112, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10100100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(113, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10101100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(114, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10110100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(115, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10111100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(116, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11000100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(117, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11001100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(118, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11010100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(119, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11011100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(120, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11100100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(121, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11101100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(122, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11110100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(123, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11111100011000100000011";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(124, 32) );
    
    wait until Clk'event and Clk = '1';
    extraSelects <= "111";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(125, 32) );
    
    
    
    
    -- Calculate the 2's complement for every register and write the values into the same registers.
    -- After these operations every register holds the 2's complement of its previous value.
    
    wait until Clk'event and Clk = '1';
    extraSelects <= "000";
    controlWord <= "00000100011000100111001"; -- not R1
    wait until Clk'event and Clk = '1';
    controlWord <= "00000100011000100001001"; -- R1 + 1
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00001100011000100111001"; -- not R2
    wait until Clk'event and Clk = '1';
    controlWord <= "00001100011000100001001"; -- R2 + 1
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00010100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "00010100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00011100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "00011100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00100100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "00100100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00101100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "00101100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00110100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "00110100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00111100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "00111100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01000100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01000100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01001100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01001100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01010100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01010100011000100111001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01011100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01011100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01100100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01100100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01101100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01101100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01110100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01110100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01111100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "01111100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10000100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10000100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10001100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10001100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10010100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10010100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10011100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10011100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10100100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10100100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10101100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10101100011000100111001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10110100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10110100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10111100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "10111100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11000100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11000100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11001100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11001100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11010100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11010100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11011100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11011100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11100100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11100100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11101100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11101100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11110100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11110100011000100001001";
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11111100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11111100011000100001001";
    
    wait until Clk'event and Clk = '1';
    extraSelects <= "111";
    controlWord <= "11111100011000100111001";
    wait until Clk'event and Clk = '1';
    controlWord <= "11111100011000100001001";
    
    -- Transfer from registers to memory
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00000100011000100000001"; -- register 1
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(93, 32) ); -- data at address 93
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00001100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(94, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00010100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(95, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00011100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(96, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00100100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(97, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00101100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(98, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00110100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(99, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "00111100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(100, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01000100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(101, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01001100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(102, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01010100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(103, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01011100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(104, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01100100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(105, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01101100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(106, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01110100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(107, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "01111100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(108, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10000100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(109, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10001100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(110, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10010100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(111, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10011100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(112, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10100100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(113, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10101100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(114, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10110100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(115, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "10111100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(116, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11000100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(117, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11001100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(118, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11010100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(119, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11011100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(120, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11100100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(121, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11101100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(122, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11110100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(123, 32) );
    
    wait until Clk'event and Clk = '1';
    controlWord <= "11111100011000100000001";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(124, 32) );
    
    wait until Clk'event and Clk = '1';
    extraSelects <= "111";
    instructionAddress <= std_logic_vector ( conv_std_logic_vector(125, 32) );

wait;   
end process;

end Behavioral;
