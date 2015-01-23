library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY datapath1 IS
	GENERIC
	(
		WIDTH : positive := 16
	); 
	PORT
		( 
			clock			: IN STD_LOGIC;
			reset			: IN STD_LOGIC;
			inputX 		: IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			inputY 		: IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			x_sel  		: IN STD_LOGIC;
			y_sel 		: IN STD_LOGIC;
			x_en			: IN STD_LOGIC;
			y_en			: IN STD_LOGIC;
			output_en	: IN STD_LOGIC;
			x_lt_y		: OUT STD_LOGIC;
			x_ne_y		: OUT STD_LOGIC;
			output 		: OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
	
		);
	END datapath1;
	
	ARCHITECTURE STR OF datapath1 IS 
	
	SIGNAL XminusY    : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	SIGNAL YminusX    : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	SIGNAL XMuxOutput : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	SIGNAL YMuxOutput : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	SIGNAL tempX      : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	SIGNAL tempY      : STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
	
	
	BEGIN
	
		X_Mux : entity work.mux2to1
		GENERIC MAP(WIDTH)
		PORT MAP 
		(
			input0 => XminusY,
			input1 => inputX,
			sel    => x_sel,
			output => XMuxOutput
		);
		
		Y_Mux : entity work.mux2to1
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			input0 => YminusX,
			input1 => inputY,
			sel    => y_sel,
			output => YMuxOutput
		);
		
		tmpXRegister : entity work.tempRegister
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			clock  => clock,
			reset  => reset, 
			enable => x_en, 
			input  => XMuxOutput,
			output => tempX
		);
		
		tmpYRegister : entity work.tempRegister
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			clock  => clock,
			reset  => reset,
			enable => y_en,
			input  => YMuxOutput,
			output => tempY
		);
		
		XSubtractor : entity work.subtractor
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			input1 => tempX,
			input0 => tempY,
			result => XminusY
		);
		
		YSubtractor : entity work.subtractor
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			input1 => tempY,
			input0 => tempX,
			result => YminusX
		);
		
		Compare : entity work.comparator
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			inputX => tempX,
			inputY => tempY, 
			x_lt_y => x_lt_y,
			x_ne_y => x_ne_y
		);
		
		OutputRegister : entity work.tempRegister
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			clock  => clock,
			reset  => reset, 
			enable => output_en,
			input  => tempX,
			output => output
		);
		
			
	end STR;
				
			
			
	