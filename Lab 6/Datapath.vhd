library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Datapath IS
	PORT
		( 
			clock			: IN STD_LOGIC;
			resetn       : IN STD_LOGIC;
			enable      : IN STD_LOGIC;
			input 		: IN STD_LOGIC_VECTOR(31 DOWNTO 0);		
			output 		: OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	
		);
	END Datapath;
	
	ARCHITECTURE STR OF Datapath IS 
	
	SIGNAL ffOut1, ffOut2, ffOut3, ffOut4, ffOut5, ffOut6, ffOut7, ffOut8 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others =>'0');
	SIGNAL multOut1, multOut2, multOut3, multOut4, multOut5, multOut6, multOut7, multOut8 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others =>'0');
	SIGNAL adderOut1, adderOut2, adderOut3, adderOut4, adderOut5, adderOut6 : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others =>'0');
	SIGNAL coeff1, coeff2, coeff3, coeff4, coeff5, coeff6, coeff7, coeff8 : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	
	BEGIN 
	
	coeff1 <= "00111101100011000110011101001101";
	coeff2 <= "00111101111001001111101001110010";
	coeff3 <= "00111110000110001001110101011000";
	coeff4 <= "00111110001011101010110011011100";
	coeff5 <= "00111110001011101010110011011100";
	coeff6 <= "00111110000110001001110101011000";
	coeff7 <= "00111101111001001111101001110010";
	coeff8 <= "00111101100011000110011101001101";
	
	FF_1 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => input,
			output => ffOut1
		);
	
	FF_2 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut1,
			output => ffOut2
		);
		
	FF_3 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut2,
			output => ffOut3
		);	
		
	FF_4 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut3,
			output => ffOut4
		);
	
	FF_5 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut4,
			output => ffOut5
		);
		
	FF_6 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut5,
			output => ffOut6
		);
		
	FF_7 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut6,
			output => ffOut7
		);
		
	FF_8 : entity work.flipFlop
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => ffOut7,
			output => ffOut8
		);
		
	MULT_1 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff1,
			datab => ffOut1,
			result => multOut1
		);
		
	MULT_2 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff2,
			datab => ffOut2,
			result => multOut2
		);
		
	MULT_3 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff3,
			datab => ffOut3,
			result => multOut3
		);
		
	MULT_4 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff4,
			datab => ffOut4,
			result => multOut4
		);
		
	MULT_5 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff5,
			datab => ffOut5,
			result => multOut5
		);
		
	MULT_6 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff6,
			datab => ffOut6,
			result => multOut6
		);
		
	MULT_7 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff7,
			datab => ffOut7,
			result => multOut7
		);
		
	MULT_8 : entity work.Mult
		PORT MAP
		(
			clock => clock,
			dataa => coeff8,
			datab => ffOut8,
			result => multOut8
		);
		
	ADDER_1 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => multOut1,
			datab => multOut2,
			result => adderOut1
		);
		
	ADDER_2 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => multOut3,
			datab => multOut4,
			result => adderOut2
		);
		
	ADDER_3 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => multOut5,
			datab => multOut6,
			result => adderOut3
		);
	
	ADDER_4 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => multOut7,
			datab => multOut8,
			result => adderOut4
		);
		
	ADDER_5 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => adderOut1,
			datab => adderOut2,
			result => adderOut5
		);
		
	ADDER_6 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => adderOut3,
			datab => adderOut4,
			result => adderOut6
		);
	
	ADDER_7 : entity work.Adder
		PORT MAP
		(
			clock => clock,
			dataa => adderOut5,
			datab => adderOut6,
			result => output
		);
	
	
	END STR;