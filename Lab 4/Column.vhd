 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity Column is
 generic (
   changeSize : positive := 2);
 
 
  port (
   clk		  :	in  std_logic;
	reset		  :	in  std_logic;
	
   button1    : 	in  std_logic;
	button2    : 	in  std_logic;
	button3    : 	in  std_logic;
	
	hcount	  :	in  std_logic_vector(9 downto 0);
	columnOut  :	out std_logic_vector((5+(2-changeSize)) downto 0);
	columnEn	  :	out std_logic);
end Column;

architecture behavior of Column is
 begin
 
process(clk,reset)
		begin
		
		
		if(reset='1') then
					columnEn <= '0';
					columnOut <= (others => '0');
					
		elsif(rising_edge(clk)) then
		
						if ((button1 = '1') and (button2= '1') and (button3 = '1')) then
							if ((unsigned(hcount) > 254) and (unsigned(hcount) < 384)) then
								columnEn <= '1'; 
								columnOut <= std_logic_vector(to_unsigned((to_integer((unsigned(hcount)) - 254)/changeSize),(6+(2-changeSize))));
			
							else
								columnEn <='0';
								columnOut <= (others => '0');						
							end if;
							
							
							
							
						elsif ((button1 = '0') and (button2= '0') and (button3 = '0')) then
							if ((unsigned(hcount) < CENTERED_X_END) and (unsigned(hcount) > CENTERED_X_START)) then
								columnEn <= '1';
								columnOut <= std_logic_vector(to_unsigned((to_integer((unsigned(hcount)) - CENTERED_X_START)/changeSize),(6+(2-changeSize))));
							else
								columnEn <='0';
								columnOut <= (others => '0');							
							end if;
							
						elsif ((button1 = '0') and (button2= '0') and (button3 = '1')) then
							if ((unsigned(hcount) < TOP_LEFT_X_END) and (unsigned(hcount) > TOP_LEFT_X_START)) then
								columnEn <= '1';
								columnOut <= std_logic_vector(to_unsigned((to_integer((unsigned(hcount)) - TOP_LEFT_X_START)/changeSize),(6+(2-changeSize))));
							else
								columnEn <='0';
								columnOut <= (others => '0');
							end if;
							
						elsif ((button1 = '0') and (button2= '1') and (button3 = '0')) then
							if ((unsigned(hcount) < TOP_RIGHT_X_END) and (unsigned(hcount) > TOP_RIGHT_X_START)) then
								columnEn <= '1';
								columnOut <= std_logic_vector(to_unsigned((to_integer((unsigned(hcount)) - TOP_RIGHT_X_START)/changeSize),(6+(2-changeSize))));
							else
								columnEn <='0';
								columnOut <= (others => '0');
							end if;
							
						elsif ((button1 = '0') and (button2= '1') and (button3 = '1')) then
							if ((unsigned(hcount) < BOTTOM_LEFT_X_END) and (unsigned(hcount) > BOTTOM_LEFT_X_START)) then
								columnEn <= '1';
								columnOut <= std_logic_vector(to_unsigned((to_integer((unsigned(hcount)) - BOTTOM_LEFT_X_START)/changeSize),(6+(2-changeSize))));
							else
								columnEn <='0';
								columnOut <= (others => '0');
							end if;
							 
						elsif ((button1 = '1') and (button2= '0') and (button3 = '0')) then
							if ((unsigned(hcount) < BOTTOM_RIGHT_X_END) and (unsigned(hcount) > BOTTOM_RIGHT_X_START)) then
								columnEn <= '1';
								columnOut <= std_logic_vector(to_unsigned((to_integer((unsigned(hcount)) - BOTTOM_RIGHT_X_START)/changeSize),(6+(2-changeSize))));
							else
								columnEn <='0';
								columnOut <= (others => '0');
							end if;
							 
						end if; 
	end if;
 end process;
end behavior; 