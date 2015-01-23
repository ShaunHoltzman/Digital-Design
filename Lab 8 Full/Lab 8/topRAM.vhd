library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY topRAM IS 
	PORT
		( 	
			WREN        : IN STD_LOGIC;
			RDEN			: IN STD_LOGIC;
			CLK         : IN STD_LOGIC;
			MEMOUT_EN   : IN STD_LOGIC;
			ADDR  		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			dataIn      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			dataOut		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END topRAM;
	
	ARCHITECTURE STR OF topRAM IS
	
	SIGNAL tempDataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL tempAddress : STD_LOGIC_VECTOR(15 DOWNTO 0);
		
	BEGIN 
	
	tempAddress(15 DOWNTO 8) <= (OTHERS=>'0');
	tempAddress(7 DOWNTO 0) <= ADDR;
	
	RAM : ENTITY work.RAM
		PORT MAP
		(
			address => tempAddress,
			clock => CLK,
			data => dataIn,
			wren => WREN,
			rden => RDEN,
			q => tempDataOut
		);
		
	triState : ENTITY work.triStateBuffer
		PORT MAP
		(
			EN => MEMOUT_EN,
			Input => tempDataOut,
			Output => dataOut
		);
		
	END STR;
		
			