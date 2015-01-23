-- Greg Stitt
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adderAndDisplay_tb is
end adderAndDisplay_tb;

architecture TB of adderAndDisplay_tb is

  --signal input1, input2, sum : std_logic_vector(7 downto 0);
  --signal carry_in, carry_out : std_logic;
	
	signal input1    : std_logic_vector(7 downto 0);
   signal input2    : std_logic_vector(7 downto 0);
   signal carry_in  : std_logic;
   signal carry_out : std_logic;
	signal y_n  	  : STD_LOGIC_VECTOR(0 TO 13);
	signal sum       : std_logic_vector(7 downto 0);
  
	begin  -- TB

  UUT : entity work.adderAndDisplay
    port map (
      input1    => input1,
      input2    => input2,
      carry_in  => carry_in,
      carry_out => carry_out,
		y_n => y_n);
		
	UUT2 : entity work.lab2Adder
    port map (
      input1    => input1,
      input2    => input2,
      carry_in  => carry_in,
      sum       => sum,
      carry_out => carry_out);
 

  process

    function sum_test (
      constant in1      : integer;
      constant in2      : integer;
      constant carry_in : integer)
      return std_logic_vector is
    begin
      return std_logic_vector(to_unsigned((in1+in2+carry_in) mod 256, 8));
    end sum_test;

    function carry_test (
      constant in1      : integer;
      constant in2      : integer;
      constant carry_in : integer)
      return std_logic is
    begin
      if (in1+in2+carry_in > 255) then
        return '1';
      else
        return '0';
      end if;
    end carry_test;

  begin
    -- test all input combinations
    for i in 0 to 255 loop
      for j in 0 to 255 loop
        for k in 0 to 1 loop

          input1   <= std_logic_vector(to_unsigned(i, 8));
          input2   <= std_logic_vector(to_unsigned(j, 8));
          carry_in <= std_logic(to_unsigned(k, 1)(0));
          wait for 40 ns;
          assert(sum = sum_test(i,j,k)) report "Sum incorrect";
          assert(carry_out = carry_test(i,j,k)) report "Carry incorrect";

        end loop;  -- k
      end loop;  -- j
    end loop;  -- i

    report "SIMULATION FINISHED!";
    
    wait;

  end process;

end TB;
