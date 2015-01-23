library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY OutPORT IS 
	PORT
		( 
			CLK     : IN STD_LOGIC;
			LD      : IN STD_LOGIC;
			Input   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Output  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END OutPORT;
	
	
	ARCHITECTURE STR OF OutPORT IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN
		
				IF LD = '0' THEN
					Data <= Data;
				ELSIF LD = '1' THEN
					Data <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		Output <= Data;
		
			
	END STR;