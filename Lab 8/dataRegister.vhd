library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY dataRegister IS 
	PORT
		( 
			CLK        : IN STD_LOGIC;
			D_LD       : IN STD_LOGIC;
			D_OUT_EN   : IN STD_LOGIC;
			Input      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			D_OUT      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			D_ALU_OUT  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			D_DEBUG_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END dataRegister;
	
	
	ARCHITECTURE STR OF dataRegister IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
				IF D_LD = '0' THEN
					Data <= Data;
				ELSIF D_LD = '1' THEN
					Data <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		D_ALU_OUT <= Data; 
		D_OUT <= Data WHEN D_OUT_EN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
		D_DEBUG_OUT <= Data WHEN D_OUT_EN = '1' ELSE "ZZZZZZZZ";
			
	END STR;