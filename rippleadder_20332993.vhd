library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rippleadder_20332993 is
  port( A, B : in std_logic_vector(31 downto 0);
        c0 : in std_logic;
        S : out std_logic_vector(31 downto 0);
        overflow_out: out std_logic;
        carry_out: out std_logic);
end rippleadder_20332993;

architecture Behavioral of rippleadder_20332993 is
  component fulladder_20332993
    port(In1, In2, Cin : in std_logic;
         s, Cout : out std_logic);
  end component;
  
  signal C: std_logic_vector(31 downto 1);
  signal lastCarry : std_logic;
  
  begin
    Bit0: fulladder_20332993
      port map (B(0), A(0), c0, S(0), C(1));
    Bit1: fulladder_20332993
      port map (B(1), A(1), C(1), S(1), C(2));
    Bit2: fulladder_20332993
      port map (B(2), A(2), C(2), S(2), C(3));
    Bit3: fulladder_20332993
      port map (B(3), A(3), C(3), S(3), C(4));
    Bit4: fulladder_20332993
      port map (B(4), A(4), C(4), S(4), C(5));
    Bit5: fulladder_20332993
      port map (B(5), A(5), C(5), S(5), C(6));
    Bit6: fulladder_20332993
      port map (B(6), A(6), C(6), S(6), C(7));
    Bit7: fulladder_20332993
      port map (B(7), A(7), C(7), S(7), C(8));
    Bit8: fulladder_20332993
      port map (B(8), A(8), C(8), S(8), C(9));
    Bit9: fulladder_20332993
      port map (B(9), A(9), C(9), S(9), C(10));
    Bit10: fulladder_20332993
      port map (B(10), A(10), C(10), S(10), C(11));
    Bit11: fulladder_20332993
      port map (B(11), A(11), C(11), S(11), C(12));
    Bit12: fulladder_20332993
      port map (B(12), A(12), C(12), S(12), C(13));
    Bit13: fulladder_20332993
      port map (B(13), A(13), C(13), S(13), C(14));
    Bit14: fulladder_20332993
      port map (B(14), A(14), C(14), S(14), C(15));
    Bit15: fulladder_20332993
      port map (B(15), A(15), C(15), S(15), C(16));
    Bit16: fulladder_20332993
      port map (B(16), A(16), C(16), S(16), C(17));
    Bit17: fulladder_20332993
      port map (B(17), A(17), C(17), S(17), C(18));
    Bit18: fulladder_20332993
      port map (B(18), A(18), C(18), S(18), C(19));
    Bit19: fulladder_20332993
      port map (B(19), A(19), C(19), S(19), C(20));
    Bit20: fulladder_20332993
      port map (B(20), A(20), C(20), S(20), C(21));
    Bit21: fulladder_20332993
      port map (B(21), A(21), C(21), S(21), C(22));
    Bit22: fulladder_20332993
      port map (B(22), A(22), C(22), S(22), C(23));
    Bit23: fulladder_20332993
      port map (B(23), A(23), C(23), S(23), C(24));
    Bit24: fulladder_20332993
      port map (B(24), A(24), C(24), S(24), C(25));
    Bit25: fulladder_20332993
      port map (B(25), A(25), C(25), S(25), C(26));
    Bit26: fulladder_20332993
      port map (B(26), A(26), C(26), S(26), C(27));
    Bit27: fulladder_20332993
      port map (B(27), A(27), C(27), S(27), C(28));
    Bit28: fulladder_20332993
      port map (B(28), A(28), C(28), S(28), C(29));
    Bit29: fulladder_20332993
      port map (B(29), A(29), C(29), S(29), C(30));
    Bit30: fulladder_20332993
      port map (B(30), A(30), C(30), S(30), C(31));
    Bit31: fulladder_20332993
      port map (B(31), A(31), C(31), S(31), lastCarry);
      
    carry_out <= lastCarry;
    overflow_out <= C(31) xor lastCarry after 2 ns;

end Behavioral;
