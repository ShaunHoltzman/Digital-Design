library ieee;
use ieee.std_logic_1164.all;



entity adderAndDisplay is
	  port (
    input1    : in  std_logic_vector(7 downto 0);
    input2    : in  std_logic_vector(7 downto 0);
    carry_in  : in  std_logic;
    carry_out : out std_logic;
	 y_n  	  : OUT STD_LOGIC_VECTOR(0 TO 13));
	

	 
end adderAndDisplay;

architecture STR of adderAndDisplay is 

	
	signal sum: std_logic_vector(7 downto 0);
	
	
	component decoder
		 port ( 
			w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			y_n : OUT STD_LOGIC_VECTOR(0 TO 6));
	end component;
	
	component lab2Adder 
		port (
			input1    : in  std_logic_vector(7 downto 0);
			input2    : in  std_logic_vector(7 downto 0);
			carry_in  : in  std_logic;
			sum       : out std_logic_vector(7 downto 0);
			carry_out : out std_logic);
		end component;
		
		
	
begin 

	
	lab2Adder0: lab2Adder port map(input1, input2, carry_in, sum, carry_out);
	decoder0: decoder port map(sum(3 DOWNTO 0), y_n(7 TO 13));
	decoder1: decoder port map(sum(7 DOWNTO 4), y_n(0 TO 6));
	
end STR;