library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY registerWithBuffer IS 
	PORT
		( 
			CLK    : IN STD_LOGIC;
			ENa    : IN STD_LOGIC;
			LDa    : IN STD_LOGIC;
			Da     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Q      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END registerWithBuffer;
	
	
	ARCHITECTURE STR OF registerWithBuffer IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN
		
				IF LDa = '0' THEN
					Data <= Data;
				ELSIF LDa = '1' THEN
					Data <= Da;
				END IF;
			END IF;
			
		END PROCESS;
		
		Q <= Data WHEN Ena = '1' ELSE "ZZZZZZZZ";
		
			
	END STR;