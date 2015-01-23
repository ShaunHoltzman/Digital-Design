library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY topRAM IS 
	PORT
		( 	
			WE          : IN STD_LOGIC;
			CLK         : IN STD_LOGIC;
			OUTENBL     : IN STD_LOGIC;
			ADDR  		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			dataIn      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			dataOut		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END topRAM;
	
	ARCHITECTURE STR OF topRAM IS
	
	SIGNAL tempDataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
		
	BEGIN 
	
	RAM : ENTITY work.RAM
		PORT MAP
		(
			address => ADDR,
			clock => CLK,
			data => dataIn,
			wren => WE,
			q => tempDataOut
		);
		
	triState : ENTITY work.triStateBuffer
		PORT MAP
		(
			EN => OUTENBL,
			Input => tempDataOut,
			Output => dataOut
		);
		
	END STR;
		
			