library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY topLevel_tb IS 
	END topLevel_tb;
	
ARCHITECTURE TB OF toplevel_tb IS 

	
			SIGNAL CLK        : STD_LOGIC := '0';
			SIGNAL RESETn     : STD_LOGIC := '0'; 
			SIGNAL IR_OUTPUT  : STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL theState   : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
			SIGNAL IN1_INPUT	 : STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL IN0_INPUT	 : STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL OUT1_OUTPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL OUT0_OUTPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
	
			
			SIGNAL A_DEBUG_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
			SIGNAL D_DEBUG_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
			
			SIGNAL Sout : STD_LOGIC;
			SIGNAL Vout : STD_LOGIC;
			SIGNAL Cout : STD_LOGIC;
			SIGNAL Zout : STD_LOGIC;
			
			SIGNAL currentPC : STD_LOGIC_VECTOR(15 DOWNTO 0);
			SIGNAL currentX : STD_LOGIC_VECTOR(15 DOWNTO 0);
		
			
					
BEGIN

	 UUT : ENTITY work.topLevel
    PORT MAP
	 (
      CLK  => CLK,
		RESETn => RESETn,
		theState => theState,
		IN1_INPUT => IN1_INPUT,
		IN0_INPUT => IN0_INPUT,
		OUT1_OUTPUT => OUT1_OUTPUT,
		OUT0_OUTPUT => OUT0_OUTPUT,
		A_DEBUG_OUT => A_DEBUG_OUT,
		D_DEBUG_OUT => D_DEBUG_OUT,
		IR_OUTPUT => IR_OUTPUT,
		Sout => Sout,
		Vout => Vout,
		Cout => Cout,
		Zout => Zout,
		currentPC => currentPC,
		currentX => currentX
	 );
		
		CLK <= NOT CLK AFTER 10 ns;
		
	PROCESS 
	
	BEGIN
		WAIT FOR 40 ns;
		
		RESETn <= '1';
		IN1_INPUT <= X"A2";
		IN0_INPUT <= X"3C";
		WAIT;
	
	
	END PROCESS;
	
END TB;
	
	