library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY outputPort IS 
	PORT
		( 
			CLK			 : IN STD_LOGIC;
			RESETn		 : IN STD_LOGIC;
			OUT_LD	    : IN STD_LOGIC;
			Input        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Output       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END outputPort;
	
	
	ARCHITECTURE STR OF outputPort IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	

		PROCESS(CLK, RESETn)
	
		BEGIN
		
			IF(RESETn = '0') THEN
				Data <= (OTHERS => '0');
			ELSIF(rising_edge(CLK)) THEN  --Synchronous load
				IF OUT_LD = '0' THEN
					Data <= Data;
				ELSIF OUT_LD = '1' THEN
					Data <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		Output <= Data;
		
	END STR;