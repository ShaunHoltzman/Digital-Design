library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY flipFlop IS
	
	PORT
		( 
			clock  : IN STD_LOGIC;
			resetn  : IN STD_LOGIC;
			enable : IN STD_LOGIC;
			input  : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
			output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	
		);
	END flipFlop;
	
	ARCHITECTURE STR OF flipFlop IS 
	
	SIGNAL tempOutput : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	BEGIN
	
		PROCESS(clock,resetn)
	
		BEGIN
			if(resetn = '0') then
			  tempOutput <= (OTHERS =>'0');
			elsif(rising_edge(clock)) then
				if (enable = '0') then	
					tempOutput <= tempOutput;
				else
					tempOutput <= input;
				end if;
			end if;
		
		end PROCESS;
		
		output <= tempOutput;
	
	end STR;
				
			
			
	