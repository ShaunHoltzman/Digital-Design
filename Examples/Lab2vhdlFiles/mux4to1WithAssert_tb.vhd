
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux4to1WithAssert_tb IS
END mux4to1WithAssert_tb;

--Component Declaration
ARCHITECTURE behavior OF mux4to1WithAssert_tb IS

  SIGNAL w0,w1,w2,w3,enable,f_n : STD_LOGIC;
  SIGNAL s_n : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL se  : STD_LOGIC_VECTOR(2 DOWNTO 0);
  
BEGIN  

--Component Instatiation
  UUT : ENTITY work.mux4to1WithAssert
    PORT MAP (
      w0 => w0,
      w1 => w1,
      w2 => w2,
      w3 => w3,
		enable => enable,
      s_n  => s_n,
		f_n  => f_n
      );


  --Stimulus process
  STIM_PROC: PROCESS
  
  VARIABLE value : STD_LOGIC_VECTOR (6 DOWNTO 0);
  
  FUNCTION mux4to1Func (
      SIGNAL w0,w1,w2,w3,enable,f_n : STD_LOGIC;
      SIGNAL s_n : STD_LOGIC_VECTOR (1 DOWNTO 0);
		SIGNAL se  : STD_LOGIC_VECTOR(2 DOWNTO 0))
      RETURN STD_LOGIC IS
			
  BEGIN  -- functionally how mux works
  
      CASE se IS
        WHEN "001" =>
            RETURN (NOT w0);
        WHEN "011" =>
            RETURN (NOT w1);
        WHEN "101" =>
            RETURN (NOT w2); 
        WHEN "111" =>
            RETURN (NOT w3);
		  WHEN OTHERS =>
				RETURN '1';
      END CASE ;
  END  mux4to1Func;
  
  BEGIN
    -- test all input combinations
    FOR i in 0 TO 127 LOOP

	    value := STD_LOGIC_VECTOR(TO_UNSIGNED(i, 7));

		  --Set input values
		  s_n(1) <= value(6);
		  s_n(0) <= value(5);
		  enable <= value(4);
		  w0 <= value(3);
		  w1 <= value(2);
		  w2 <= value(1);
		  w3 <= value(0);
		  se <= (NOT s_n) & enable;

		  -- input values stable for 50 ns
      WAIT FOR 50 ns;
      
      -- call mux4to1Func to verify output f for this set of input values
      ASSERT(f_n = mux4to1Func(w0,w1,w2,w3,enable,f_n,s_n,se))
   
        REPORT "Error : output f incorrect for s1,s0 = " & STD_LOGIC'IMAGE (value(5)) & STD_LOGIC'IMAGE (value(4)) & "and w = " & STD_LOGIC'IMAGE (value(3)) & STD_LOGIC'IMAGE (value(2)) & STD_LOGIC'IMAGE (value(1)) & STD_LOGIC'IMAGE (value(0)) SEVERITY WARNING;
 
      
    END LOOP;  -- i

	  WAIT FOR 500ns;
    REPORT "SIMULATION FINISHED!";
    WAIT;

  END PROCESS;
--End Test Bench

END;
