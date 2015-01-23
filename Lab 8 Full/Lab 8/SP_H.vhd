library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY SP_H IS 
	PORT
		( 
			CLK          	 : IN STD_LOGIC;
			SPH_LD	       : IN STD_LOGIC;
			SPH_OUT_EN 	    : IN STD_LOGIC;
			PCH_INPUT       : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			SP_H	        	 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END SP_H;
	
	
	ARCHITECTURE STR OF SP_H IS 
	
	SIGNAL tempAddress : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
		
				IF SPH_LD = '0' THEN
					tempAddress <= tempAddress;
				ELSIF SPH_LD = '1' THEN
					tempAddress <= PCH_INPUT;
				END IF;
			END IF;
			
		END PROCESS;
		
		SP_H <= tempAddress WHEN SPH_OUT_EN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
			
	END STR;