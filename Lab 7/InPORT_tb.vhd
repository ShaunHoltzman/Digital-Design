library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY InPORT_tb IS 
	END InPORT_tb;
	
ARCHITECTURE TB OF InPORT_tb IS 

	
			SIGNAL CLK       : STD_LOGIC := '0';
			SIGNAL InEN      : STD_LOGIC := '0';
			SIGNAL LD        : STD_LOGIC := '0';
			SIGNAL Input     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			SIGNAL Output    : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
BEGIN

	 UUT : ENTITY work.InPORT
    PORT MAP
	 (
      CLK  => CLK,
		InEN => InEN,
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
	InEN <= '1';	
	WAIT FOR 200 ns;
	
	InEN <= '0';
	WAIT FOR 200 ns;
	
	
	InEN <= '1';
	LD <= '1';
	WAIT FOR 200 ns;
	
	LD <= '0';
	Input <= "10001000";
	WAIT FOR 200 ns;
	
	InEn <= '0';
	WAIT FOR 200 ns;
	
	END PROCESS;
	
	END TB;
	
	