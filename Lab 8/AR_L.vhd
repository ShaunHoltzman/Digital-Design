library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY AR_L IS 
	PORT
		( 
			CLK          : IN STD_LOGIC;
			AR_L_LD      : IN STD_LOGIC;
			ARL_OUT_EN   : IN STD_LOGIC;
			Input        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			AR_L         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			AR_L_BUS		 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END AR_L;
	
	
	ARCHITECTURE STR OF AR_L IS 
	
	SIGNAL tempAddress : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
		
				IF AR_L_LD = '0' THEN
					tempAddress <= tempAddress;
				ELSIF AR_L_LD = '1' THEN
					tempAddress <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		AR_L <= tempAddress;
		AR_L_BUS <= tempAddress WHEN ARL_OUT_EN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
			
	END STR;