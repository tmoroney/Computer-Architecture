library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RippleCarryAdderSubtractor_20332993_tb is
--  Port ( );
end RippleCarryAdderSubtractor_20332993_tb;

architecture Behavioral of RippleCarryAdderSubtractor_20332993_tb is

component RippleCarryAdderSubtracter_20332993
Port ( s0 : in std_logic ;
       s1 : in std_logic ;
       B : in std_logic_vector (31 downto 0);
       A : in std_logic_vector (31 downto 0);
       Cin : in std_logic;
       Cout : out std_logic;
       G : out std_logic_vector(31 downto 0) ;
       V : out std_logic
);
end component;

signal s0 : std_logic ;
signal s1 : std_logic ;
signal A : std_logic_vector (31 downto 0);
signal B : std_logic_vector (31 downto 0);
signal Cin : std_logic ;
signal Cout : std_logic ;
signal G : std_logic_vector (31 downto 0);
signal V : std_logic; 

begin

uut: RippleCarryAdderSubtracter_20332993 PORT MAP (
    s0 => s0,
    s1 => s1,
    A => A,
    B => B,
    Cin => Cin,
    Cout => Cout,
    G => G,
    V => V
);

stim_process : process
    begin
        A <= x"20332993";       --A
        B <= x"000000BB";
        cin <= '0';
        s0 <= '0';
        s1 <= '0';
        
        wait for 100 ns;        --A + 1
        cin <= '1';
        s0 <= '0';
        s1 <= '0';
        
        wait for 100 ns;        --A + B
        cin <= '0';
        s0 <= '0';
        s1 <= '1';
        
        wait for 100 ns;        --A + B + 1
        cin <= '1';
        s0 <= '0';
        s1 <= '1';
        
        wait for 100 ns;        --A + not B
        cin <= '0';
        s0 <= '1';
        s1 <= '0';
        
        wait for 100 ns;        --A + not B + 1
        cin <= '1';
        s0 <= '1';
        s1 <= '0';
        
        wait for 100 ns;        --A - 1
        cin <= '0';
        s0 <= '1';
        s1 <= '1';
        
        wait;

    end process;



end Behavioral;
