library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY SP_L IS 
	PORT
		( 
			CLK          	 : IN STD_LOGIC;
			SPL_LD	       : IN STD_LOGIC;
			SPL_OUT_EN 	    : IN STD_LOGIC;
			PCL_INPUT       : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SP_L	        	 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END SP_L;
	
	
	ARCHITECTURE STR OF SP_L IS 
	
	SIGNAL tempAddress : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
		
				IF SPL_LD = '0' THEN
					tempAddress <= tempAddress;
				ELSIF SPL_LD = '1' THEN
					tempAddress <= PCL_INPUT;
				END IF;
			END IF;
			
		END PROCESS;
		
		SP_L <= tempAddress WHEN SPL_OUT_EN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
			
	END STR;