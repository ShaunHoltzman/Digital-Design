library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY topLevel IS 
	PORT
		( 
			CLK       : IN STD_LOGIC;
			RESETn     : IN STD_LOGIC;
			IN1_INPUT	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			IN0_INPUT	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			led_hi3      : OUT STD_LOGIC_VECTOR(6 downto 0);
			led_lo2      : OUT STD_LOGIC_VECTOR(6 downto 0);
			led_hi1      : OUT STD_LOGIC_VECTOR(6 downto 0);
			led_lo0      : OUT STD_LOGIC_VECTOR(6 downto 0)
		--	theState : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		--	IR_OUTPUT  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		--   A_DEBUG_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		--	Sout : OUT STD_LOGIC;
		--	Zout : OUT STD_LOGIC;
		--	Cout : OUT STD_LOGIC;
		--	Vout : OUT STD_LOGIC;
		--	currentPC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		--	currentX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		--	D_DEBUG_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
	END topLevel;
	
	
	ARCHITECTURE STR OF topLevel IS 
	
	
		SIGNAL dataBus			 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
		SIGNAL PC_INC		 : STD_LOGIC;
		SIGNAL PC_L_LD : STD_LOGIC;
		SIGNAL PC_H_LD : STD_LOGIC;
		SIGNAL PC_BUS_H : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL PC_BUS_L : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL PC_OUTL_EN : STD_LOGIC;
		SIGNAL PC_OUTH_EN : STD_LOGIC;
		
		SIGNAL AR_H_LD			 : STD_LOGIC;
		SIGNAL AR_L_LD			 : STD_LOGIC;
		SIGNAL ARH_OUT_EN		 : STD_LOGIC;
		SIGNAL ARL_OUT_EN		 : STD_LOGIC;
		SIGNAL IR_LD		    : STD_LOGIC;
		SIGNAL WREN				 : STD_LOGIC;
		SIGNAL RDEN				 : STD_LOGIC;
		
		SIGNAL SPH_LD	: STD_LOGIC;
		SIGNAL SPH_OUT_EN : STD_LOGIC;
		SIGNAL SPL_LD : STD_LOGIC;
		SIGNAL SPL_OUT_EN : STD_LOGIC;
		
		SIGNAL tempAddrH		 : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL tempAddrL		 : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL Address			 : STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		SIGNAL tempAddress    : STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		SIGNAL MEM_EN			 : STD_LOGIC;
		SIGNAL IN1_EN			 : STD_LOGIC;
		SIGNAL IN0_EN			 : STD_LOGIC;
		SIGNAL OUT1_EN			 : STD_LOGIC;
		SIGNAL OUT0_EN			 : STD_LOGIC;
		SIGNAL MEMOUT_EN		 : STD_LOGIC;
		SIGNAL MEM_WREN		 : STD_LOGIC;
		
		SIGNAL regCLK : STD_LOGIC;
		
		SIGNAL PC : STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL AR : STD_LOGIC_VECTOR(15 DOWNTO 0);
		SIGNAL ADDRSEL: STD_LOGIC_VECTOR(1 DOWNTO 0);
		SIGNAL ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		SIGNAL A_LD : STD_LOGIC;
		SIGNAL A_OUT_EN : STD_LOGIC;
		SIGNAL A_ALU_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL A_Z : STD_LOGIC;
		SIGNAL A_S : STD_LOGIC;
		
		SIGNAL setC : STD_LOGIC; --Controller status register signals (outputs of controller)
		SIGNAL clrC : STD_LOGIC;
		SIGNAL sLD  : STD_LOGIC;
		SIGNAL zLD  : STD_LOGIC;
		SIGNAL vLD  : STD_LOGIC;
		SIGNAL cLD  : STD_LOGIC;
		
		SIGNAL S : STD_LOGIC;   --Inputs to controller 
		SIGNAL Z : STD_LOGIC;
		SIGNAL V : STD_LOGIC;
		SIGNAL C : STD_LOGIC; 
		
		SIGNAL X_INC : STD_LOGIC;
		SIGNAL X_DEC : STD_LOGIC;
		SIGNAL X_L_LD : STD_LOGIC;
		SIGNAL X_H_LD : STD_LOGIC;
		SIGNAL X_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
		
		
		SIGNAL D_LD : STD_LOGIC;
		SIGNAL D_OUT_EN : STD_LOGIC;
		SIGNAL D_ALU_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		SIGNAL ALU_SEL : STD_LOGIC_VECTOR(3 DOWNTO 0);
		SIGNAL ALU_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL OV : STD_LOGIC;
		SIGNAL CARRY_OUT : STD_LOGIC;
		
		SIGNAL ALU_LD : STD_LOGIC;
		SIGNAL ALU_OUT_EN : STD_LOGIC;
		
		SIGNAL ALU2_LD : STD_LOGIC;
		SIGNAL ALU2_OUT_EN : STD_LOGIC;
		SIGNAL ALU2_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		SIGNAL OPCODE			 : STD_LOGIC_VECTOR(7 DOWNTO 0);
		
		
		SIGNAL OUT1_OUTPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
		SIGNAL OUT0_OUTPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
	

	BEGIN
	
	
	DecoderHigh3 : entity work.decoder
	PORT MAP
	(
		w   => OUT1_OUTPUT(7 DOWNTO 4),
		y_n => led_hi3
	);
	
	DecoderLow2 : entity work.decoder
	PORT MAP
	(
		w   => OUT1_OUTPUT(3 DOWNTO 0),
		y_n => led_lo2
	);
	
	DecoderHigh1 : entity work.decoder
	PORT MAP
	(
		w   => OUT0_OUTPUT(7 DOWNTO 4),
		y_n => led_hi1
	);
	
	DecoderLow0 : entity work.decoder
	PORT MAP
	(
		w   => OUT0_OUTPUT(3 DOWNTO 0),
		y_n => led_lo0
	);
		
		
	
	--theData <= dataBus;
	
	IN1 : ENTITY work.inputPort
		PORT MAP
		(
		IN_OUTEN => IN1_EN,
		Input => IN1_INPUT,
		IN_OUT => dataBus
		);
		
	IN0 : ENTITY work.inputPort
		PORT MAP
		(
		IN_OUTEN => IN0_EN,
		Input => IN0_INPUT,
		IN_OUT => dataBus
		);
		
	OUT1 : ENTITY work.outputPort
		PORT MAP
		(
		CLK => regCLK,
		RESETn => RESETn,
		OUT_LD => OUT1_EN,
		Input => dataBus,
		Output => OUT1_OUTPUT
		);
		
	OUT0 : ENTITY work.outputPort
		PORT MAP
		(
		CLK => regCLK,
		RESETn => RESETn,
		OUT_LD => OUT0_EN,
		Input => dataBus,
		Output => OUT0_OUTPUT
		);
	
	IR : ENTITY work.instructionRegister
		PORT MAP
		(
		RESETn => RESETn,
		CLK => regCLK,
		IR_LD => IR_LD,
		Input => dataBus,
		IR => OPCODE
		);
		
	--	IR_OUTPUT <= OPCODE;
	
	 A : ENTITY work.accumulatorRegister
		PORT MAP
		(
		CLK => regCLK,
		A_LD => A_LD,
		A_OUT_EN => A_OUT_EN,
		Input => dataBus,
		A_OUT => dataBus,
		A_ALU_OUT => A_ALU_OUT,
		--A_DEBUG_OUT => A_DEBUG_OUT,
		A_Z => A_Z,
		A_S => A_S
		);
		
	Flags : ENTITY work.statusRegister
		PORT MAP
		(
		RESETn => RESETn,
		CLK => regCLK,
		setC => setC,
		clrC => clrC,
		sIN => A_S,
		zIN => A_Z,
		vIN => OV,
		cIN => CARRY_OUT,
		sLD => sLD,
		zLD => zLD,
		vLD => vLD,
		cLD => cLD,
		S => S,
		Z => Z,
		V => V,
		C => C
		);
	
--	Sout <= S;
--	Zout <= Z;
--	Vout <= V;
--	Cout <= C;
		
		
	D : ENTITY work.dataRegister
		PORT MAP
		(
		CLK => regCLK,
		D_LD => D_LD,
		D_OUT_EN => D_OUT_EN,
		Input => dataBus,
		D_OUT => dataBus,
		D_ALU_OUT => D_ALU_OUT
		--D_DEBUG_OUT => D_DEBUG_OUT
		);
	
	ALU : ENTITY work.ALU
		PORT MAP
		(
		A => A_ALU_OUT,
		D => D_ALU_OUT,
		ALU_SEL => ALU_SEL,
		ALU_OUT => ALU_OUT,
		ALU_OUT2 => ALU2_OUT,
		CARRY_IN => C,
		CARRY_OUT => CARRY_OUT,
		OV => OV
		);
	
	tempALUreg : ENTITY work.ALUregister
		PORT MAP
		(
		CLK => regCLK,
		ALU_LD => ALU_LD,
		ALU_OUT_EN => ALU_OUT_EN,
		Input => ALU_OUT,
		ALU_OUT_FINAL => dataBus
		);
		
	tempALUreg2 : ENTITY work.ALUregister
		PORT MAP
		(
		CLK => regCLK,
		ALU_LD => ALU2_LD,
		ALU_OUT_EN => ALU2_OUT_EN,
		Input => ALU2_OUT,
		ALU_OUT_FINAL => dataBus
		);
		
		
	
	Controller : ENTITY work.Controller
		PORT MAP
		(
		RESETn => RESETn,
		CLK => regCLK,
		OPCODE => OPCODE,
		PC_INC => PC_INC,
		ADDRSEL => ADDRSEL,
		AR_H_LD => AR_H_LD,
		AR_L_LD => AR_L_LD,
		ARH_OUT_EN => ARH_OUT_EN,
		ARL_OUT_EN => ARL_OUT_EN,
		PC_L_LD => PC_L_LD,
		PC_H_LD => PC_H_LD,
		IR_LD => IR_LD,
		A_LD => A_LD,
		A_OUT_EN => A_OUT_EN,
		D_LD => D_LD,
		D_OUT_EN => D_OUT_EN,
		WREN => WREN,
		--theState => theState,
		RDEN => RDEN,
		ALU_SEL => ALU_SEL,
		ALU_LD => ALU_LD,
		ALU_OUT_EN => ALU_OUT_EN,
		ALU2_LD => ALU2_LD,
		ALU2_OUT_EN => ALU2_OUT_EN,
		sLD => sLD,
		cLD => cLD,
		vLD => vLD,
		zLD => zLD,
		setC => setC,
		clrC => clrC,
		S => S,
		V => V,
		Z => Z,
		C => C,
		X_INC => X_INC,
		X_DEC => X_DEC,
		X_L_LD => X_L_LD,
		X_H_LD => X_H_LD,
		SPL_LD => SPL_LD,
		SPH_LD => SPH_LD,
		SPL_OUT_EN => SPL_OUT_EN,
		SPH_OUT_EN => SPH_OUT_EN
		);
		
	indexRegister : ENTITY work.indexReg
		PORT MAP
		(
		CLK => regCLK,
		Resetn => RESETn,
		X_INC => X_INC,
		X_DEC => X_DEC,
		X_L_LD => X_L_LD,
		X_H_LD => X_H_LD,
		Input => dataBus,
		X_OUT => X_OUT
		);
		
--		currentX <= X_OUT;
		
	
		
	ProgramCounter : ENTITY work.PC
		PORT MAP
		(
		CLK => regCLK, 
		PC_INC => PC_INC,
		Input => dataBus,
		PC_L_LD => PC_L_LD,
		PC_H_LD => PC_H_LD,
		Resetn => RESETn,
		PC => PC
		);
		
--		currentPC <= PC;
		
	StackPointerH : ENTITY work.SP_H
		PORT MAP
		(
		CLK => regCLK,
		SPH_LD => SPH_LD,
		SPH_OUT_EN => SPH_OUT_EN,
		PCH_INPUT => PC(15 DOWNTO 8),
		SP_H => dataBus
		);
		
	StackPointerL : ENTITY work.SP_L
		PORT MAP
		(
		CLK => regCLK,
		SPL_LD => SPL_LD,
		SPL_OUT_EN => SPL_OUT_EN,
		PCL_INPUT => PC(7 DOWNTO 0),
		SP_L => dataBus
		);
	
	
		
	AddressRegisterHigh : ENTITY work.AR_H
		PORT MAP
		(
		CLK => regCLK,
		AR_H_LD => AR_H_LD,
		ARH_OUT_EN => ARH_OUT_EN,
		AR_H_BUS => dataBus,
		Input => dataBus,
		AR_H => tempAddrH
		);
		
	AddressRegisterLow : ENTITY work.AR_L
		PORT MAP
		(
		CLK => regCLK,
		AR_L_LD => AR_L_LD,
		ARL_OUT_EN => ARL_OUT_EN,
		AR_L_BUS => dataBus,
		Input => dataBus,
		AR_L => tempAddrL
		);
		
	AR <= tempAddrH & tempAddrL;
		
	EnableDecoder : ENTITY work.Decode
		PORT MAP
		(
		ADDR => ADDR,
		WREN => WREN,
		RDEN => RDEN,
		MEM_EN => MEM_EN,
		IN0_EN => IN0_EN,
		IN1_EN => IN1_EN,
		OUT0_EN => OUT0_EN,
		OUT1_EN => OUT1_EN
		);
		
		
	MEMOUT_EN <= RDEN AND MEM_EN;
	
	
	SelectAddress : ENTITY work.addressMUX 
		PORT MAP
		(
		PC => PC,
		AR => AR,
		X => X_OUT,
		SEL => ADDRSEL,
		ADDR => ADDR
		);
		
	tempAddress <= ADDR(7 DOWNTO 0);
	
	MEM_WREN <= MEM_EN AND WREN;
	
	RAM : ENTITY work.topRAM
		PORT MAP
		(
		WREN => MEM_WREN,
		RDEN => RDEN,
		CLK => CLK,
		MEMOUT_EN => MEMOUT_EN,
		ADDR => tempAddress,
		dataIn => dataBus,
		dataOut => dataBus	
		);
		

		
		
	slowCLK : ENTITY work.slowCLK
		PORT MAP 
		(
		clk_in => CLK,
		clk_out => regCLK,
		resetn => RESETn
		);

	END STR;
		