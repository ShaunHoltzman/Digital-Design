 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity Row is
 generic (
    changeSize : positive := 2);


  port (
   clk		  :	in  std_logic;
	reset		  :	in  std_logic;
	
	button1    : 	in  std_logic;
	button2    : 	in  std_logic;
	button3    : 	in  std_logic;
	
	vcount	  :	in  std_logic_vector(9 downto 0);
	rowOut	  :	out std_logic_vector((5+(2-changeSize)) downto 0);
	rowEn		  :	out std_logic);
end Row;

architecture behavior of Row is
  begin
 process(clk,reset)
		begin
		
		
		if(reset='1') then
					rowEn <= '0';
					rowOut <= (others => '0');
					
		elsif(rising_edge(clk)) then 
		
				if ((button1 = '1') and (button2= '1') and (button3 = '1')) then
	
					if ((unsigned(vcount) < 127) and (unsigned(vcount) > 0)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - 0)/changeSize),(6+(2-changeSize))));
					elsif ((unsigned(vcount) < 479) and (unsigned(vcount) > 351)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - 351)/changeSize),(6+(2-changeSize))));
						
						--if ((unsigned(vcount) < 351) and (unsigned(vcount) > 127)) then
						--	rowEn <= '1';
							--rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) -351)/changeSize),(6+(2-changeSize))));
						
						
						
							else rowEn <='0';
							rowOut <= (others => '0');						
						end if;
						
		
					
		
		
		
		
					elsif ((button1 = '0') and (button2= '0') and (button3 = '0')) then
						if ((unsigned(vcount) < CENTERED_Y_END) and (unsigned(vcount) > CENTERED_Y_START)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - CENTERED_Y_START)/changeSize),(6+(2-changeSize))));
						else
							rowEn <='0';
							rowOut <= (others => '0');
						end if;
						
					elsif ((button1 = '0') and (button2= '0') and (button3 = '1')) then
						if ((unsigned(vcount) < TOP_LEFT_Y_END) and (unsigned(vcount) > TOP_LEFT_Y_START)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - TOP_RIGHT_Y_START)/changeSize),(6+(2-changeSize))));
						else
							rowEn <='0';
							rowOut <= (others => '0');						
						end if;
						
					elsif ((button1 = '0') and (button2= '1') and (button3 = '0')) then
						if ((unsigned(vcount) < TOP_RIGHT_Y_END) and (unsigned(vcount) > TOP_RIGHT_Y_START)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - TOP_RIGHT_Y_START)/changeSize),(6+(2-changeSize))));
						else
							rowEn <='0';
							rowOut <= (others => '0');						
						end if;
						
					elsif ((button1 = '0') and (button2= '1') and (button3 = '1')) then
						if ((unsigned(vcount) < BOTTOM_LEFT_Y_END) and (unsigned(vcount) > BOTTOM_LEFT_Y_START)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - BOTTOM_LEFT_Y_START)/changeSize),(6+(2-changeSize))));
						else
							rowEn <='0';
							rowOut <= (others => '0');						
						end if;
						 
					elsif ((button1 = '1') and (button2= '0') and (button3 = '0')) then
						if ((unsigned(vcount) < BOTTOM_RIGHT_Y_END) and (unsigned(vcount) > BOTTOM_RIGHT_Y_START)) then
							rowEn <= '1';
							rowOut <= std_logic_vector(to_unsigned((to_integer((unsigned(vcount)) - BOTTOM_RIGHT_Y_START)/changeSize),(6+(2-changeSize))));
						else
							rowEn <='0';
							rowOut <= (others => '0');						
						end if;
						 
					end if; 
	end if;
 end process;
end behavior;