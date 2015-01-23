library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controller_tb is
end Controller_tb;


architecture TB of Controller_tb is

    signal clock	: 	std_logic := '0';
	 signal start : std_logic;
	 signal resetn : std_logic;
	 signal flipflopenable : std_logic;
	 signal incrementROMenable : std_logic;
	 signal ramDone : std_logic;
	 signal romDone : std_logic;
	 signal clockDone : std_logic;
	 signal incrementRAMenable : std_logic;
	 signal RDY : std_logic;
	 
	
	 

begin

  UUT : entity work.Controller
    
    port map
   (
    clock => clock,
	 start => start,
	 flipflopenable => flipflopenable,
	 resetn => resetn,
	 ramDone => ramDone,
	 romDone => romDone,
	 clockDone => clockDone,
	 incrementROMenable => incrementROMenable,
	 incrementRAMenable => incrementRAMenable
	);

  clock <= not clock after 20 ns; 
  
	
  process
  
  VARIABLE temp : STD_LOGIC_VECTOR (9 DOWNTO 0);
 
    
  begin
  
  start <= '1';
  
  wait;
	
  
 
 
	 

	 
	 
  end process;

end TB;
