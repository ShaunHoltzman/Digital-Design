library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY addrGenROM IS
	
	PORT
	( 
		enable : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		resetn : IN STD_LOGIC;
		romDone : OUT STD_LOGIC;
		clockDone : OUT STD_LOGIC;
		outputAddress : OUT STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0')
				
	);
	END addrGenROM;
	
	
		ARCHITECTURE STR OF addrGenROM IS
		
		SIGNAL tempOutput : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
		SIGNAL numROMaddrs : unsigned(9 DOWNTO 0);
		SIGNAL clockCount : unsigned(4 DOWNTO 0);
		
		
	BEGIN
	

	numROMaddrs <= "1111111110";
	clockCount <= "11001";
	
	
	
	PROCESS(clock, resetn)
	
	BEGIN
	
	if(resetn = '0') then
		tempOutput <= (others => '0');
			elsif(rising_edge(clock)) then
				if(enable = '1') then
					tempOutput <= STD_LOGIC_VECTOR(UNSIGNED(tempOutput) + 1);
					if(unsigned(tempOutput) = numROMaddrs) then
						romDone <= '1';
					else
						romDone <= '0';
					end if;
					
					if(unsigned(tempOutput) > clockCount) then
						clockDone <= '1';
					else
						clockDone <= '0';
					end if;
							
				else 
					tempOutput <= tempOutput;
				end if;
			end if;
			
	END PROCESS;
	
	outputAddress <= tempOutput;
	
	END STR;