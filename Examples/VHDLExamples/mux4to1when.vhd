LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux4to1When IS
	PORT (	w0, w1, w2, w3	: IN 	STD_LOGIC ;
			s	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			f	: OUT 	STD_LOGIC ) ;
END mux4to1When ;

ARCHITECTURE Behavior OF mux4to1When IS	
BEGIN
	f <= 	w0 WHEN s ="00" ELSE
		w1 WHEN s ="01" ELSE
		w2 WHEN s ="10" ELSE
		w3 ;
END Behavior ;


