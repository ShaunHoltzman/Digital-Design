LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY mux4to1Equations IS
	PORT (	w0, w1, w2, w3	: IN 	STD_LOGIC ;
			s	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			f	: OUT 	STD_LOGIC ) ;
END mux4to1Equations ;

ARCHITECTURE Behavior OF mux4to1Equations IS	
BEGIN
	f <= 	(NOT s(1) AND NOT s(0) AND w0)
            OR  (NOT s(1) AND     s(0) AND w1)
            OR  (    s(1) AND NOT s(0) AND w2)
            OR  (    s(1) AND     s(0) AND w3);
END Behavior ;


