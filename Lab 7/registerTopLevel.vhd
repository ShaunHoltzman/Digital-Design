library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY registerTopLevel IS 
	PORT
		( 
			CLK    : IN STD_LOGIC;
			ENa    : IN STD_LOGIC;
			ENb    : IN STD_LOGIC;
			LDa    : IN STD_LOGIC;
			LDb    : IN STD_LOGIC;
			Da     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Db     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Q      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END registerTopLevel;
	
	
	ARCHITECTURE STR OF registerTopLevel IS 
	
	SIGNAL tempQ : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL tempQ2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
	
	RegWithBuffer : ENTITY work.registerWithBuffer
		PORT MAP
		(
			CLK => CLK,
			ENa => ENa,
			LDa => LDa,
			Da => Da,
			Q => tempQ
		);
		
	RegNoBuffer : ENTITY work.registerNoBuffer
		PORT MAP
		(
			CLK => CLK,
			LDb => LDb,
			Db => Db, 
			Q => tempQ2
		);
		
	triState : ENTITY work.triStateBuffer
		PORT MAP
		(
			EN => ENb,
			Input => tempQ2,
			Output => tempQ
		);
		
	Q <= tempQ;
		
	END STR;
		