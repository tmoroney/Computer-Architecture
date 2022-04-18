library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity fulladder_20332993_tb is
--  Port ( );
end fulladder_20332993_tb;

architecture Behavioral of fulladder_20332993_tb is

component fulladder_20332993
Port (In1, In2, Cin: in std_logic;
        s, Cout : out std_logic);
end component;

signal In1, In2, Cin : std_logic;
signal s, Cout : std_logic;
    
begin

uut: fulladder_20332993 port map (
    In1 => In1,
    In2 => In2,
    Cin => Cin,
    s => s,
    Cout => Cout
);
       
stim_process : process
   begin
       In1 <= '0';
       In2 <= '1';
       Cin <= '0';
       wait;
   end process;


end Behavioral;
