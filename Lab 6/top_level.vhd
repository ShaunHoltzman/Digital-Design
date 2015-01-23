library ieee;
use ieee.std_logic_1164.all;

ENTITY top_level IS

  PORT 
  (
	 clock        : IN STD_LOGIC;
	 resetn        : IN STD_LOGIC;
	 enable       : IN STD_LOGIC;
	 output       : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	 input        : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	 ROMaddr      : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);

END top_level;

ARCHITECTURE STR OF top_level IS

	
	--SIGNAL tempin : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	BEGIN 
	
	
	
	DATAPATH : entity work.Datapath
		PORT MAP 
		(
			clock => clock,
			resetn => resetn,
			enable => enable,
			input => input,
			output => output
		);
		
	ROM : entity work.ROM
	port map 
	(
	address => ROMaddr,
	clock => clock,
		q => input
	);	
	
END STR;