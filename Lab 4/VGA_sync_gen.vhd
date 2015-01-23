library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity VGA_sync_gen is
  
  port (
    clk    : in  std_logic;
    reset  : in  std_logic;
    Hcount : out std_logic_vector(9 downto 0);
	 Vcount : out std_logic_vector(9 downto 0);
	 Horiz_Sync : out std_logic;
 	 Vert_Sync : out std_logic;
	 Video_On : out std_logic);
end VGA_sync_gen;


architecture behavior of VGA_sync_gen is
	signal HcountTemp : integer;
	signal VcountTemp : integer;
begin
process(clk,reset)
		begin
		
		
		if(reset='1') then
		HcountTemp <= 0;
		VcountTemp <= 0;
		Vert_Sync <= '1';
		Horiz_Sync <= '1';
		Video_On <= '0';			
			
		elsif(rising_edge(clk)) then
							
					HcountTemp <= HcountTemp + 1;			
					
					if ((VcountTemp < V_DISPLAY_END) and (HcountTemp < H_DISPLAY_END)) then		
									Video_On <= '1';												
					elsif (HcountTemp >= H_DISPLAY_END) then
								Video_On <= '0';
						end if;
								
				if (HcountTemp = H_MAX) then		
						
								Video_On <= '0';
						
					VcountTemp <= VcountTemp+1;		
					
						
								if (VcountTemp = V_MAX) then		
							VcountTemp <= 0;  
								
								elsif (VcountTemp = V_DISPLAY_END) then	
									Video_On <= '0';
								elsif (VcountTemp = VSYNC_BEGIN ) then		
									Vert_Sync <= '0';
								elsif (VcountTemp = VSYNC_END+1) then		
									Vert_Sync <= '1';
																
								end if;

						
								HcountTemp <= 0;
				elsif (HcountTemp = H_DISPLAY_END) then	
						Video_On <= '0';
					
				elsif (HcountTemp = HSYNC_BEGIN) then	
						Horiz_Sync <= '0';
		
				elsif (HcountTemp = HSYNC_END) then	
						Horiz_Sync <= '1';
				end if;
				
		end if;	
		
	Hcount <= std_logic_vector(to_unsigned(HcountTemp,10));
	Vcount <= std_logic_vector(to_unsigned(VcountTemp,10));
end process;
	

end behavior;