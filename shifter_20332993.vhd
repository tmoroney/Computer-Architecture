library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shifter_20332993 is
    Port ( input : in std_logic_vector (31 downto 0);
           Ir : in std_logic;
           Il : in std_logic;
           S : in std_logic_vector (1 downto 0);
           output : out std_logic_vector (31 downto 0)
    );
end shifter_20332993;

architecture Behavioral of shifter_20332993 is

component mux3_20332993
    Port ( In0 : in std_logic;
           In1 : in std_logic;
           In2 : in std_logic;
           S : in std_logic_vector(1 downto 0);
           Z : out std_logic);
end component;

begin

Mux0 : mux3_20332993 PORT MAP (input(0), input(1), Il, S, output(0) );
Mux1 : mux3_20332993 PORT MAP (input(1), input(2), input(0), S, output(1) );
Mux2 : mux3_20332993 PORT MAP (input(2), input(3), input(1), S, output(2) );
Mux3 : mux3_20332993 PORT MAP (input(3), input(4), input(2), S, output(3) );  
Mux4 : mux3_20332993 PORT MAP (input(4), input(5), input(3), S, output(4) );  
Mux5 : mux3_20332993 PORT MAP (input(5), input(6), input(4), S, output(5) );
Mux6 : mux3_20332993 PORT MAP (input(6), input(7), input(5), S, output(6) );
Mux7 : mux3_20332993 PORT MAP (input(7), input(8), input(6), S, output(7) );
Mux8 : mux3_20332993 PORT MAP (input(8), input(9), input(7), S, output(8) );  
Mux9 : mux3_20332993 PORT MAP (input(9), input(10), input(8), S, output(9) );
Mux10 : mux3_20332993 PORT MAP (input(10), input(11), input(9), S, output(10) );
Mux11 : mux3_20332993 PORT MAP (input(11), input(12), input(10), S, output(11) );
Mux12 : mux3_20332993 PORT MAP (input(12), input(13), input(11), S, output(12) );
Mux13 : mux3_20332993 PORT MAP (input(13), input(14), input(12), S, output(13) );
Mux14 : mux3_20332993 PORT MAP (input(14), input(15), input(13), S, output(14) );
Mux15 : mux3_20332993 PORT MAP (input(15), input(16), input(14), S, output(15) );
Mux16 : mux3_20332993 PORT MAP (input(16), input(17), input(15), S, output(16) );
Mux17 : mux3_20332993 PORT MAP (input(17), input(18), input(16), S, output(17) );
Mux18 : mux3_20332993 PORT MAP (input(18), input(19), input(17), S, output(18) );
Mux19 : mux3_20332993 PORT MAP (input(19), input(20), input(18), S, output(19) );
Mux20 : mux3_20332993 PORT MAP (input(20), input(21), input(19), S, output(20) );
Mux21 : mux3_20332993 PORT MAP (input(21), input(22), input(20), S, output(21) );
Mux22 : mux3_20332993 PORT MAP (input(22), input(23), input(21), S, output(22) );
Mux23 : mux3_20332993 PORT MAP (input(23), input(24), input(22), S, output(23) );
Mux24 : mux3_20332993 PORT MAP (input(24), input(25), input(23), S, output(24) );
Mux25 : mux3_20332993 PORT MAP (input(25), input(26), input(24), S, output(25) );
Mux26 : mux3_20332993 PORT MAP (input(26), input(27), input(25), S, output(26) );
Mux27 : mux3_20332993 PORT MAP (input(27), input(28), input(26), S, output(27) );
Mux28 : mux3_20332993 PORT MAP (input(28), input(29), input(27), S, output(28) );
Mux29 : mux3_20332993 PORT MAP (input(29), input(30), input(28), S, output(29) );
Mux30 : mux3_20332993 PORT MAP (input(30), input(31), input(29), S, output(30) );
Mux31 : mux3_20332993 PORT MAP (input(31), Ir, input(30), S, output(31) );       
 
end Behavioral;
