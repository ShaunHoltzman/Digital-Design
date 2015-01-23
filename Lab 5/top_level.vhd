library ieee;
use ieee.std_logic_1164.all;

ENTITY top_level IS
	GENERIC
	(
		WIDTH : positive := 8
	); 
  PORT 
  (
	 clock       : IN STD_LOGIC;
	 reset       : IN STD_LOGIC;
	 x           : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
    y           : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
	 go_n        : IN STD_LOGIC;
    led_hi      : OUT STD_LOGIC_VECTOR(6 downto 0);
    led_hi_dp   : OUT STD_LOGIC;
    led_lo      : OUT STD_LOGIC_VECTOR(6 downto 0);
    led_lo_dp   : OUT STD_LOGIC
	);

END top_level;

ARCHITECTURE STR OF top_level IS

	SIGNAL go         : STD_LOGIC;
	SIGNAL tempDone   : STD_LOGIC; 
	SIGNAL tempOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
	

	
	BEGIN
	
	go        <= (NOT go_n);
	led_hi_dp <= (NOT tempDone);
   led_lo_dp <= (NOT tempDone);
	
	GCD : entity work.gcd(FSM_D2)
	GENERIC MAP(WIDTH)
	PORT MAP
	(
		clk    => clock,
		rst    => reset,
		go     => go,
		done   => tempDone,
		x      => x,
		y      => y, 
		output => tempOutput
	);
		
	DecoderHigh : entity work.decoder
	PORT MAP
	(
		w   => tempOutput(7 DOWNTO 4),
		y_n => led_hi
	);
	
	DecoderLow : entity work.decoder
	PORT MAP
	(
		w   => tempOutput(3 DOWNTO 0),
		y_n => led_lo
	);
		
		
END STR;	