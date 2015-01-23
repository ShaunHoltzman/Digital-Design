library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity Column_tb is
end Column_tb;


architecture TB of Column_tb is


    signal clk	: 	std_logic := '0';
	 signal reset			:  std_logic;
	 signal button1	:	std_logic;
	 signal button2	:	std_logic;
	 signal button3 	:	std_logic;
	 signal hcount	  : std_logic_vector(9 downto 0);
	 signal columnOut	  : std_logic_vector(5 downto 0);
	 signal columnEn		  :	 std_logic;
	 
	
begin

  UUT : entity work.Column
    
    port map (
    clk => clk,
	 reset		=> reset,
	 button1 => button1,
	 button2	=> button2,
	 button3 => button3,
	 hcount => hcount,
	 columnEn => columnEn,
	 columnOut => columnOut);
	 
	 clk <= not clk after 20 ns;
	 
	process
	
	 
	
	begin
	
	reset   <= '1';
   wait for 200 ns;
   reset <= '0';
	
	 --if the buttons are correct and it is between the specific boundaries it'll output the address. 
	 --once it exceeds it, it will output all 0's or if the right button's are not pressed
	 
	 
	button1 <= '0';
	button2 <= '0';
	button3 <= '0';
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((CENTERED_X_START+1), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((CENTERED_X_START+2), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((CENTERED_X_END+1), 10));
	wait for 200 ns;
	
	button1 <= '0';
	button2 <= '0';
	button3 <= '1';
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((TOP_LEFT_X_START+1), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((TOP_LEFT_X_START+2), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((TOP_LEFT_X_END+1), 10));
	wait for 200 ns;
	
	button1 <= '0';
	button2 <= '1';
	button3 <= '0';
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((TOP_RIGHT_X_START+1), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((TOP_RIGHT_X_START+2), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((TOP_RIGHT_X_END+1), 10));
	wait for 200 ns;
	 
	button1 <= '0';
	button2 <= '1';
	button3 <= '1';
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((BOTTOM_LEFT_X_START+1), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((BOTTOM_LEFT_X_START+2), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((BOTTOM_LEFT_X_START+1), 10));
	wait for 200 ns;
	 
	 button1 <= '1';
	button2 <= '0';
	button3 <= '0';
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((BOTTOM_RIGHT_X_START+1), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((BOTTOM_RIGHT_X_START+2), 10));
	wait for 200 ns;
	hcount <= std_logic_vector(to_unsigned((BOTTOM_RIGHT_X_START+1), 10));
	wait for 200 ns;
	
	-- if none of the right button choices are made, nothing will be outputted
	button1 <= '1';
	button2 <= '0';
	button3 <= '1';
	wait for 200 ns;
	button1 <= '1';
	button2 <= '1';
	button3 <= '0';
	wait for 200 ns;
	button1 <= '1';
	button2 <= '1';
	button3 <= '1';
	
	
	
	
	 end process;
	 
	 
	 
	 
	 
end TB;