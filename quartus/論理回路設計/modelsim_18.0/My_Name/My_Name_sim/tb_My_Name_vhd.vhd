library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;


entity tb_my_name is
end    tb_my_name ;


architecture SIM of tb_my_name is

  component my_name is 
    port(CLK, RESET, STOP: in std_logic;
         HEX0,HEX1,HEX2,HEX3,HEX4,HEX5: out std_logic_vector (6 downto 0));
  end component;

  signal CLK : std_logic               := '0' ;
  signal RESET, STOP: std_logic        := '1' ;
  signal HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : std_logic_vector (6 downto 0);

begin
  DUT: my_name
    port map(CLK,RESET,STOP,HEX0,HEX1,HEX2,HEX3,HEX4,HEX5);

---------------------infinity clock loop--------------------

  process begin 
    CLK <= '0'; wait for 10 ns; CLK <= '1'; wait for 10 ns;
  end process;
  
------------------------Reset and Stop------------------------  

  process begin 
    wait for  5.3 us ;  RESET <= '0';
    wait for  2.5 us ;  RESET <= '1';
    wait for 30.7 us ;  STOP  <= '0';
    wait for  2.0 us ;  STOP  <= '1';
    wait for  8.2 us ;  STOP  <= '0';
    wait for  3.8 us ;  STOP  <= '1';
    wait for 67.5 us ;  
    assert false severity failure;
  end process;

end SIM;

configuration cfg_tb_my_name of tb_my_name is
  for SIM
  end for;
end cfg_tb_my_name;

