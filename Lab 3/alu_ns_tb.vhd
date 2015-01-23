library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_ns_tb is
end alu_ns_tb;

architecture TB of alu_ns_tb is

  component alu_ns

    generic (
      WIDTH    :     positive := 16
      );
    port (
      input1   : in  std_logic_vector(WIDTH-1 downto 0);
      input2   : in  std_logic_vector(WIDTH-1 downto 0);
      sel      : in  std_logic_vector(3 downto 0);
      output   : out std_logic_vector(WIDTH-1 downto 0);
      overflow : out std_logic
      );

  end component;

  constant WIDTH    : positive                           := 8;
  signal   input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
  signal   input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
  signal   sel      : std_logic_vector(3 downto 0)       := (others => '0');
  signal   output   : std_logic_vector(WIDTH-1 downto 0);
  signal   overflow : std_logic;

begin  -- TB

  UUT : alu_ns
    generic map (WIDTH => WIDTH)
    port map (
      input1           => input1,
      input2           => input2,
      sel              => sel,
      output           => output,
      overflow         => overflow);

  process
  begin

    -- test 2+6 (no overflow)
    sel    <= "0101";
    input1 <= conv_std_logic_vector(2, input1'length);
    input2 <= conv_std_logic_vector(6, input2'length);
    wait for 40 ns;
    assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
    assert(overflow = '0') report "Error                                   : overflow incorrect for 2+6" severity warning;

    -- test 250+50 (with overflow)
    sel    <= "0101";
    input1 <= conv_std_logic_vector(250, input1'length);
    input2 <= conv_std_logic_vector(50, input2'length);
    wait for 40 ns;
    assert(output = conv_std_logic_vector(300, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 44" severity warning;
    assert(overflow = '1') report "Error                                     : overflow incorrect for 250+50" severity warning;

    -- test 5*6
    sel    <= "0111";
    input1 <= conv_std_logic_vector(5, input1'length);
    input2 <= conv_std_logic_vector(6, input2'length);
    wait for 40 ns;
    assert(output = conv_std_logic_vector(30, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
    assert(overflow = '0') report "Error                                    : overflow incorrect for 5*6" severity warning;

    -- test 64*64
    sel    <= "0111";
    input1 <= conv_std_logic_vector(64, input1'length);
    input2 <= conv_std_logic_vector(64, input2'length);
    wait for 40 ns;
    assert(output = conv_std_logic_vector(4096, output'length)) report "Error : 64*64 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
    assert(overflow = '1') report "Error                                      : overflow incorrect for 64*64" severity warning;

	 -- test NOT 197
	 sel <= "0000";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(58, output'length)) report "Error : NOT 197 incorrect" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 
	 -- test 197 NOR 25
	 sel <= "0001";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(34, output'length)) report "Error : 197 NOR 25 incorrect" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 
	 --test 197 XOR 25
	 sel <= "0010";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(220, output'length)) report "Error : 197 XOR 25 incorrect" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 
	 --test 197 OR 25
	 sel <= "0011";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(221, output'length)) report "Error : 197 OR 25 incorrect" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 
	 --test 197 AND 25
	 sel <= "0100";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(1, output'length)) report "Error : 197 AND 25 incorrect" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 

	--test 197 - 25
	sel <= "0110";
	input1 <= conv_std_logic_vector(197, input1'length);
	input2 <= conv_std_logic_vector(25, input2'length);
	wait for 40 ns;
	assert(output = conv_std_logic_vector(172, output'length)) report "Error : 197 - 25 is incorrect" severity warning;
	assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	
	 
	 -- test 255*255
	 sel <= "0111";
	input1 <= conv_std_logic_vector(255, input1'length);
	input2 <= conv_std_logic_vector(255, input2'length);
	wait for 40 ns;
	assert(output = conv_std_logic_vector(1, output'length)) report "Error: 255*255 is incorrect" severity warning;
	assert(overflow = '1') report "Error                                    : There should be an overflow" severity warning;
	 
	 
	 sel <= "1000";  --Test empty selection
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(0, output'length)) report "Output should be all zeroes" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 
	 sel <= "1001";   --Test empty selection
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(0, output'length)) report "Output should be all zeroes" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow" severity warning;
	 
	 
    -- test shift left with overflow
	 sel <= "1010";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(138, output'length)) report "197 shifted left should be 138" severity warning;
	 assert(overflow = '1') report "Error                                    : There should be an overflow (Shift left)" severity warning;
	 
	  -- test shift left with no overflow
	 sel <= "1010";
	 input1 <= conv_std_logic_vector(79, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(158, output'length)) report "79 shifted left should be 158" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow (Shift left)" severity warning;
	 
	 -- test shift right with overflow
	 sel <= "1011";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(98, output'length)) report "197 shifted right should be 98" severity warning;
	 assert(overflow = '1') report "Error                                    : There should be an overflow (Shift right)" severity warning;
	 
	  
	 -- test shift right with no overflow
	 sel <= "1011";
	 input1 <= conv_std_logic_vector(196, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(98, output'length)) report "196 shifted right should be 98" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow (Shift right)" severity warning;
	 
	 
	 -- test reversing the bits 
	 sel <= "1100";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(163, output'length)) report "197 reversed should be 163" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow (Reversing bits)" severity warning;
	 
	 
	  -- test swapping high and low bits
	 sel <= "1101";
	 input1 <= conv_std_logic_vector(197, input1'length);
	 input2 <= conv_std_logic_vector(25, input2'length);
	 wait for 40 ns;
	 assert(output = conv_std_logic_vector(92, output'length)) report "197 swapped should be 58" severity warning;
	 assert(overflow = '0') report "Error                                    : There should be no overflow (Swap)" severity warning;
	 
	 
	 
    wait;

  end process;



end TB;
