library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Counter_tb IS 
	END Counter_tb;
	
ARCHITECTURE TB OF Counter_tb IS 

	
			SIGNAL CLK       : STD_LOGIC := '0';
			SIGNAL Enable    : STD_LOGIC := '0';
			SIGNAL Reset     : STD_LOGIC := '0';
			SIGNAL Output    : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
BEGIN

	 UUT : ENTITY work.Counter
    PORT MAP
	 (
      CLK  => CLK,
		Enable => Enable,
		Reset => Reset,
		Output => Output
		);
		
		CLK <= NOT CLK AFTER 20 ns;
		
	PROCESS 
	
	BEGIN
	
	Reset <= '1';
	WAIT FOR 200 ns;
	
	Reset <= '0';
	WAIT FOR 200 ns;
	
	Enable <= '1';

	
	WAIT;
	
	END PROCESS;
	
	END TB;
	
	