

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fa_tb is
end fa_tb;

architecture TB of fa_tb is

  signal input1, input2, sum : std_logic;
  signal carry_in, carry_out : std_logic;
  
  begin  --TB
  
  UUT : entity work.fa
    port map (
      input1    => input1,
      input2    => input2,
      carry_in  => carry_in,
      sum       => sum,
      carry_out => carry_out);
		
	process
	
	begin
	
	--Test 1
	
	input1 <= '0';
	input2 <= '0';
	carry_in <= '0'; 
	wait for 40 ns;
	assert(sum = '0') report "Sum Failed Test1" severity warning; 
	assert(carry_out = '0') report "Carry Out Failed Test1" severity warning;
	
	--Test 2
		
	input1 <= '0';
	input2 <= '0';
	carry_in <= '1'; 
	wait for 40 ns;
	assert(sum = '1') report "Sum Failed Test2" severity warning; 
	assert(carry_out = '0') report "Carry Out Failed Test2" severity warning;
	
	--Test 3
	
	input1 <= '1';
	input2 <= '0';
	carry_in <= '0'; 
	wait for 40 ns;
	assert(sum = '1') report "Sum Failed Test3" severity warning; 
	assert(carry_out = '0') report "Carry Out Failed Test3" severity warning;
	
	--Test 4
	
	input1 <= '1';
	input2 <= '0';
	carry_in <= '1'; 
	wait for 40 ns;
	assert(sum = '0') report "Sum Failed Test4" severity warning; 
	assert(carry_out = '1') report "Carry Out Failed Test4" severity warning;
	
	--Test 5
	
	input1 <= '0';
	input2 <= '1';
	carry_in <= '0'; 
	wait for 40 ns;
	assert(sum = '1') report "Sum Failed Test5" severity warning; 
	assert(carry_out = '0') report "Carry Out Failed Test5" severity warning;
	
	--Test 6
	
	input1 <= '0';
	input2 <= '1';
	carry_in <= '1'; 
	wait for 40 ns;
	assert(sum = '0') report "Sum Failed Test6" severity warning; 
	assert(carry_out = '1') report "Carry Out Failed Test6" severity warning;
	
	--Test 7
	
	input1 <= '1';
	input2 <= '1';
	carry_in <= '0'; 
	wait for 40 ns;
	assert(sum = '0') report "Sum Failed Test7" severity warning; 
	assert(carry_out = '1') report "Carry Out Failed Test7" severity warning;
	
	--Test 8
	input1 <= '1';
	input2 <= '1';
	carry_in <= '1'; 
	wait for 40 ns;
	assert(sum = '1') report "Sum Failed Test8" severity warning; 
	assert(carry_out = '1') report "Carry Out Failed Test8" severity warning;
	
	report "Simulation Finished!";
	
	wait;
	
	end process;
	
	end TB;
	