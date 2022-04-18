library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_20332993 is
  Port ( In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10,
         In11, In12, In13, In14, In15, In16, In17, In18, In19, In20,
         In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31, In32 : in std_logic_vector(31 downto 0);
         S : in std_logic_vector(4 downto 0);
         Extra : in std_logic;
         Z : out std_logic_vector(31 downto 0));
end mux_20332993;

architecture Behavioral of mux_20332993 is

begin

  process (s, Extra, In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10,
         In11, In12, In13, In14, In15, In16, In17, In18, In19, In20,
         In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31, In32)
    begin
    if(Extra='1') then
      z <= In32;
    else   
    case s is 
      when "00000" => z <= In0;
      when "00001" => z <= In1; 
      when "00010" => z <= In2;
      when "00011" => z <= In3;
      when "00100" => z <= In4;
      when "00101" => z <= In5;
      when "00110" => z <= In6;
      when "00111" => z <= In7;
      when "01000" => z <= In8;
      when "01001" => z <= In9;
      when "01010" => z <= In10;
      when "01011" => z <= In11;
      when "01100" => z <= In12;
      when "01101" => z <= In13;
      when "01110" => z <= In14;
      when "01111" => z <= In15;
      when "10000" => z <= In16;
      when "10001" => z <= In17;
      when "10010" => z <= In18;
      when "10011" => z <= In19;
      when "10100" => z <= In20;
      when "10101" => z <= In21;
      when "10110" => z <= In22;
      when "10111" => z <= In23;
      when "11000" => z <= In24;
      when "11001" => z <= In25;
      when "11010" => z <= In26;
      when "11011" => z <= In27;
      when "11100" => z <= In28;
      when "11101" => z <= In29;
      when "11110" => z <= In30;
      when "11111" => z <= In31;
      when others => z <= In0;
    end case;
    end if;
END process;

end Behavioral;
