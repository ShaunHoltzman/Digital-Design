library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY registerNoBuffer IS 
	PORT
		( 
			CLK    : IN STD_LOGIC;
			LDb    : IN STD_LOGIC;
			Db     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Q      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END registerNoBuffer;
	
	
	ARCHITECTURE STR OF registerNoBuffer IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
		IF(rising_edge(CLK)) THEN
		
			IF LDb = '0' THEN
				Data <= Data;
			ELSIF LDb = '1' THEN
				Data <= Db;
			END IF;
			
		END IF;
		
		
		END PROCESS;
			
		Q <= Data;		
			
	END STR;