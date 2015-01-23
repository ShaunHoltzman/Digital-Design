library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY Controller IS
	PORT
		( 
			clock   			  : IN STD_LOGIC;
			Start            : IN STD_LOGIC;
			Resetn           : IN STD_LOGIC;
			romDone          : IN STD_LOGIC;
			ramDone          : IN STD_LOGIC;
			clockDone        : IN STD_LOGIC;
			flipFlopEnable   : OUT STD_LOGIC;
			incrementROMEnable : OUT STD_LOGIC;
			incrementRAMEnable : OUT STD_LOGIC;
			RDY	          : OUT STD_LOGIC
			
		);
	END Controller;
	
		ARCHITECTURE STR OF Controller IS 
		
		TYPE ctrlStateType IS (IDLE, BUFFERING, OUTPUT, FINISH_OUTPUTS, DONE);
		SIGNAL state, nextState : ctrlStateType; 
		SIGNAL clockCycles : integer := 0;
		SIGNAL ROMaddrs    : integer := 0;
		SIGNAL RAMaddrs    : integer := 0;
		CONSTANT clockCount : integer := 27;
		CONSTANT numROMaddrs : integer := 1024;
		CONSTANT numRAMaddrs : integer := 1024;
		
		BEGIN
		
		PROCESS(clock, Resetn)
		
		BEGIN	
			if(Resetn = '0') then
				state <= IDLE;
			elsif(rising_edge(clock)) then
				state <= nextState;
			end if;
			
		end PROCESS;
		
		PROCESS(clock, Resetn, Start)
		
		BEGIN
			
			RDY <= '0';
			flipFlopEnable <= '0';
			incrementROMEnable <= '0';
			incrementRAMEnable <= '0'; 
			
			
				CASE state IS
				WHEN IDLE =>        
					if (Start = '0') then
						ROMaddrs <= 0;
						RAMaddrs <= 0;
						clockCycles <= 0;
						nextState <= IDLE;
					else	
						nextState <= BUFFERING;
						flipFlopEnable <= '1';
						clockCycles <= 0;
					end if;
				WHEN BUFFERING => 
					incrementROMEnable <= '1';
					flipFlopEnable <= '1';	
					if(clockDone = '1') then
						nextState <= OUTPUT;
				 else
					nextState <= BUFFERING;
				end if;
				WHEN OUTPUT =>
					incrementRAMEnable <= '1';
					incrementROMEnable <= '1';
					flipFlopEnable <= '1';			
					if(romDone = '1') then
						nextState <= FINISH_OUTPUTS;
					else
					nextState <= OUTPUT;
					end if;						
				WHEN FINISH_OUTPUTS =>   
					incrementRAMEnable <= '1';
					flipFlopEnable <= '1';		
					if(ramDone = '1') then
						nextState <= DONE;
					else
						nextState <= FINISH_OUTPUTS;
					end if;
				WHEN DONE =>
					RDY <= '1';
					flipFlopEnable <= '1';
					if(Start = '0') then
						nextState <= IDLE;
					else
						nextState <= DONE;
					end if;
				END CASE;
				
			END PROCESS;
				
		
		
		END STR;