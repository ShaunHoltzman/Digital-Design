library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY inputPort IS 
	PORT
		( 
			IN_OUTEN    : IN STD_LOGIC;
			Input       : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			IN_OUT      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END inputPort;
	
	
	ARCHITECTURE STR OF inputPort IS 
	
	
	BEGIN
	

		IN_OUT <= Input WHEN IN_OUTEN = '1' ELSE "ZZZZZZZZ";
		
			
	END STR;