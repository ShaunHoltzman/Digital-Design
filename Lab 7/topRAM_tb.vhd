library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY topRAM_tb IS 
	END topRAM_tb;
	
ARCHITECTURE TB OF topRAM_tb IS 

	
			SIGNAL CLK       : STD_LOGIC := '0';
			SIGNAL WE        : STD_LOGIC := '0';
			SIGNAL OUTENBL   : STD_LOGIC := '0';
			SIGNAL ADDR      : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			SIGNAL dataIn    : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			SIGNAL dataOut   : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
BEGIN

	 UUT : ENTITY work.topRAM
    PORT MAP
	 (
      CLK  => CLK,
		WE => WE,
		OUTENBL => OUTENBL,
		ADDR => ADDR,
		dataIn => dataIn,
		dataOut => dataOut
		);
		
		CLK <= NOT CLK AFTER 20 ns;
		
	PROCESS 
	
	BEGIN
	
	WE <= '1';
	ADDR <= "00001111";
	dataIn <= "11111111";
	WAIT FOR 200 ns;
	
	WE <= '0';
	dataIn <= "00000000";
	OUTENBL <= '1';
	WAIT FOR 200 ns;
	
	OUTENBL <= '0';
	WAIT FOR 200 ns;
	
	
	
	
	END PROCESS;
	
	END TB;
	
	