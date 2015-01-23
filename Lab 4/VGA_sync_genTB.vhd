library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA_sync_genTB is
end VGA_sync_genTB;





architecture TB of VGA_sync_genTB is


   signal clk : std_logic := '0';
   signal reset    : std_logic;
   signal Hcount : std_logic_vector(9 downto 0);
	signal Vcount : std_logic_vector(9 downto 0);
	signal Horiz_Sync : std_logic;
 	signal Vert_Sync : std_logic;
	signal Video_On : std_logic;


begin

  UUT : entity work.VGA_sync_gen
 
    port map (
      clk    => clk,
      reset    => reset,
		Hcount => Hcount,
		Vcount => Vcount,
		Horiz_Sync => Horiz_Sync,
		Vert_Sync => Vert_Sync,
		Video_On => Video_On);

  clk <= not clk after 20 ns; --25Mhz Clk

  process
    
  begin

    reset   <= '1';
    wait for 200 ns;
    reset <= '0';
	 wait for 20 ms;
  end process;

end TB;
