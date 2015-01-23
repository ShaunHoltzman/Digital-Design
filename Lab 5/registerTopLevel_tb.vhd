library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY registerTopLevel_tb IS 
	END registerTopLevel_tb;
	
ARCHITECTURE TB OF registerTopLevel_tb IS 

	
			SIGNAL CLK    : STD_LOGIC := '0';
			SIGNAL ENa    : STD_LOGIC := '0';
			SIGNAL ENb    : STD_LOGIC := '0';
			SIGNAL LDa    : STD_LOGIC := '0';
			SIGNAL LDb    : STD_LOGIC := '0';
			SIGNAL Da     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			SIGNAL Db     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			SIGNAL Q      : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
BEGIN

	 UUT : ENTITY work.registerTopLevel
    PORT MAP
	 (
      CLK  => CLK,
		ENa => ENa,
		ENb => ENb,
		LDa => LDa,
		LDb => LDb,
		Da => Da,
		Db => Db,
		Q => Q
		);
		
		CLK <= NOT CLK AFTER 20 ns;
		
	PROCESS 
	
	BEGIN
	
	LDa <= '1';
	Da <= "01110111";
	LDb <= '1';
	Db <= "10001000";
	
	WAIT FOR 200 ns;
	
	ENa <= '1';
	WAIT FOR 200 ns;
	
	Ena <= '0';
	Enb <= '1';
	WAIT FOR 200 ns;
	
	
	END PROCESS;
	
	END TB;
	
	