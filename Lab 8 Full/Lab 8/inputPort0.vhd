library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY inputPort0 IS 
	PORT
		( 
			CLK          : IN STD_LOGIC;
			IN0_LD       : IN STD_LOGIC;
			IN0_OUTEN    : IN STD_LOGIC;
			Input        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			IN0_OUT      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END inputPort0;
	
	
	ARCHITECTURE STR OF inputPort0 IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
				IF IN0_LD = '0' THEN
					Data <= Data;
				ELSIF IN0_LD = '1' THEN
					Data <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		IN0_OUT <= Data WHEN IN0_OUTEN = '1' ELSE "ZZZZZZZZ";
		
			
	END STR;