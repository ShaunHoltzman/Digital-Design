library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Lab7TopLevel IS 
	PORT
		( 
			CLK       : IN STD_LOGIC;
			RESET     : IN STD_LOGIC;
			Input     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			--InLD      : IN STD_LOGIC;
			--InEN      : IN STD_LOGIC;
			--countEN   : IN STD_LOGIC;
			--OutLD     : IN STD_LOGIC;
			--WE        : IN STD_LOGIC;
		--	OUTENBL   : IN STD_LOGIC;	
			theState   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			Output    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END Lab7TopLevel;
	
	
	ARCHITECTURE STR OF Lab7TopLevel IS 
	
	SIGNAL InEN : STD_LOGIC;
	SIGNAL InLD : STD_LOGIC;
	SIGNAL CountEN : STD_LOGIC;
	SIGNAL OutLD : STD_LOGIC;
	SIGNAL WE : STD_LOGIC;
	SIGNAL OUTENBL : STD_LOGIC;
	SIGNAL busOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
	--SIGNAL OutPortOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL counterOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
	Controller : ENTITY work.Controller
		PORT MAP
		(
		RESET => RESET,
		CLK => CLK,
		OPCODE => Input(7 DOWNTO 6),
		InEN => InEN,
		InLD => InLD,
		OutLD => OutLD,
		OUTENBL => OUTENBL,
		WE => WE, 
		theState => theState,
		CountEN => CountEN
		);
	
	
	InputPort : ENTITY work.InPORT
		PORT MAP
		(
			CLK => CLK,
			InEN => InEN,
			LD => InLD,
			Input => Input,
			Output => busOutput
		);
		
	OutputPort : ENTITY work.OutPORT
		PORT MAP
		(
			CLK => CLK,
			LD => OutLD,
			Input => busOutput, 
			--Output => OutPortOutput
			Output => Output
		);
		
	Counter : ENTITY work.Counter
		PORT MAP
		(
			CLK => CLK,
			Enable => CountEN,
			Reset => RESET,
			Output => counterOutput
		);
		
	RAM : ENTITY work.topRAM
		PORT MAP
		(
			WE => WE,
			CLK => CLK,
			OUTENBL => OUTENBL,
			ADDR => counterOutput,
			dataIn => busOutput,
			dataOut => busOutput
		);
		
			
		
	END STR;
		