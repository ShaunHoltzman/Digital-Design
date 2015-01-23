
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top_level is
	generic (
    changeSize : positive := 1);
  port (
    clk50Mhz	: 	in std_logic;
	 reset			:  in std_logic;
	 buttons		:	in std_logic_vector(2 downto 0);
	 dataOut		:	out std_logic_vector((11 + (2*(2-changeSize))) downto 0);
	 horiz_sync	:	out std_logic;
	 vert_sync	:	out std_logic);
	 
end top_level;

architecture behavior of top_level is
	signal tempAddress			: std_logic_vector((11+ (2*(2-changeSize))) downto 0);
   signal CLK_25MHz 			: std_logic;
   signal vCountTemp		   : std_logic_vector(9 downto 0);
   signal hCountTemp 			: std_logic_vector(9 downto 0);
	signal rowAddressTemp 	: std_logic_vector((5+(2-changeSize)) downto 0);
	signal rowEnTemp      	: std_logic;
	signal columnAddressTemp : std_logic_vector((5+(2-changeSize)) downto 0);
	signal columnEnTemp		: std_logic;
	signal outputTemp			: std_logic_vector((11 + (2*(2-changeSize))) downto 0);
	signal ROMoutTemp			: std_logic_vector((11 + (2*(2-changeSize))) downto 0);
	signal Video_OnTemp			: std_logic;
  
begin  

	
		dataOut <= outputTemp;
		
	UCLK : entity work.pixelCLK			
	 port map(
	 clk_in  => clk50Mhz,
	 reset => reset,
	 clk_out => CLK_25Mhz);
	 
	 
	 USYNCGEN: entity work.VGA_sync_gen   
	 port map (
	 clk => clk_25MHz,
    reset => reset,
    Hcount => hCountTemp,
	 Vcount => vCountTemp,
	 Horiz_Sync => horiz_sync,
 	 Vert_Sync => vert_sync,
	 Video_On =>  Video_OnTemp);
	 
	UUR : entity work.Row
	generic map(changeSize => changeSize)
    port map (
		rowEn => rowEnTemp,
		rowOut => rowAddressTemp,
		
		clk => clk_25MHz,
		reset => reset,
		button1 => buttons(2),
		button2 => buttons(1),
		button3 => buttons(0),
		vcount => vCountTemp);
				
   UUC : entity work.Column
	generic map(changeSize => changeSize)
    port map (
		columnEn => columnEnTemp,
		columnOut => columnAddressTemp,
		
		clk => clk_25MHz,
		reset => reset,
		button1 => buttons(2),
		button2 => buttons(1),
		button3 => buttons(0),
		hcount => hCountTemp);
						
					
	ROM : entity work.vga_rom
	port map (
		address => tempAddress,
		clock => clk_25MHz,
		q => ROMoutTemp);
		
	MUX : entity work.MuxOutput
	generic map(changeSize => changeSize)
	port map (	
	Video_On => Video_OnTemp,
	columnEn => columnEnTemp,
	rowEn => rowEnTemp,
	romOutput => ROMoutTemp,
	output => outputTemp);
			
			
	tempAddress((11+ (2*(2-changeSize))) downto (6 +(2-changeSize))) <= rowAddressTemp; 
	tempAddress((5+(2-changeSize)) downto 0) <= columnAddressTemp;		
	
	
end behavior;


