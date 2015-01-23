library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pixelCLK is
  generic(clk_in_freq : natural := 50000000;
          clk_out_freq : natural := 25000000);
  port (
    clk_in : in  std_logic;
    clk_out : out std_logic; 
    reset      : in  std_logic);
end pixelCLK;
	
		
	architecture behavior of pixelCLK is
		
		constant ClkVarScale	: integer := clk_in_freq/clk_out_freq;
		signal count : integer range 0 to clkVarScale := 0;
		signal onoff : std_logic;
	
begin
	process(reset,clk_in) begin
	
	
		if (reset='1') then
			onoff <= '0';
			count <= 0;
	elsif rising_edge(clk_in) then
		
			count <= count + 1;
			
			if (count = (clkVarScale-1)) then
				count <= 0;
				onoff <= NOT(onoff);
					
			end if;  
			
			
			if (count = (0)) then
				onoff <= '0';
				end if;
			
			
		end if;    
				
	end process;
	
			clk_out <= onoff;
		
end behavior;
			