library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity tb_CNT12 is
end    tb_CNT12;


architecture SIM of tb_CNT12 is

------------------------call component------------------
  component CNT12 
    port (clk_in,reset,stop : in std_logic;
          count             : out std_logic_vector(3 downto 0);
	  up_sig            : out std_logic);
  end component;
  
---------------------define signal------------------

  signal clk_in : std_logic :='1';
  signal reset  : std_logic :='0';
  signal stop   : std_logic :='1';
  signal count  : std_logic_vector(3 downto 0);
  signal up_sig : std_logic;


begin
  DUT: CNT12 port map(clk_in,reset,stop,count,up_sig);

------------------infinity loop , clock 1000ns(1us) cycle----------------

process begin
  clk_in <= '1'; wait for 500 ns;
  clk_in <= '0'; wait for 500 ns;
end process;

-------------------reset,stop------------------

process begin 
  wait for 2.8 us; reset <= '1';
  wait for 1.0 us; reset <= '0';
  wait for 1.9 us; stop  <= '0';
  wait for 1.0 us; stop  <= '1';
  wait for 1.0 us; reset <= '1';
  wait for 1.4 us; reset <= '0';
  wait for 2.4 us; stop  <= '0';
  wait for 1.0 us; stop  <= '1';
  wait for 12.5 us; 
  assert false severity failure;
end process;

end SIM;


configuration cfg_tb_CNT12 of tb_CNT12 is
  for SIM
  end for;
end cfg_tb_CNT12;