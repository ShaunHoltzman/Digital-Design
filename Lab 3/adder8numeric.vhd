library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;


entity adder8numeric is 

	port(input1, input2 : in std_logic_vector(7 downto 0); 
			carry_in : in std_logic; 
			sum : out std_logic_vector(7 downto 0); 
			carry_out : out std_logic); 
			
end adder8numeric;

architecture STR of adder8numeric is 

	signal tempin1: unsigned(7 downto 0);
	signal tempin2: unsigned(7 downto 0);
	signal tempsum: unsigned(8 downto 0);
	signal tempcarry_in: unsigned(1 downto 0);
	
	begin
	
		tempin1 <= unsigned(input1);
		tempin2 <= unsigned(input2);
		tempcarry_in <= '0' & carry_in;
	
	
		tempsum <= ('0' & tempin1) +
					  ('0' & tempin2) +
					  (tempcarry_in);
				  
		sum <= std_logic_vector(tempsum(7 downto 0)); 
		carry_out <= tempsum(8);
		
	end STR;
	