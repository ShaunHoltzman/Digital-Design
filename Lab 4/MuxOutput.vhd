 library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity MuxOutput is
generic (
   changeSize : positive := 2);

  port (
	Video_On	  :   in std_logic;
	columnEn	  :	in std_logic;
	rowEn		  :	in std_logic;
	romOutput  :	in std_logic_vector((11 + (2*(2-changeSize))) downto 0);
	output	  :   out std_logic_vector((11 + (2*(2-changeSize))) downto 0));
end MuxOutput;

architecture behavior of MuxOutput is
	 	 
	begin
			process(rowEn, columnEn, romOutput)
					begin
						if ((rowEn = '1') and (columnEn = '1') and Video_On ='1') then
							output <= romOutput;
						else
						output <= (others => '0');
						end if;
		  
			end process;
	end behavior;