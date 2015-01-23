library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY Decode IS 
	PORT
		( 
		ADDR      : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		WREN      : IN STD_LOGIC;
		RDEN      : IN STD_LOGIC;
		MEM_EN    : OUT STD_LOGIC;
		IN0_EN    : OUT STD_LOGIC;
		IN1_EN    : OUT STD_LOGIC;
		OUT0_EN   : OUT STD_LOGIC;
		OUT1_EN   : OUT STD_LOGIC
		);
	END Decode;
	
		ARCHITECTURE STR OF Decode IS
		
		SIGNAL tempADDR : UNSIGNED(15 DOWNTO 0);

		BEGIN
		
		tempADDR <= UNSIGNED(ADDR);

			PROCESS(tempADDR, RDEN, WREN)
			
				BEGIN
				
					IF (tempADDR >= X"FFFE") THEN
						IN1_EN <= tempADDR(0) AND RDEN;
						IN0_EN <= (NOT tempADDR(0)) AND RDEN;
						OUT1_EN <= tempADDR(0) AND WREN;
						OUT0_EN <= (NOT tempADDR(0)) AND WREN;
						MEM_EN <= '0';
					ELSE
						IN1_EN <= '0';
						IN0_EN <= '0';
						OUT1_EN <= '0';
						OUT0_EN <= '0';
						MEM_EN <=  '1';
				  END IF; 

				
					
			END PROCESS;
				
						
		END STR;