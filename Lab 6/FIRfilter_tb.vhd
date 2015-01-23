library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIRfilter_tb is
end FIRfilter_tb;


architecture TB of FIRfilter_tb is

    signal clk	: 	std_logic := '0';
	 signal Start : std_logic;
	 signal resetn : std_logic;
	 signal RDY : std_logic;
	 signal RAMinput : std_logic_vector(31 DOWNTO 0);
	 signal ramDebugAddr :  std_logic_vector(9 downto 0);
	 signal romDebugAddr :  std_logic_vector(9 downto 0);
	 signal incRamDebug : std_logic;
	 signal incRomDebug : std_logic;
	 signal clockDoneDebug : std_logic; 
	 
	
	 

begin

  UUT : entity work.FIRfilter
    
    port map
   (
    Start => Start,
	 Resetn => resetn,
	 clock => clk,
	 RDY => RDY,
	 ramDebugAddr => ramDebugAddr,
	 romDebugAddr => romDebugAddr,
	 incRamDebug => incRamDebug,
	 incRomDebug => incRomDebug,
	 clockDoneDebug => clockDoneDebug,
	 RAMinput => RAMinput
	);

  clk <= not clk after 20 ns; 
 
	
  process
  
 
  begin
  
  resetn <= '0';
	wait for 5 ns;
	resetn <= '1';
   Start <= '1';
  
	
	
	wait;
	
 
  end process;

end TB;
