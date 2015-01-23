library ieee;
use ieee.std_logic_1164.all;

entity dec2to4WithAssert_tb is
end dec2to4WithAssert_tb;

architecture TB of dec2to4WithAssert_tb is

  signal w  : std_logic_vector(1 downto 0);
  signal En : std_logic;
  signal y  : std_logic_vector(0 to 3);
  
begin

  U_equations : entity work.dec2to4equations
    port map (
      w  => w,
      En => En,
      y => y);

  process
  begin

    En <= '0';
    w <= "00";
    wait for 30 ns;
    assert(y = "0000");
    
    En <= '0';
    w <= "01";
    wait for 30 ns;
    assert(y = "0000");

    En <= '0';
    w <= "10";
    wait for 30 ns;
    assert(y = "0000");

    En <= '0';
    w <= "11";
    wait for 30 ns;
    assert(y = "0000");

    En <= '1';
    w <= "00";
    wait for 30 ns;
    assert(y = "1000");
    
    En <= '1';
    w <= "01";
    wait for 30 ns;
    assert(y = "0100");
    
    En <= '1';
    w <= "10";
    wait for 30 ns;
    assert(y = "0010");
    
    En <= '1';
    w <= "11";
    wait for 30 ns;
    assert(y = "0001");
    
    report "SIMULATION FINISHED";
    wait;

  end process;

end TB;
