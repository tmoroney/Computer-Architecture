library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_memory_20332993_tb is
--  Port ( );
end control_memory_20332993_tb;

architecture Behavioral of control_memory_20332993_tb is

component control_memory_20332993 is
    Port ( IN_CAR : in std_logic_vector(16 downto 0);
           FL : out std_logic; -- 0
           RZ : out std_logic; -- 1
           RN : out std_logic; -- 2
           RC : out std_logic; -- 3
           RV : out std_logic; -- 4
           MW : out std_logic; -- 5
           MM : out std_logic; -- 6
           RW : out std_logic; -- 7
           MD : out std_logic; -- 8
           FS : out std_logic_vector(4 downto 0); -- 9 to 13
           MB : out std_logic; -- 14
           TB : out std_logic; -- 15
           TA : out std_logic; -- 16
           TD : out std_logic; -- 17
           PL : out std_logic; -- 18
           PI : out std_logic; -- 19
           IL : out std_logic; -- 20
           MC : out std_logic; -- 21
           MS : out std_logic_vector(2 downto 0); -- 22 to 24
           NA : out std_logic_vector(16 downto 0) -- 25 to 41
    );
end component;

signal IN_CAR : std_logic_vector(16 downto 0);
signal FL : std_logic; -- 0
signal RZ : std_logic; -- 1
signal RN : std_logic; -- 2
signal RC : std_logic; -- 3
signal RV : std_logic; -- 4
signal MW : std_logic; -- 5
signal MM : std_logic; -- 6
signal RW : std_logic; -- 7
signal MD : std_logic; -- 8
signal FS : std_logic_vector(4 downto 0); -- 9 to 13
signal MB : std_logic; -- 14
signal TB : std_logic; -- 15
signal TA : std_logic; -- 16
signal TD : std_logic; -- 17
signal PL : std_logic; -- 18
signal PI : std_logic; -- 19
signal IL : std_logic; -- 20
signal MC : std_logic; -- 21
signal MS : std_logic_vector(2 downto 0); -- 22 to 24
signal NA : std_logic_vector(16 downto 0); -- 25 to 41

begin

uut: control_memory_20332993 port map (
    IN_CAR => IN_CAR,
    FL => FL,
    RZ => RZ,
    RN => RN,
    RC => RC,
    RV => RV,
    MW => MW,
    MM => MM,
    MD => MD,
    FS => FS,
    MB => MB,
    TB => TB,
    TA => TA,
    TD => TD,
    PL => PL,
    PI => PI,
    IL => IL,
    MC => MC,
    MS => MS,
    NA => NA 
);
    
stim_process : process
begin
	for I in 0 to 255 loop
	  IN_CAR <= std_logic_vector ( conv_std_logic_vector(I, 17) ) after 10ns;
	end loop;
	
	wait; 
end process;

end Behavioral;
