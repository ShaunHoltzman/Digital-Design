library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY mux2to1 IS
	GENERIC
	(
		WIDTH : positive := 16
	); 
	PORT
		( 
			input0 : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			input1 : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			sel    : IN STD_LOGIC;
			output : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
	
		);
	END mux2to1;
	
	ARCHITECTURE STR OF mux2to1 IS 
	
	BEGIN
	
	output <= 	input0 WHEN sel = '0' ELSE
					input1;
		
	
	end STR;
				
			
			
	