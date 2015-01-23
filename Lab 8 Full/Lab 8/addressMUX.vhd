LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY addressMUX IS
	PORT (	
			PC    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			AR    : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			X		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			SEL	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0);
			ADDR	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
			);
END addressMUX ;

ARCHITECTURE BHV OF addressMUX IS	
BEGIN
	ADDR <= 	PC WHEN SEL = "00" ELSE
				AR WHEN SEL = "01" ELSE
				X  WHEN SEL = "10";
		
			
END BHV ;

