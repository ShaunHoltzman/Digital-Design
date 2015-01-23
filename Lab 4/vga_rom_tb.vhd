library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vga_rom_tb is
end vga_rom_tb;

architecture TB of vga_rom_tb is


  

   signal address		: STD_LOGIC_VECTOR (11 DOWNTO 0);
	signal clock		: STD_LOGIC  := '1';
	signal q		:  STD_LOGIC_VECTOR (11 DOWNTO 0);


	begin 
	
	UUT : entity work.vga_rom
 
    port map (
      address    => address,
      clock    => clock,
		q => q);
	
	clock <= not clock after 20 ns;
	
	process 
	
	begin
	
	
	
	
	address <= "000000000001";
	wait for 200 ns;
	
	end process;
	
	end TB;
	

