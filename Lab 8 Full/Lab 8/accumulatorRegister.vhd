library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY accumulatorRegister IS 
	PORT
		( 
			CLK        : IN STD_LOGIC;
			A_LD       : IN STD_LOGIC;
			A_OUT_EN   : IN STD_LOGIC;
			Input      : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			A_ALU_OUT  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			A_OUT      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			--A_DEBUG_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			A_Z				: OUT STD_LOGIC;
			A_S				: OUT STD_LOGIC 
		);
	END accumulatorRegister;
	
	
	ARCHITECTURE STR OF accumulatorRegister IS 
	
	SIGNAL Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK)
	
		BEGIN
		
			IF(rising_edge(CLK)) THEN  --Synchronous load
				IF A_LD = '0' THEN
					Data <= Data;
				ELSIF A_LD = '1' THEN
					Data <= Input;
				END IF;
				
			
			END IF;
			
			
		END PROCESS;
		
		A_ALU_OUT <= Data; 
		A_OUT <= Data WHEN A_OUT_EN = '1' ELSE "ZZZZZZZZ"; --Asynchronous output enable
	--	A_DEBUG_OUT <= Data WHEN A_OUT_EN = '1' ELSE "ZZZZZZZZ";
		
		A_Z <= '1' WHEN Data = "00000000" ELSE '0'; 
		A_S <= '1' WHEN Data(7) = '1' ELSE '0';
		
	END STR;