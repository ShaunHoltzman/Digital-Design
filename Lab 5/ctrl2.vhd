library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY ctrl2 IS
	PORT
		( 
			reset            : IN STD_LOGIC;
			clock            : IN STD_LOGIC;
			GO  	           : IN STD_LOGIC;
			x_lt_y           : IN STD_LOGIC;
			x_ne_y           : IN STD_LOGIC;
			x_sel	           : OUT STD_LOGIC;
			y_sel            : OUT STD_LOGIC;
			subtraction_sel1 : OUT STD_LOGIC;
			subtraction_sel2 : OUT STD_LOGIC;
			x_en    	        : OUT STD_LOGIC;
			y_en             : OUT STD_LOGIC;
			done             : OUT STD_LOGIC;
			output_en        : OUT STD_LOGIC
		);
	END ctrl2;
	
		ARCHITECTURE STR OF ctrl2 IS 
		
		TYPE ctrlStateType IS (START, INITIAL_LOAD, COMPUTE, FINISHED);
		SIGNAL state, nextState : ctrlStateType; 
	
	BEGIN 
	
		PROCESS(clock, reset)
		
		BEGIN	
			-- If reset is true, regardless of the clock or current state, the state will go back to the start. If reset is false, it will continue normally
			if(reset = '1') then
				state <= START;
			elsif(rising_edge(clock)) then
				state <= nextState;
			end if;
			
		end PROCESS;
		
		PROCESS(clock, reset, GO)
		
		BEGIN
		-- All outputs are false, unless determined otherwise in a state
			x_sel            <= '0';
			y_sel            <= '0';
			x_en             <= '0';
			y_en             <= '0';
			output_en        <= '0';
			subtraction_sel1 <= '0';
			subtraction_sel2 <= '0';
			done             <= '0';
			
			CASE state IS
				WHEN START =>        -- Stay in loop until GO is true
					if (GO = '0') then
						nextState <= START;
					else	
						nextState <= INITIAL_LOAD;
					end if;
				WHEN INITIAL_LOAD =>  -- Load the initial input values, then continue to computing the GCD in the COMPUTE state
					x_sel <= '1';
					y_sel <= '1';
					x_en  <= '1';
					y_en  <= '1';
					nextState <= COMPUTE;
				WHEN COMPUTE =>       -- Determine whether to end. If not ending, determine which values of X and Y will be loaded and keep computing
					if (x_ne_y = '0') then 
						output_en <= '1';
						nextState <= FINISHED;
					elsif (x_lt_y = '1') then
						y_en <= '1';    -- Load y with y-x instead of the input. Default mux choice (y_sel <= '0') allows it to be selected by the mux
						subtraction_sel1 <= '1'; -- Putting this select line makes the subtractor use y-x for the result
						nextState <= COMPUTE;
					else
						x_en <= '1';    -- Load x with x-y instead of the input. Default mux choice (x_sel <= '0') allows it to be selected by the mux
						subtraction_sel2 <= '1'; -- Putting this select line makes the subtractor use x-y for the result
						nextState <= COMPUTE;
					end if;
				WHEN FINISHED =>     -- GCD is found so the computation is done. Stay in this FINISHED state until GO goes false, which will start it at the beginning again
					done <= '1';
					
					if(GO = '0') then -- Stay in FINISHED state until GO goes false, which will restart the state machine
						nextState <= START;
					else	
						nextState <= FINISHED;
					end if;
					
				END CASE;
				
			END PROCESS;
				
	END STR;
				
			
			