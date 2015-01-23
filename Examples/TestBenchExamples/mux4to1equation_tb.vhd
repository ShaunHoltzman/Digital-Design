
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux4to1equation_tb IS
END mux4to1equation_tb;

--Component Declaration
ARCHITECTURE behavior OF mux4to1equation_tb IS

  SIGNAL w0,w1,w2,w3,f : STD_LOGIC;
  SIGNAL s : STD_LOGIC_VECTOR (1 DOWNTO 0);
  -- CONSTANT max_cycles : INTEGER  := 64;
  
  COMPONENT mux4to1equation
    PORT (	w0, w1, w2, w3	: IN 	STD_LOGIC ;
			s	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			f	: OUT 	STD_LOGIC ) ;
  END COMPONENT ; 

BEGIN  

--Component Instatiation
  UUT : ENTITY work.mux4to1equation
    PORT MAP (
      w0 => w0,
      w1 => w1,
      w2 => w2,
      w3 => w3,
      s  => s,
		  f  => f
      );


  --Stimulus process
  STIM_PROC: PROCESS
  
  VARIABLE value : STD_LOGIC_VECTOR (5 DOWNTO 0);
    
  BEGIN
    -- test all input combinations
    FOR i in 0 TO 63 LOOP

	 value := STD_LOGIC_VECTOR(TO_UNSIGNED(i, 6));

		--Set input values
		s(1) <= value(5);
		s(0) <= value(4);
		w0 <= value(3);
		w1 <= value(2);
		w2 <= value(1);
		w3 <= value(0);

		-- input values stable for 50 ns
      WAIT FOR 50 ns;
      
    END LOOP;  -- i

	  WAIT FOR 500ns;
    REPORT "SIMULATION FINISHED!";
    WAIT;

  END PROCESS;
--End Test Bench

END;
