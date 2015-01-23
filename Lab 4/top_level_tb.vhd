library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level_tb is
end top_level_tb;


architecture TB of top_level_tb is


  

    signal clk	: 	std_logic := '0';
	 signal reset			:  std_logic;
	 signal buttons		:	std_logic_vector(2 downto 0);
	 signal dataOut	:	std_logic_vector(11 downto 0);
	 signal horiz_sync:	std_logic;
	 signal vert_sync	:	std_logic;


begin

  UUT : entity work.top_level
    
    port map (
    clk50Mhz => clk,
	 reset	=> reset,
	 buttons => buttons,
	 dataOut	=> dataOut,
	 horiz_sync	=> horiz_sync,
	 vert_sync	=>vert_sync);

  clk <= not clk after 10 ns; 
  buttons <= "001";
	
	
  process
    
  begin

    reset   <= '1';
    wait for 200 ns;
    reset <= '0';
	 wait for 2000 ms;
	 

	 
	 
  end process;

end TB;
