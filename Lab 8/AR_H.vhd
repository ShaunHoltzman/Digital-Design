library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY AR_H IS 
	PORT
		( 
			CLK          : IN STD_LOGIC;
			AR_H_LD      : IN STD_LOGIC;
			ARH_OUT_EN	 : IN STD_LOGIC;
			Input        : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			AR_H         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			AR_H_BUS		 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END AR_H;
	
	
	ARCHITECTURE STR OF AR_H IS 
	
	SIGNAL tempAddress : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
		
				IF AR_H_LD = '0' THEN
					tempAddress <= tempAddress;
				ELSIF AR_H_LD = '1' THEN
					tempAddress <= Input;
				END IF;
			END IF;
			
		END PROCESS;
		
		AR_H <= tempAddress;
		AR_H_BUS <= tempAddress WHEN ARH_OUT_EN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
			
	END STR;