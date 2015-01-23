library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY FIRfilter IS
	
	PORT
	( 
		Start : IN STD_LOGIC;
		Resetn : IN STD_LOGIC;
		clock : IN STD_LOGIC;
		RDY : OUT STD_LOGIC;
		ramDebugAddr : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		romDebugAddr : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		incRamDebug : OUT std_logic;
		incRomDebug : OUT std_logic;
		clockDoneDebug : OUT std_logic;
		--RAMoutput : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		
		RAMinput : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
			
	);
	END FIRfilter;
	
	ARCHITECTURE STR OF FIRfilter IS
	
	SIGNAL clockDone : STD_LOGIC;
	SIGNAL romDone : STD_LOGIC;
	SIGNAL ramDone : STD_LOGIC;
	SIGNAL flipFlopEnable : STD_LOGIC;
	SIGNAL incrementROMEnable : STD_LOGIC;
	SIGNAL incrementRAMEnable : STD_LOGIC;
	SIGNAL romAddress : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL ramAddress : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL datapathInput : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL datapathOutput : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL wren : STD_LOGIC;
	SIGNAL RAMoutput : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
		
	BEGIN
	
	CONTROLLER : entity work.Controller
		PORT MAP
		(
		clock => clock,
		Start => Start,
		Resetn => Resetn,
		ramDone => ramDone,
		romDone => romDone,
		clockDone => clockDone,
		flipFlopEnable => flipFlopEnable,
		incrementRAMEnable => incrementRAMEnable,
		incrementROMEnable => incrementROMEnable,
		RDY => RDY
		);
		
		clockDoneDebug <= clockDone;
		incramDebug <= incrementRAMEnable;
		incromDebug <= incrementROMEnable;
		
	ADDRESS_ROM : entity work.addrGenRom
		PORT MAP
		(
		enable => incrementROMEnable,
		clockDone => clockDone,
		romDone => romDone,
		clock => clock,
		resetn => resetn,
		outputAddress => romAddress
		);
		
		romDebugAddr <= romAddress;
	ROM : entity work.ROM
		PORT MAP
		(
		address => romAddress,
		clock => clock,
			q => datapathInput
		);	
		
	DATAPATH : entity work.Datapath
		PORT MAP 
		(
			clock => clock,
			resetn => Resetn,
			enable => flipFlopEnable,
			input => datapathInput,
			output => datapathOutput
		);	
		
		RAMinput <= datapathOutput;
		
	ADDRESS_RAM : entity work.addrGenRAM
		PORT MAP
		(
		enable => incrementRAMEnable,
		clock => clock,
		ramDone => ramDone,
		resetn => Resetn,
		wren => wren,
		outputAddress => ramAddress
		);	
		
		ramDebugAddr <= ramAddress;
		
	RAM : entity work.RAM
		PORT MAP
		(
		address => ramAddress,
		data => datapathOutput,
		clock => clock,
		wren => wren,
			q => RAMOutput
		);	
		
			
	
	
	END STR;
	