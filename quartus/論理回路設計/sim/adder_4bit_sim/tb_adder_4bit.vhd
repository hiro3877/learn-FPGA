library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity tb_adder_4bit is
end tb_adder_4bit;


architecture SIM of tb_adder_4bit is
  
  component adder_4bit
     port(A, A_reset, B, B_reset : in  std_logic;
          HEX0, HEX1 ,HEX3, HEX5 : out std_logic_vector(6 downto 0));
  end component;
  
  signal A, A_reset, B, B_reset: std_logic;
  signal HEX0,HEX1,HEX3,HEX5: std_logic_vector(6 downto 0);
  
  constant  STEP: time := 100 ns;
  
begin

  DUT: adder_4bit port map (A, A_reset, B, B_reset, HEX0, HEX1, HEX3, HEX5 );  --wrapper sim
  
  process begin
    A <= '1';  wait for STEP/2;  A <= '0';  wait for STEP/2;		--100ns cycle
  end process;

  process begin
    B <= '1';  wait for 1540 ns;  B <= '0';  wait for   50 ns;		--1600ns cycle
    B <= '1';  wait for   10 ns;
  end process;

  process begin								--reset
    A_reset <= '1';    B_reset <= '1'; 
    wait for   370 ns; A_reset <= '0'; wait for    30 ns; A_reset <= '1';	--zenkaku space attazo huzakeruna!
    wait for  3600 ns; B_reset <= '0'; wait for   100 ns; B_reset <= '1';	--kokomo! error dete taihen dattazo!
    wait for 21500 ns;
    assert false severity failure;					--end simulation
  end process;
end SIM;

configuration cfg_tb_adder_4bit of tb_adder_4bit is
  for SIM
  end for;
end cfg_tb_adder_4bit;

