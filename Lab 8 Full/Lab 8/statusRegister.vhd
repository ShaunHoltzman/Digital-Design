library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY statusRegister IS 
	PORT
		( 
			RESETn  : IN STD_LOGIC;
			CLK     : IN STD_LOGIC;
			setC	  : IN STD_LOGIC;
			clrC	  : IN STD_LOGIC;
			sIN	  : IN STD_LOGIC;
			vIN	  : IN STD_LOGIC;
			cIN	  : IN STD_LOGIC;
			zIN	  : IN STD_LOGIC;
			sLD	  : IN STD_LOGIC;
			vLD	  : IN STD_LOGIC;
			cLD	  : IN STD_LOGIC;
			zLD	  : IN STD_LOGIC;
			S		  : OUT STD_LOGIC;
			V		  : OUT STD_LOGIC;
			C		  : OUT STD_LOGIC;
			Z		  : OUT STD_LOGIC
		);
	END statusRegister;
	
	
	ARCHITECTURE STR OF statusRegister IS 
	
	
	BEGIN
	
		PROCESS(CLK, RESETn)
	
		BEGIN
		
		IF(RESETn = '0') THEN
			S <= '0';
			V <= '0';
			C <= '0';
			Z <= '0';
		ELSIF(rising_edge(CLK)) THEN
			IF(sLD ='1') THEN
				S <= sIN;
			END IF;
			
			IF(vLD = '1') THEN
				V <= vIN;
			END IF;
			
			IF(cLD = '1') THEN
				C <= cIN;
			ELSIF (clrC = '1') THEN
				C <= '0';
			ELSIF (setC = '1') THEN
				C <= '1';
			END IF;
			
			IF(zLD = '1') THEN
				Z <= zIN;
			END IF;
		END IF;
		
	END PROCESS;
	

			
END STR;