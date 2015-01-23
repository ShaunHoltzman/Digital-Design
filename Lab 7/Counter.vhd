library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Counter IS 
	PORT
		( 
			CLK     : IN STD_LOGIC;
			Enable  : IN STD_LOGIC;
			Reset   : IN STD_LOGIC;
			Output  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END Counter;
	
	
	ARCHITECTURE STR OF Counter IS 
	
	SIGNAL tempCount : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
	PROCESS(CLK, Reset)
	
		BEGIN
		
		IF(Reset = '1') THEN
			tempCount <= "00000000";
		ELSIF (rising_edge(CLK)) THEN
			IF Enable = '1' THEN
					tempCount <= tempCount + 1;
			END IF;
		END IF;
	
	END PROCESS; 
	
	Output <= tempCount;
	
	END STR; 
				
		
			
	
	
	
	
