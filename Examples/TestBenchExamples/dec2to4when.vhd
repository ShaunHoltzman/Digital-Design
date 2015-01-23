LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY dec2to4When IS
	PORT (	w	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
				En : IN 	STD_LOGIC ;
				y 	: OUT 	STD_LOGIC_VECTOR(0 TO 3) ) ;
END dec2to4When ;

ARCHITECTURE Behavior OF dec2to4When IS
	BEGIN
		y <= 	"1000" WHEN En = '1' AND W="00" ELSE
			"0100" WHEN En = '1' AND W="01" ELSE
			"0010" WHEN En = '1' AND W="10" ELSE
			"0001" WHEN En = '1' AND W="11" ELSE
			"0000";
END Behavior ;
