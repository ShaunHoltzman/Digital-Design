library ieee;
use ieee.std_logic_1164.all;

-- DO NOT CHANGE ANYTHING IN THE ENTITY

entity lab2Adder is
	  port (
    input1    : in  std_logic_vector(7 downto 0);
    input2    : in  std_logic_vector(7 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(7 downto 0);
    carry_out : out std_logic);
end lab2Adder;

architecture STR of lab2Adder is 

	signal carry: std_logic;
	
	component adder 
		 port (
			input1    : in  std_logic_vector(3 downto 0);
			input2    : in  std_logic_vector(3 downto 0);
			carry_in  : in  std_logic;
			sum       : out std_logic_vector(3 downto 0);
			carry_out : out std_logic);
	end component;
	
begin 

	adder0: adder port map(input1(3 DOWNTO 0), input2(3 DOWNTO 0), carry_in, sum(3 DOWNTO 0), carry);
	adder1: adder port map(input1(7 DOWNTO 4), input2(7 DOWNTO 4), carry, sum(7 DOWNTO 4), carry_out);
	
end STR;
	