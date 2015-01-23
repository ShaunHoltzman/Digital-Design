LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux4to1WithAssert IS
	PORT ( w0, w1, w2, w3, enable : IN STD_LOGIC;
			s_n				  : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			f_n				  : OUT STD_LOGIC);
			 
END mux4to1WithAssert;

ARCHITECTURE behavior OF mux4to1WithAssert IS
	
	SIGNAL s : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL f : STD_LOGIC;
	SIGNAL se  : STD_LOGIC_VECTOR(2 DOWNTO 0);
	
	BEGIN 
	
	s <= NOT s_n;
	se <= s & enable;
	
	WITH se SELECT
	f <= w0 WHEN "001",
		  w1 WHEN "011",		
		  w2 WHEN "101",
		  w3 WHEN "111",
		 '0' WHEN OTHERS;
		 
	f_n <= NOT f;
	
END behavior;
		  
	