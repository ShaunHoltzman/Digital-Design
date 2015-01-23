library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY gcd IS
	GENERIC
	(
		WIDTH : positive := 16
	); 
	PORT
		( 
			clk    : IN STD_LOGIC;
			rst    : IN STD_LOGIC;
			go     : IN STD_LOGIC;
			done   : OUT STD_LOGIC;
			x      : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			y      : IN STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0);
			output : OUT STD_LOGIC_VECTOR(WIDTH-1 DOWNTO 0)
		);
	END gcd;
	
	ARCHITECTURE FSM_D1 OF gcd IS
	
		SIGNAL x_lt_y    : STD_LOGIC;
		SIGNAL x_ne_y    : STD_LOGIC;
		SIGNAL x_sel     : STD_LOGIC;
		SIGNAL y_sel     : STD_LOGIC;
		SIGNAL x_en      : STD_LOGIC;
		SIGNAL y_en      : STD_LOGIC;
		SIGNAL output_en : STD_LOGIC;
		
	BEGIN
	
		Datapath : entity work.datapath1
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			clock     => clk,
			reset     => rst, 
			inputX    => x,
			inputY    => y,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			output_en => output_en,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			output    => output
		);
		
		Controller : entity work.ctrl1
		PORT MAP
		(
			reset     => rst,
			clock     => clk,
			GO        => go,
			x_lt_y    => x_lt_y,
			x_ne_y    => x_ne_y,
			x_sel     => x_sel,
			y_sel     => y_sel,
			x_en      => x_en,
			y_en      => y_en,
			done      => done,
			output_en => output_en
		);
	
	END FSM_D1;
	
	
	ARCHITECTURE FSM_D2 OF gcd IS
	
		SIGNAL x_lt_y           : STD_LOGIC;
		SIGNAL x_ne_y           : STD_LOGIC;
		SIGNAL x_sel            : STD_LOGIC;
		SIGNAL y_sel            : STD_LOGIC;
		SIGNAL subtraction_sel1 : STD_LOGIC;
		SIGNAL subtraction_sel2 : STD_LOGIC;
		SIGNAL x_en             : STD_LOGIC;
		SIGNAL y_en             : STD_LOGIC;
		SIGNAL output_en        : STD_LOGIC;
		
	BEGIN
	
		Datapath : entity work.datapath2
		GENERIC MAP(WIDTH)
		PORT MAP
		(
			clock            => clk,
			reset            => rst, 
			inputX           => x,
			inputY           => y,
			x_sel            => x_sel,
			y_sel            => y_sel,
			subtraction_sel1 => subtraction_sel1,
			subtraction_sel2 => subtraction_sel2,
			x_en             => x_en,
			y_en             => y_en,
			output_en        => output_en,
			x_lt_y           => x_lt_y,
			x_ne_y           => x_ne_y,
			output           => output
		);
		
		Controller : entity work.ctrl2
		PORT MAP
		(
			reset            => rst,
			clock            => clk,
			GO               => go,
			x_lt_y           => x_lt_y,
			x_ne_y           => x_ne_y,
			x_sel            => x_sel,
			y_sel            => y_sel,
			subtraction_sel1 => subtraction_sel1,
			subtraction_sel2 => subtraction_sel2,
			x_en             => x_en,
			y_en             => y_en,
			done             => done,
			output_en        => output_en
		);
	
	END FSM_D2;
	