LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY dec2to4Equations IS
	PORT (	w	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			En 	: IN 	STD_LOGIC ;
			y 	: OUT 	STD_LOGIC_VECTOR(0 TO 3) ) ;
END dec2to4Equations ;

ARCHITECTURE Behavior OF dec2to4Equations IS
	SIGNAL Enw : STD_LOGIC_VECTOR(2 DOWNTO 0) ;
BEGIN
	y(0) <= En AND NOT w(1) AND NOT w(0);
	y(1) <= En AND NOT w(1) AND     w(0);
	y(2) <= En AND     w(1) AND NOT w(0);
	y(3) <= En AND     w(1) AND     w(0);

END Behavior ;
