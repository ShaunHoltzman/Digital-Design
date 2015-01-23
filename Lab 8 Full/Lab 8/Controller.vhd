library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


ENTITY Controller IS
	PORT
		( 
			RESETn           : IN STD_LOGIC;
			CLK              : IN STD_LOGIC;
			OPCODE			  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			S 					  : IN STD_LOGIC;
			V 					  : IN STD_LOGIC;
			C					  : IN STD_LOGIC;
			Z 				  	  : IN STD_LOGIC;
			PC_INC			  : OUT STD_LOGIC;
			PC_L_LD			  : OUT STD_LOGIC;
			PC_H_LD			  : OUT STD_LOGIC;
			AR_H_LD			  : OUT STD_LOGIC;
			AR_L_LD			  : OUT STD_LOGIC;
			ARH_OUT_EN		  : OUT STD_LOGIC;
			ARL_OUT_EN		  : OUT STD_LOGIC;
			ADDRSEL			  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			IR_LD				  : OUT STD_LOGIC;
			A_LD				  : OUT STD_LOGIC;
			A_OUT_EN 		  : OUT STD_LOGIC;
			D_LD				  : OUT STD_LOGIC;
			D_OUT_EN			  : OUT STD_LOGIC;
			WREN				  : OUT STD_LOGIC;
			RDEN				  : OUT STD_LOGIC;
			ALU_SEL			  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			ALU_LD			  : OUT STD_LOGIC;
			ALU_OUT_EN		  : OUT STD_LOGIC;
			ALU2_LD 			  : OUT STD_LOGIC;
			ALU2_OUT_EN	 	  : OUT STD_LOGIC;
			sLD	: OUT STD_LOGIC;
			cLD   : OUT STD_LOGIC;
			vLD	: OUT STD_LOGIC;
			zLD	: OUT STD_LOGIC; 
			setC  : OUT STD_LOGIC;
			clrC	: OUT STD_LOGIC;
			X_INC : OUT STD_LOGIC;
			X_DEC : OUT STD_LOGIC;
			X_L_LD : OUT STD_LOGIC;
			X_H_LD : OUT STD_LOGIC;
			SPL_LD : OUT STD_LOGIC;
			SPH_LD : OUT STD_LOGIC;
			SPL_OUT_EN : OUT STD_LOGIC;
			SPH_OUT_EN : OUT STD_LOGIC
			--theState : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
			
		);
	END Controller;
	
		ARCHITECTURE STR OF Controller IS 
		
		TYPE ctrlStateType IS (INITIALIZE, FETCH, DECODE, LDAI, LDAA0, LDAA1, LDAA2, ANDR_D0, ANDR_D1, BRANCH0, BRANCH1, BRANCH2, BRANCH3, ADCRD0, ADCRD1, STAA0, STAA1, STAA2, RORC0, RORC1, DECA0, DECA1, LDXI0, LDXI1, LDAA_X, LDAD, MULT0, MULT1, MULT2, CALL0, CALL1, CALL2, CALL3, CALL4, CALL5, RET0, RET1, LOADFLAGS_SZCV, PCINC0, PCINC1, LOADFLAGS_SZ, TEST);
		SIGNAL state, nextState : ctrlStateType; 
		SIGNAL theSTate : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	BEGIN
	
		PROCESS(CLK, RESETn)
		BEGIN
		
		IF RESETn = '0' THEN 
			state <= INITIALIZE;
		ELSIF (rising_edge(clk)) THEN 
			state <= nextState;
		END IF;
		
		END PROCESS;
		
	
		
		PROCESS(state, OPCODE)
		BEGIN
		
			PC_INC <= '0';		
			PC_L_LD <= '0';
			PC_H_LD <= '0';
			
			ADDRSEL <= "00";
			AR_H_LD <= '0';			  
			AR_L_LD <= '0';	
			ARH_OUT_EN <= '0';
			ARL_OUT_EN <= '0';
			IR_LD <= '0';				  
			WREN <= '0';				 
			RDEN <= '0';
			A_OUT_EN <= '0';
			A_LD <= '0';
			D_LD <= '0';
			D_OUT_EN <= '0';
			
			ALU_SEL <= "1111";
			ALU_LD <= '0';
			ALU_OUT_EN <= '0';
			
			ALU2_LD <= '0';
			ALU2_OUT_EN <= '0';
			
			zLD <= '0';
			sLD <= '0';
			cLD <= '0';
			vLD <= '0';
			setC <= '0';
			clrC <= '0';
			
			X_INC <= '0';
			X_DEC <= '0';
			X_L_LD <= '0';
			X_H_LD <= '0';
			
			SPL_LD <= '0';
			SPH_LD <= '0';
			SPL_OUT_EN <= '0';
			SPH_OUT_EN <= '0';
		
			CASE state IS
				WHEN INITIALIZE =>
						nextState <= FETCH;
						theState <= "00000000";
				 WHEN FETCH =>
						ADDRSEL <= "00";
						RDEN <= '1';
						IR_LD <= '1';
						nextState <= DECODE;
						theState <= "00000001";
				 WHEN DECODE =>
						PC_INC <= '1';
						theState <= "00000010";
						CASE OPCODE IS
							WHEN X"88" => -- LDAA <ADDR>
								nextState <= LDAA0;
							WHEN X"F1" => -- STAR D
								A_OUT_EN <= '1';
								D_LD <= '1';
								nextState <= FETCH;
							WHEN X"21" => -- ANDR D
								nextState <= ANDR_D0;
							WHEN X"B2" => -- BEQA
								IF(Z = '1') THEN
									nextState <= BRANCH0;
								ELSE
									nextState <= PCINC0;
								END IF;
							WHEN X"01" =>  -- ADCR D   A <- A + D + (C)
								nextState <= ADCRD0;
							WHEN X"F6" => -- STAA
								nextState <= STAA0;
							WHEN X"F9" => -- CLRC
								clrC <= '1';
								nextState <= FETCH;
							WHEN X"B0" => -- BCCA
								IF(C = '0') THEN
									nextState <= BRANCH0;
								ELSE
									nextState <= PCINC0;
								END IF;
							WHEN X"84" => -- LDAI
								nextState <= LDAI;
							WHEN X"62" => --RORC
								nextState <= RORC0;
							WHEN X"FB" => --DECA0
								nextState <= DECA0;
							WHEN X"B4" => --BNEA
								IF(Z = '0') THEN
									nextState <= BRANCH0;
								ELSE
									nextState <= PCINC0;
								END IF;
							WHEN X"8A" => -- LDXI <DATA>
								nextState <= LDXI0;
							WHEN X"BC" => -- LDAA 0,X
								nextState <= LDAA_X;
							WHEN X"FC" => -- INC X
								X_INC <= '1';
								nextState <= FETCH;
							WHEN X"81" => -- LDAD
								nextState <= LDAD;
							WHEN X"C8" => -- CALL
								nextState <= CALL0;
							WHEN X"C0" => -- RET
								nextState <= RET0;
							WHEN X"B5" =>
								IF(S = '0') THEN
									nextState <= BRANCH0;
								ELSE
									nextState <= PCINC0;
								END IF;
							WHEN X"99" => -- MULT
								nextState <= MULT0;
							WHEN OTHERS =>	
						END CASE;
				 WHEN LDAA0 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					AR_L_LD <= '1';
					PC_INC <= '1';
				 	nextState <= LDAA1;
					theState <= "00000011";
				 WHEN LDAA1 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					AR_H_LD <= '1';
					PC_INC <= '1';
					nextState <= LDAA2;
					theState <= "00000100";
				WHEN LDAA2 =>
					ADDRSEL <= "01";
					RDEN <= '1';
					A_LD <= '1';
					theState <= "00000101";
					nextState <= FETCH;
				WHEN ANDR_D0 =>
					ALU_SEL <= "0100";
					ALU_LD <= '1';
					nextState <= ANDR_D1;
					theState <= "00000110";
				WHEN ANDR_D1 =>
					ALU_OUT_EN <= '1';
					A_LD <= '1';
					nextState <= LOADFLAGS_SZ;--Affects the Z and S flags
					theState <= "00000111";
				WHEN BRANCH0 => 
					ADDRSEL <= "00";
					RDEN <= '1';
					AR_L_LD <= '1';
					PC_INC <= '1';
					nextState <= BRANCH1;
					theState <= "00001001";
				WHEN BRANCH1 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					AR_H_LD <= '1';
					nextState <= BRANCH2;
					theState <= "00001010";
				WHEN BRANCH2 =>
					ARL_OUT_EN <= '1';
					PC_L_LD <= '1';
					nextState <= BRANCH3;
					theState <= "00001011";
				WHEN BRANCH3 =>
					ARH_OUT_EN <= '1';
					PC_H_LD <= '1';
					nextState <= FETCH;
					theState <= "00001100";
				WHEN ADCRD0 =>
					ALU_SEL <= "0101";
					ALU_LD <= '1';
					nextState <= ADCRD1;
					theState <= "00001111";
				WHEN ADCRD1 =>
					ALU_OUT_EN <= '1';
					ALU_SEL <= "0101";
					A_LD <= '1';
					cLD <= '1';
					vLD <= '1';
					nextState <= LOADFLAGS_SZ;
					theState <= "00010000";
				WHEN STAA0 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					AR_L_LD <= '1';
					PC_INC <= '1';
					nextState <= STAA1;
					theState <= "00010010";
				WHEN STAA1 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					AR_H_LD <= '1';
					PC_INC <= '1';
					nextState <= STAA2;
					theState <= "00010011";
				WHEN STAA2 => 
					A_OUT_EN <= '1';
					WREN <= '1';
					ADDRSEL <= "01";
					nextState <= FETCH;
					theState <= "00010100";
				WHEN LDAI =>
					RDEN <= '1';
					A_LD <= '1';
					PC_INC <= '1';
					nextState <= FETCH;
				WHEN RORC0 =>
					ALU_SEL <= "0000";
					ALU_LD <= '1';
					--cLD <= '1';
					nextState <= RORC1;
					theState <= "00010110";
				WHEN RORC1 =>
					ALU_SEL <= "0000";
					ALU_OUT_EN <= '1';
					A_LD <= '1';
					cLD <= '1';
					vLD <= '1';
					nextState <= LOADFLAGS_SZ;
					theState <= "00010111";
				WHEN DECA0 =>
					ALU_SEL <= "0001";
					ALU_LD <= '1';
					nextState <= DECA1;
					theState <= "00011000";
				WHEN DECA1 =>
					ALU_OUT_EN <= '1';
					A_LD <= '1';
					nextState <= LOADFLAGS_SZ;
					theState <= "00011001";
				WHEN LDXI0 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					X_L_LD <= '1';
					PC_INC <= '1';
					theState <= "00011010";
					nextState <= LDXI1;
				WHEN LDXI1 =>
					ADDRSEL <= "00";
					RDEN <= '1';
					X_H_LD <= '1';
					PC_INC <= '1';
					theState <= "00011011";
					nextState <= FETCH;
				WHEN LDAA_X =>
					ADDRSEL <= "10";
					RDEN <= '1';
					A_LD <= '1';
					PC_INC <= '1';
					nextState <= FETCH;
					theState <= "00011100";
				WHEN LDAD =>
					D_OUT_EN <= '1';
					A_LD <= '1';
					theState <= "00011101";
					nextState <= FETCH;
				WHEN MULT0 =>
					ALU_SEL <= "0010";
					ALU_LD <= '1';
					ALU2_LD <= '1';
					nextState <= MULT1;
					theState <= "00011110";
				WHEN MULT1 =>
					ALU_OUT_EN <= '1';
					A_LD <= '1';
					nextState <= MULT2;
					theState <= "00011111";
				WHEN MULT2 =>
					ALU2_OUT_EN <= '1';
					D_LD <= '1';
					nextState <= FETCH;
					theState <= "00100000";
				WHEN CALL0 =>
					RDEN <= '1';
					ADDRSEL <= "00";
					AR_L_LD <= '1';
					PC_INC <= '1';
					nextState <= CALL1;
					theState <= "00011110";
				WHEN CALL1 =>
					RDEN <= '1';
					ADDRSEL <= "00";
					AR_H_LD <= '1';
					PC_INC <= '1';
					nextState <= CALL2;
					theState <= "00011111";
				WHEN CALL2 =>
					SPL_LD <= '1';
					theState <= "00100000";
					nextState <= CALL3;
				WHEN CALL3 =>
					SPH_LD <= '1';
					theState <= "00100001";
					nextState <= CALL4;
				WHEN CALL4 =>
					ARL_OUT_EN <= '1';
					PC_L_LD <= '1';
					theState <= "00100010";
					nextState <= CALL5;
				WHEN CALL5 =>
					ARH_OUT_EN <= '1';
					PC_H_LD <= '1';
					theState <= "00100011";
					nextState <= FETCH;
				WHEN RET0 =>
					SPH_OUT_EN <= '1';
					PC_H_LD <= '1';
					theState <= "00100100";
					nextState <= RET1;
				WHEN RET1 =>
					SPL_OUT_EN <= '1';
					PC_L_LD <= '1';
					theState <= "00100101";
					nextState <= FETCH;
				WHEN PCINC0 =>
					PC_INC <= '1';
					nextState <= PCINC1;
					theState <= "00010001";
				WHEN PCINC1 =>
					PC_INC <= '1';
					nextState <= FETCH;	
					theState <= "00001110";
				WHEN LOADFLAGS_SZ => -- Enable the status register to update the Z and S flags
					zLD <= '1';
					sLD <= '1';
					nextState <= FETCH;
					theState <= "00001000";
				WHEN LOADFLAGS_SZCV =>
					zLD <= '1';
					sLD <= '1';
					cLD <= '1';
					vLD <= '1';
				nextState <= FETCH;
				theState <= "00000111";
				WHEN TEST =>
					theState <= "11111111";
					D_OUT_EN <= '1';
					A_OUT_EN <= '1';
					nextState <= FETCH;
				END CASE;
		END PROCESS; 
	
					
	END STR;
				
			
			