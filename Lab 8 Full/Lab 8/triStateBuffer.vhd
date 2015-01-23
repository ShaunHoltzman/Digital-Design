library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY triStateBuffer IS 
	PORT
		( 	
			EN          : IN STD_LOGIC;
			Input       : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Output      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END triStateBuffer;
	
	
	ARCHITECTURE STR OF triStateBuffer IS 
	
	
	BEGIN
		
		Output <= Input WHEN EN = '1' ELSE "ZZZZZZZZ";
			
	END STR;