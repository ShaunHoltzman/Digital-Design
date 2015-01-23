library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY tempRegister IS
	GENERIC
	(
		WIDTH : positive := 16
	); 
	PORT
		( 
			clock  : IN STD_LOGIC;
			reset  : IN STD_LOGIC;
			enable : IN STD_LOGIC;
			input  : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			output : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
	
		);
	END tempRegister;
	
	ARCHITECTURE STR OF tempRegister IS 
	
	SIGNAL tempOutput : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	
	BEGIN
	
		PROCESS(clock, reset)
	
		BEGIN
			if(reset = '1') then
				tempOutput <= (OTHERS =>'0');
			elsif(rising_edge(clock)) then
				if enable = '0' then	
					tempOutput <= tempOutput;
				else
					tempOutput <= input;
				end if;
			end if;
			 
		end PROCESS;
		
		output <= tempOutput;
	
	end STR;
				
			
			
	