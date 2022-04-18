library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_20332993_tb is
--  Port ( );
end mux_20332993_tb;

architecture Behavioral of mux_20332993_tb is

component mux_20332993
    Port ( In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10,
           In11, In12, In13, In14, In15, In16, In17, In18, In19, In20,
           In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31, In32 : in std_logic_vector(31 downto 0);
           S : in std_logic_vector(4 downto 0);
           Extra : in std_logic;
           Z : out std_logic_vector(31 downto 0)
         );
end component;

signal In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10,
       In11, In12, In13, In14, In15, In16, In17, In18, In19, In20,
       In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31, In32 : std_logic_vector(31 downto 0):= (others => '0');
signal S : std_logic_vector(4 downto 0);
signal Extra : std_logic;
signal Z : std_logic_vector(31 downto 0);

begin
uut: mux_20332993 PORT MAP(
    In0 => In0,
    In1 => In1,
    In2 => In2,
    In3 => In3,
    In4 => In4,
    In5 => In5,
    In6 => In6,
    In7 => In7,
    In8 => In8,
    In9 => In9,
    In10 => In10,
    In11 => In11,
    In12 => In12,
    In13 => In13,
    In14 => In14,
    In15 => In15,
    In16 => In16,
    In17 => In17,
    In18 => In18,
    In19 => In19,
    In20 => In20,
    In21 => In21,
    In22 => In22,
    In23 => In23,
    In24 => In24,
    In25 => In25,
    In26 => In26,
    In27 => In27,
    In28 => In28,
    In29 => In29,
    In30 => In30,
    In31 => In31,
    In32 => In32,
    Extra => Extra,
    Z => Z,
    S => S );
    
    -- Student Number: 00000001001101100100000111000001
    stim_process: process
    begin
        Extra <= '0';
        In0 <= "00000000000000000000000000000001";
        In1 <= "00000000000000000000000000000010";
        In2 <= "00000000000000000000000000000011";
        In3 <= "00000000000000000000000000000100";
        In4 <= "00000000000000000000000000000101";
        In5 <= "00000000000000000000000000000110";
        In6 <= "00000000000000000000000000000111";
        In7 <= "00000000000000000000000000001000";
        In8 <= "00000000000000000000000000001001";
        In9 <= "00000000000000000000000000001010";
        In10 <= "00000000000000000000000000001011";
        In11 <= "00000000000000000000000000001100";
        In12 <= "00000000000000000000000000001101";
        In13 <= "00000000000000000000000000001110";
        In14 <= "00000000000000000000000000001111";
        In15 <= "00000000000000000000000000010000";
        In16 <= "00000000000000000000000000010001";
        In17 <= "00000000000000000000000000010010";
        In18 <= "00000000000000000000000000010011";
        In19 <= "00000000000000000000000000010100";
        In20 <= "00000000000000000000000000010101";
        In21 <= "00000000000000000000000000010110";
        In22 <= "00000000000000000000000000010111";
        In23 <= "00000000000000000000000000011000";
        In24 <= "00000000000000000000000000011001";
        In25 <= "00000000000000000000000000011010";
        In26 <= "00000000000000000000000000011011";
        In27 <= "00000000000000000000000000011100";
        In28 <= "00000000000000000000000000011101";
        In29 <= "00000000000000000000000000011110";
        In30 <= "00000000000000000000000000011111";
        In31 <= "00000000000000000000000000100000";
        In32 <= "11111111111111111111111111111111";

    wait for 10 ns;
        S<= "00000";

    wait for 10 ns;
        S<= "00001";

    wait for 10 ns;
        S<= "00010";

    wait for 10 ns;
        S<= "00011";

    wait for 10 ns;
        S<= "00100";

    wait for 10 ns;
        S<= "00101";

    wait for 10 ns;
        S<= "00110";

    wait for 10 ns;
        S<= "00111";

    wait for 10 ns;
        S<= "01000";

    wait for 10 ns;
        S<= "01001";

    wait for 10 ns;
        S<= "01010";

    wait for 10 ns;
        S<= "01011";

    wait for 10 ns;
        S<= "01100";

    wait for 10 ns;
        S<= "01101";

    wait for 10 ns;
        S<= "01110";

    wait for 10 ns;
        S<= "01111";

    wait for 10 ns;
        S<= "10000";

END process;
    
end Behavioral;
