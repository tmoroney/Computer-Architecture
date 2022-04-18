library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VCNZ_FlipFlops_20332993_tb is
--  Port ( );
end VCNZ_FlipFlops_20332993_tb;

architecture Behavioral of VCNZ_FlipFlops_20332993_tb is

component VCNZ_FlipFlops_20332993
    Port ( VCNZflags : in std_logic_vector (3 downto 0);
           Clk : in std_logic;
           RZ : in std_logic;
           RN : in std_logic;
           RC : in std_logic;
           RV : in std_logic;
           FL : in std_logic;
           VCNZout : out std_logic_vector (3 downto 0)
     );
end component;

signal VCNZflags : std_logic_vector (3 downto 0);
signal Clk : std_logic := '0';
signal RZ : std_logic;
signal RN : std_logic;
signal RC : std_logic;
signal RV : std_logic;
signal FL : std_logic;
signal VCNZout : std_logic_vector (3 downto 0);

constant clock_period : time := 200 ns;

begin

uut: VCNZ_FlipFlops_20332993 Port Map (
      VCNZflags => VCNZflags,
      Clk => Clk,
      RZ => RZ,
      RN => RN,
      RC => RC,
      RV => RV,
      FL => FL,
      VCNZout => VCNZout
);

Clk <= not Clk after clock_period/2;

stim_proc: process
begin
    
    VCNZflags <= "1111";
    FL <= '0';
    
    RZ <= '1';
    RN <= '0'; 
    RC <= '1';
    RV <= '0';
    
    wait for 300ns;
    VCNZflags <= "1111";
    FL <= '1';
    RZ <= '1';
    RN <= '0'; 
    RC <= '1';
    RV <= '0';
    
    wait for 300ns;
    VCNZflags <= "1001";
    RZ <= '0';
    RN <= '1'; 
    RC <= '0';
    RV <= '1';

wait;
end process;



end Behavioral;
