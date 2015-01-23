library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Lab7TopLevel_tb IS 
	END Lab7TopLevel_tb;
	
ARCHITECTURE TB OF Lab7TopLevel_tb IS 

	
			SIGNAL CLK       : STD_LOGIC := '0';
			SIGNAL RESET     : STD_LOGIC := '0'; 
			SIGNAL Input     : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
			--SIGNAL InLD      : STD_LOGIC := '0';
			--SIGNAL InEN      : STD_LOGIC := '0';
			--SIGNAL countEN   : STD_LOGIC := '0'; 
			--SIGNAL OutLD     : STD_LOGIC := '0';
			--SIGNAL WE        : STD_LOGIC := '0';
			--SIGNAL OUTENBL   : STD_LOGIC := '0';	
			SIGNAL theState : STD_LOGIC_VECTOR(2 DOWNTO 0);
			SIGNAL Output    : STD_LOGIC_VECTOR(7 DOWNTO 0);

			
BEGIN

	 UUT : ENTITY work.Lab7TopLevel
    PORT MAP
	 (
      CLK  => CLK,
		RESET => RESET,
		Input => Input,
		theState => theState,
		--InLD => InLD,
		--InEN => InEN,
		--countEN => countEN,
		--OutLD => OutLD,
		--WE => WE,
		--OUTENBL => OUTENBL,
		Output => Output
		);
		
		CLK <= NOT CLK AFTER 10 ns;
		
	PROCESS 
	
	BEGIN
	
	RESET <= '1';  --Reset 
	WAIT FOR 200 ns;
	
	RESET <= '0';    --Display on the output port whatever is on the input port
	Input <= "10111111";
	
	----InEN <= '1';
	--InLD <= '1';
	--OutLD <= '1';
	WAIT FOR 40 ns;
	
	--RESET <= '1';
	
	
	--WAIT FOR 200 ns;
	
	--RESET <= '0';
	--Input <= "10111111";
	--WAIT FOR 200 ns;
	
	RESET <= '0';
	Input <= "01000000";
	WAIT FOR 200 ns;
	
	
	Input <= "10111111";
	WAIT FOR 40 ns;
	
	RESET <= '1';
	WAIT FOR 40 ns; 
	
	RESET <= '0';
	Input <= "10111111";
	WAIT FOR 1000 ns;
	
	RESET <= '1';
	WAIT FOR 40 ns;
	
	RESET <= '0';
	Input <= "11111111";
	WAIT FOR 1000 ns;
	
	RESET <= '1';
	WAIT FOR 40 ns;
	
	RESET <= '0';
	Input <= "10111111";
	WAIT FOR 1000 ns;
	
	Input <= "01000000";
	WAIT FOR 1000 ns;
	
	Input <= "00000000";
	WAIT FOR 1000 ns;
	
	
	--Input <= "01001001";
	
	--InEN <= '0';  --Display what is at memory at address 00000000 (nothing right now)
	--InLD <= '0';
	--OUTENBL <= '1'; 
	--WAIT FOR 200 ns;
	
	--OUTENBL <= '0'; --Write 11111111 to adress 00000000 
	--InEN <= '1';
	--InLD <= '1';
	
	--Input <= "10001001";
	--WE <= '1';
	
	--OutLD <= '0';
	--WAIT FOR 800 ns;
	
	--Input <= "11001001";
	
	--InEN <= '0';   --Display data at address 00000000 (which is now 11111111)
	--InLD <= '0';
	--OUTENBL <= '1';
	--OUTLD <= '1';
	--WE <= '0';
	--WAIT FOR 200 ns;
	
	
	
	
	
	
	
	
	END PROCESS;
	
	END TB;
	
	