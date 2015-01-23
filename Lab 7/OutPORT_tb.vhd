library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY OutPORT_tb IS 
	END OutPORT_tb;
	
ARCHITECTURE TB OF OutPORT_tb IS 

	
			SIGNAL CLK       : STD_LOGIC := '0';
			SIGNAL LD        : STD_LOGIC := '0';
			SIGNAL Input     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			SIGNAL Output    : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
BEGIN

	 UUT : ENTITY work.OutPORT
    PORT MAP
	 (
      CLK  => CLK,
		LD => LD,
		Input => Input,
		Output => Output
		);
		
		CLK <= NOT CLK AFTER 20 ns;
		
	PROCESS 
	
	BEGIN
	
	LD <= '1';
	Input <= "01110111";
	WAIT FOR 200 ns;
	
	LD <= '0';
	Input <= "00000000";
	WAIT FOR 200 ns;
	
	LD <= '1';
	WAIT FOR 200 ns;
	
	LD <= '0';
	Input <= "10001000";
	WAIT FOR 200 ns;
	
	LD <= '1';
	WAIT FOR 200 ns;
	
	
	END PROCESS;
	
	END TB;
	
	