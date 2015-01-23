library ieee;
use ieee.std_logic_1164.all;

-- DO NOT CHANGE ANYTHING IN THE ENTITY

entity adder is
  port (
    input1    : in  std_logic_vector(3 downto 0);
    input2    : in  std_logic_vector(3 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(3 downto 0);
    carry_out : out std_logic);
end adder;

-- DEFINE A RIPPLE-CARRY ADDER USING A STRUCTURE DESCRIPTION THAT CONSISTS OF 4
-- FULL ADDERS

architecture STR of adder is 

	signal carry: std_logic_vector(2 downto 0);
	
	component fa 
		port(
			input1    : in  std_logic;
			input2    : in  std_logic;
			carry_in  : in  std_logic;
			sum       : out std_logic;
			carry_out : out std_logic);
	end component;
	
begin  -- STR
	
	fa0: fa port map(input1(0), input2(0), carry_in, sum(0), carry(0));
	fa1: fa port map(input1(1), input2(1), carry(0), sum(1), carry(1));
	fa2: fa port map(input1(2), input2(2), carry(1), sum(2), carry(2));
	fa3: fa port map(input1(3), input2(3), carry(2), sum(3), carry_out);


end STR;
