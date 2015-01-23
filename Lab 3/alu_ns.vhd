library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;

entity alu_ns is 

	generic ( 
	WIDTH : positive := 8
	); 
		port ( 
		input1 : in std_logic_vector(WIDTH-1 downto 0); 
		input2 : in std_logic_vector(WIDTH-1 downto 0); 
		sel : in std_logic_vector(3 downto 0); 
		output : out std_logic_vector(WIDTH-1 downto 0); 
		overflow : out std_logic 
		); 
		
end alu_ns;

architecture STR of alu_ns is 

	

	signal tempin1: unsigned(WIDTH downto 0);
	signal tempin2: unsigned(WIDTH downto 0);
	signal tempout: unsigned(WIDTH downto 0);
	signal multout: unsigned(WIDTH+WIDTH+1 downto 0);
	signal reverseout: unsigned(WIDTH-1 downto 0);
	signal swapout: unsigned(WIDTH-1 downto 0);
	signal tempswap: unsigned(WIDTH-1 downto 0);
	signal tempoverflow: unsigned(1 downto 0); 
	signal tempoverflow2: unsigned(1 downto 0);
	signal tempmultoverflow: unsigned(WIDTH+WIDTH+1 downto 0);
	
	 
	
	signal temp3: unsigned(WIDTH+1 downto 0);
	
	begin
		
		
	
		tempin1 <= unsigned('0' & input1);
		tempin2 <= unsigned('0' & input2);
		tempswap <= unsigned(input1);
		multout <= (tempin1*tempin2);
		swapout <= ROTATE_LEFT(unsigned(input1), WIDTH/2);
		tempmultoverflow(WIDTH-1 downto 0) <= (others => '1');
		tempmultoverflow(WIDTH+WIDTH+1 downto WIDTH) <= (others => '0');
		
		
		
								  
		tempoverflow2 <= "01" WHEN multout > tempmultoverflow else	
							  "00" WHEN multout < tempmultoverflow;
							 
		
		
		WITH sel SELECT
		tempout <= NOT(tempin1) WHEN "0000",
				 (tempin1 NOR tempin2) WHEN "0001",		
				 (tempin1 XOR tempin2) WHEN "0010",
				 (tempin1 OR tempin2) WHEN "0011",
				 (tempin1 AND tempin2) WHEN "0100",
				 (tempin1 + tempin2) WHEN "0101",
				 (tempin1 - tempin2) WHEN "0110",
				  multout(WIDTH downto 0) WHEN "0111",
				  (others => '0')         WHEN "1000",
				  (others => '0')       WHEN "1001",
				  SHIFT_LEFT(tempin1,1) WHEN "1010",
				  SHIFT_RIGHT(tempin1,1) WHEN "1011",
				  ('0'&reverseout)            WHEN "1100", 
				  ('0'&swapout)              WHEN "1101", 
				  (others => '0')         WHEN "1110",
				  SHIFT_RIGHT(tempin2, 2)      WHEN "1111",
				  (others => '0')        WHEN OTHERS;
				  
		output <= std_logic_vector(tempout(WIDTH-1 downto 0));
		
		
		WITH sel SELECT
		overflow <=    '0' WHEN "0000",
							'0' WHEN "0001",		
							'0' WHEN "0010",
							'0' WHEN "0011",
							'0' WHEN "0100",
							(tempout(WIDTH)) WHEN "0101",
							'0' WHEN "0110",
							tempoverflow2(0) WHEN "0111",
							'0'              WHEN "1000",
							'0'              WHEN "1001",
							(tempin1(WIDTH-1)) WHEN "1010",
							(tempin1(0))      WHEN "1011",
							'0'             WHEN "1100", 
							'0'             WHEN "1101", 
							'0'             WHEN "1110",
							'0'             WHEN "1111",
							'0'              WHEN OTHERS;
		
		
	reverse : process(tempin1)
	
	
	begin
	
	for i in 0 to (WIDTH/2) loop
				reverseout(WIDTH-1-i) <= tempin1(i);
				reverseout(i) <= tempin1(WIDTH-1-i);			
	end loop;
	
	
	
	
	end process;
		
		
				
				
		
		
	end STR;