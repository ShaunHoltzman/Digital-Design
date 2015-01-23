library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level_tb is
end top_level_tb;


architecture TB of top_level_tb is

    signal clk	: 	std_logic := '0';
	 signal resetn : std_logic;
	 signal enable : std_logic;
	 signal input : std_logic_vector(31 DOWNTO 0);
	 signal output : std_logic_vector(31 DOWNTO 0);
	 signal ROMaddr : std_logic_vector(9 DOWNTO 0);
	
	 

begin

  UUT : entity work.top_level
    
    port map
   (
    clock => clk,
	 output => output,
	 enable => enable,
	 resetn => resetn,
	 input => input,
	 ROMaddr => ROMaddr
	);

  clk <= not clk after 20 ns; 
  
	
  process
  
  VARIABLE temp : STD_LOGIC_VECTOR (9 DOWNTO 0);
 
    
  begin
  resetn <= '0';
  enable <= '0';
  wait for 5 ns;
  resetn <= '1';
  enable <= '1';
	
  
 
 
    for i in 0 to 1023 loop
	 
		temp := STD_LOGIC_VECTOR(TO_UNSIGNED(i, 10));
		
		
		ROMaddr <= temp;
		wait until rising_edge(clk);
	end loop;
	 

	 
	 
  end process;

end TB;
