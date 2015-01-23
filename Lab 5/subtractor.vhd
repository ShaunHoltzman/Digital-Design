library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY subtractor IS
	GENERIC
	(
		WIDTH : positive := 16
	); 
	PORT
		( 
			input1  : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			input0  : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			result  : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
	
		);
	END subtractor;
	
	ARCHITECTURE STR OF subtractor IS 
	
	SIGNAL tempResult : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	
	BEGIN
	
		result <= std_logic_vector(unsigned(input1) - unsigned(input0));
	
	end STR;
				
			
			