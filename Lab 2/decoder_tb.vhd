LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY decoder_tb IS
END decoder_tb;

ARCHITECTURE behavior OF decoder_tb IS

  SIGNAL w : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL y_n : STD_LOGIC_VECTOR(0 TO 6);
	
BEGIN 

	UUT : ENTITY work.decoder
		PORT MAP (
			w => w,
			y_n => y_n
		);
		
	STIM_PROC: PROCESS
  
	VARIABLE value : STD_LOGIC_VECTOR (3 DOWNTO 0);
	
BEGIN
	
	FOR i in 0 TO 15 LOOP
	
		value := STD_LOGIC_VECTOR(TO_UNSIGNED(i, 4));
			
			w(3) <= value(3);
			w(2) <= value(2);
			w(1) <= value(1);
			w(0) <= value(0);
			
		WAIT FOR 50 ns;
	END LOOP;
	
	WAIT FOR 500ns;
	REPORT "SIMULATION FINISHED!";
    WAIT;
	 
	END PROCESS;
--End Test Bench

END;
		
			