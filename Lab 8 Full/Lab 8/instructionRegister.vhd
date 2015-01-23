library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY instructionRegister IS 
	PORT
		( 
			RESETn  : IN STD_LOGIC;
			CLK     : IN STD_LOGIC;
			IR_LD   : IN STD_LOGIC;
			Input   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			IR      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END instructionRegister;
	
	
	ARCHITECTURE STR OF instructionRegister IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK, RESETn)
	
		BEGIN
		
			IF(RESETn = '0') THEN
				Data <= (OTHERS => '0');
			ELSIF(rising_edge(CLK)) THEN  --Synchronous load
				IF IR_LD = '0' THEN
					Data <= Data;
				ELSIF IR_LD = '1' THEN
					Data <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		IR <= Data;
		
			
	END STR;