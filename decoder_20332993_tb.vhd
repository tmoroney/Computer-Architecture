library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_20332993_tb is
--  Port ( );
end decoder_20332993_tb;

architecture Behavioral of decoder_20332993_tb is

component decoder_20332993
        port ( S : in std_logic_vector(4 downto 0);
               z : out std_logic_vector(31 downto 0));

end component;

     --signal
     signal S : std_logic_vector(4 downto 0) := (others => '0');

     signal z : std_logic_vector(31 downto 0) := (others => '0');

begin

uut: decoder_20332993 PORT MAP(
    z => z,

    S => S );

    -- Student Number: 00000001001101100100000111000001
    stim_process: process
    begin

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

    wait for 10 ns;
        S<= "10001";

    wait for 10 ns;
        S<= "10010";

    wait for 10 ns;
        S<= "10011";

    wait for 10 ns;
        S<= "10100";

    wait for 10 ns;
        S<= "10101";

    wait for 10 ns;
        S<= "10110";

    wait for 10 ns;
        S<= "10111";

    wait for 10 ns;
        S<= "11000";

    wait for 10 ns;
        S<= "11001";

    wait for 10 ns;
        S<= "11010";

    wait for 10 ns;
        S<= "11011";

    wait for 10 ns;
        S<= "11100";

    wait for 10 ns;
        S<= "11101";

    wait for 10 ns;
        S<= "11110";

    wait for 10 ns;
        S<= "11111";

END process;

end Behavioral;
