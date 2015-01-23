library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY indexReg IS 
	PORT
		( 
			CLK        : IN STD_LOGIC;
			X_INC     : IN STD_LOGIC;
			X_DEC		  : IN STD_LOGIC;
			X_L_LD	  : IN STD_LOGIC;
			X_H_LD	  : IN STD_LOGIC;
			Input		  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Resetn     : IN STD_LOGIC;
			X_OUT       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END indexReg;
	
	
	ARCHITECTURE STR OF indexReg IS 
	
	SIGNAL tempCount : STD_LOGIC_VECTOR(15 DOWNTO 0);

	
	
	BEGIN
	
	PROCESS(CLK, Resetn)
	
		BEGIN
		
		IF(Resetn = '0') THEN
			tempCount <= (OTHERS => '0');
		ELSIF (rising_edge(CLK)) THEN
			IF X_L_LD = '1' THEN
				tempCount(7 DOWNTO 0) <= Input;
			ELSIF X_H_LD = '1' THEN
				tempCount(15 DOWNTO 8) <= Input;
			ELSIF X_INC = '1' THEN
				tempCount <= tempCount + 1;
			ELSIF X_DEC = '1' THEN
				tempCount <= tempCount - 1;
			END IF;
		END IF;
	
	END PROCESS; 
	
	--PC <= tempCount(15 DOWNTO 8) WHEN PC_H_OUTEN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
	X_OUT <= tempCount;
	
	
	
	
	END STR; 
				
		
			
	
	
	
	
