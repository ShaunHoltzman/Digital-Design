library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY addrGenRAM IS
	
	PORT
	( 
		enable : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		resetn : IN STD_LOGIC;
		wren  : OUT STD_LOGIC;
		ramDone : OUT STD_LOGIC;
		outputAddress : OUT STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0')
				
	);
	END addrGenRAM;
	
	
	ARCHITECTURE STR OF addrGenRAM IS
		
		SIGNAL tempOutput : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
		SIGNAL numRAMaddrs : unsigned(9 DOWNTO 0);
		
	BEGIN
	
	numRAMaddrs <= "1111111110";
	wren <= '1';
	
	PROCESS(clock,resetn)
	
	BEGIN
	
	
	if(resetn = '0')then
		tempOutput <= (others => '0');
			elsif(rising_edge(clock)) then
				if(enable = '1') then
					tempOutput <= STD_LOGIC_VECTOR(UNSIGNED(tempOutput) + 1);
					
				if(unsigned(tempOutput) = numRAMaddrs) then
						ramDone <= '1';
					else
						ramDone <= '0';
					end if;
				else 
					tempOutput <= tempOutput;
					--wren <= '0';
				end if;
			end if;
			
	END PROCESS;
	
	outputAddress <= tempOutput;
	
	END STR;