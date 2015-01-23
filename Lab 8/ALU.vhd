library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

ENTITY ALU IS

 
		PORT ( 
		A         : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
		D         : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
		ALU_SEL   : IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
		CARRY_IN  : IN STD_LOGIC;
		ALU_OUT	 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		ALU_OUT2  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		CARRY_OUT : OUT STD_LOGIC;
		OV        : OUT STD_LOGIC
		); 
		
END ALU;

	ARCHITECTURE STR OF ALU IS 


		SIGNAL tempA : SIGNED(8 DOWNTO 0);
		SIGNAL tempD : SIGNED(8 DOWNTO 0);
		SIGNAL tempCIN : STD_LOGIC_VECTOR (1 DOWNTO 0);
		SIGNAL tempOutput2 : UNSIGNED(8 DOWNTO 0);
	
	
			BEGIN
	
				tempA <= SIGNED('0' & A); 
				tempD <= SIGNED('0' & D);
				tempCIN <= ('0' & CARRY_IN);
				
	
				PROCESS(A, D, ALU_SEL, CARRY_IN) 
	
					VARIABLE tempOutput : SIGNED(8 DOWNTO 0);
					VARIABLE tempMultOutput : UNSIGNED(15 DOWNTO 0);
				
	
						BEGIN
		
		
							tempOutput := (OTHERS => '0');
						
		
		
							CASE ALU_SEL IS 
								WHEN "0101" => -- ADCR D (A <- A + D + C)
									tempOutput := tempA + tempD + SIGNED(tempCIN);
									CARRY_OUT <= tempOutput(8);
									OV <= ((A(7) AND (NOT D(7)) AND (NOT tempOutput(7))) OR ((NOT A(7)) AND D(7) AND tempOutput(7)));
									ALU_OUT <= STD_LOGIC_VECTOR(tempOutput(7 DOWNTO 0));
									ALU_OUT2 <= (OTHERS => '0');
								WHEN "0100" =>  -- ANDR D (A <- A AND D)
									tempOutput := (tempA AND tempD);
									CARRY_OUT <= '0';
									OV <= '0';
									ALU_OUT <= STD_LOGIC_VECTOR(tempOutput(7 DOWNTO 0));
									ALU_OUT2 <= (OTHERS => '0');
								WHEN "0000" => -- RORC
									tempOutput := SHIFT_RIGHT(SIGNED(A & '0'),1);
									--tempOutput2 <= SHIFT_RIGHT(UNSIGNED(A & '0'),1);
									tempOutput(8) := CARRY_IN;
									CARRY_OUT <= tempOutput(0);
									OV <= '0';
									ALU_OUT <= STD_LOGIC_VECTOR(tempOutput(8 DOWNTO 1));
									ALU_OUT2 <= (OTHERS => '0');
								WHEN "0001" => -- DECA A <- A-1
									tempOutput := tempA - 1;
									CARRY_OUT <= '0';
									OV <= '0';
									ALU_OUT <= STD_LOGIC_VECTOR(tempOutput(7 DOWNTO 0));
									ALU_OUT2 <= (OTHERS => '0');
								WHEN "0010" => -- Multiply higher
									tempMultOutput := UNSIGNED(A) * UNSIGNED(D);
									ALU_OUT <= STD_LOGIC_VECTOR(tempMultOutput(15 DOWNTO 8));
									ALU_OUT2 <= STD_LOGIC_VECTOR(tempMultOutput(7 DOWNTO 0));
									CARRY_OUT <= '0';
									OV <= '0';
								WHEN OTHERS =>
									OV <= '0';
									CARRY_OUT <= '0';
									ALU_OUT <= (OTHERS => '0');
									ALU_OUT2 <= (OTHERS => '0');
							END CASE;
							
					END PROCESS;
					
	END STR;
									
									
		
		