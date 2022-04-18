library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdderSubtracter_20332993 is
    Port ( s0 : in std_logic ;
           s1 : in std_logic ;
           B : in std_logic_vector (31 downto 0);
           A : in std_logic_vector (31 downto 0);
           Cin : in std_logic;
           Cout : out std_logic;
           G : out std_logic_vector(31 downto 0) ;
           V : out std_logic
         );
end RippleCarryAdderSubtracter_20332993;

architecture Behavioral of RippleCarryAdderSubtracter_20332993 is

component rippleadder_20332993
Port ( A, B : in std_logic_vector(31 downto 0);
       c0 : in std_logic;
       S : out std_logic_vector(31 downto 0);
       overflow_out: out std_logic;
       carry_out: out std_logic
     );
end component;

signal Y : std_logic_vector (31 downto 0);

begin
    Ripple_Adder : rippleadder_20332993
    port map (
        A => A,
        B => Y,
        c0 => Cin,
        carry_out => Cout,
        overflow_out => V,
        S => G
    );
    
    Y <= x"00000000" when s0 <= '0' and s1 <= '0' Else
    B when s0 <= '0' and s1 <= '1' else
    not B when s0 <= '1' and s1 <= '0' else
    x"ffffffff"; 

end Behavioral;
