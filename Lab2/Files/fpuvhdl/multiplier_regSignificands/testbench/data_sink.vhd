library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;

library std;
use std.textio.all;

entity data_sink is
  port (
    CLK   : in std_logic;
    RST_n : in std_logic;
    DIN   : in std_logic_vector(31 downto 0));
end data_sink;

architecture beh of data_sink is

  constant tco : time := 1 ns;
  constant pipeline_stages : integer := 5;
  
  signal prod_file			: std_logic_vector(31 downto 0);
  signal data_valid 		: std_logic;
  signal data_valid_vector	: std_logic_vector(pipeline_stages-1 downto 0);

begin  -- beh

  process (CLK, RST_n)
    file fp_prod : text open READ_MODE is "./fp_prod.hex";
    variable line_in : line;
    variable x : std_logic_vector(31 downto 0);
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      null;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      if (data_valid = '1' and not endfile(fp_prod))  then
	    readline(fp_prod, line_in);
        hread(line_in, x);
		--prod_file <= conv_std_logic_vector(x, 32) after tco;
		prod_file <= x after tco;
		assert (prod_file = DIN) report "The product does not correspond to the expected value" severity error;
	  end if;
    end if;
  end process;
  
  process (CLK, RST_n)
  begin  -- process
    if RST_n = '0' then                 -- asynchronous reset (active low)
      data_valid_vector <= (others => '0') after tco;
    elsif CLK'event and CLK = '1' then  -- rising clock edge
      data_valid_vector(0) <= '1' after tco;
      data_valid_vector(pipeline_stages-1 downto 1) <= data_valid_vector(pipeline_stages-2 downto 0) after tco;
    end if;
  end process;
  
  data_valid <= data_valid_vector(pipeline_stages-1);

end beh;
