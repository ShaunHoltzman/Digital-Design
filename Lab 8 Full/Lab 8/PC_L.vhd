library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY PC_L IS 
	PORT
		( 
			CLK        : IN STD_LOGIC;
			PC_L_INC   : IN STD_LOGIC;
			PC_L_OUTEN : IN STD_LOGIC;
			Resetn     : IN STD_LOGIC;
			PC_L       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END PC_L;
	
	
	ARCHITECTURE STR OF PC_L IS 
	
	SIGNAL tempCount : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
	PROCESS(CLK, Resetn)
	
		BEGIN
		
		IF(Resetn = '0') THEN
			tempCount <= "00000000";
		ELSIF (rising_edge(CLK)) THEN
			IF PC_L_INC = '1' THEN
					tempCount <= tempCount + 1;
			END IF;
		END IF;
	
	END PROCESS; 
	
	PC_L <= tempCount WHEN PC_L_OUTEN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
	
	END STR; 
				
		
			
	
	
	
	
