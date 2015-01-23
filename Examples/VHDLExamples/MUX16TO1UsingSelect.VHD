LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux16to1UsingSelect IS
	PORT (	w 	: IN 	STD_LOGIC_VECTOR(0 TO 15) ;
			s 	: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0) ;
			f 	: OUT 	STD_LOGIC ) ;
END mux16to1UsingSelect ;

ARCHITECTURE Behavior OF mux16to1UsingSelect IS	
BEGIN
	WITH s SELECT
		f <= 	w(0) WHEN "0000",
				w(1) WHEN "0001",
				w(2) WHEN "0010",
				w(3) WHEN "0011",
				w(4) WHEN "0100",
				w(5) WHEN "0101",
				w(6) WHEN "0110",
				w(7) WHEN "0111",
				w(8) WHEN "1000",
				w(9) WHEN "1001",
				w(10) WHEN "1010",
				w(11) WHEN "1011",
				w(12) WHEN "1100",
				w(13) WHEN "1101",
				w(14) WHEN "1110",
				w(15) WHEN OTHERS ;
END Behavior ;


