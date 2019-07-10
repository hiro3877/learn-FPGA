library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


-----------------------generate top module----------------------
entity CNT12 is port (clk_in,reset,stop : in  std_logic;
                      count             : out std_logic_vector(3 downto 0);
		      up_sig            : out std_logic);
end CNT12;

-----------------------define signal---------------------
architecture RTL of CNT12 is

  signal counter   : std_logic_vector(3 downto 0) := "0001";
  signal count_sig : std_logic := '0';
  signal stp_sig   : std_logic := '0';

begin

---------------------define stop module----------------------
process (stop) begin
    if (stop'event and stop='0') then 
        stp_sig <= NOT(stp_sig);
    end if;
end process;


process(clk_in) begin
    if (clk_in'event and clk_in='0') then

---------------------sync reset-------------------
        if (reset = '1') then 
            counter <="0001";

-------------counter = '12' => counter = '1'-----------
        elsif (counter="1100") then 
            count_sig <='0'; counter <= "0001";

-------------counter = '11' => up_sig = '1'------------
	elsif (counter="1011") then
	    count_sig <= '1'; counter <= counter + '1';
			
--------------stp_sig = '1' => don't change counter-----------
        elsif (stp_sig = '1') then
            count_sig <= '0'; counter <= counter;
			
-----else (reset='0' and counter!="12" and counter!= "11" and stp_sig='0')----- 
        else
            count_sig <='0';  counter <= counter + '1';
        end if;
    end if;

end process;

--------------connect signal to output---------------
    count  <= counter;
    up_sig <= count_sig;
  

end RTL;