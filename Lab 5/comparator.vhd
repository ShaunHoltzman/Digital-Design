library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY comparator IS
	GENERIC
	(
		WIDTH : positive := 16
	); 
	PORT
		( 
			inputX  : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			inputY  : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			x_lt_y  : OUT STD_LOGIC;
			x_ne_y  : OUT STD_LOGIC	
	
		);
	END comparator;
	
	ARCHITECTURE STR OF comparator IS 
	
	SIGNAL tempResult : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	
	BEGIN
	
		PROCESS(inputX, inputY)
		
		BEGIN
		
			if (inputX < inputY) then
				x_lt_y <= '1';
			else
				x_lt_y <= '0';
			end if;
		
			if (inputX = inputY) then
				x_ne_y <= '0';
			else	
				x_ne_y <= '1';
			end if;
			
		end PROCESS;
		
	end STR;
				
			
			