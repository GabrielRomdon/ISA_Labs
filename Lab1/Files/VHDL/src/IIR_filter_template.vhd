library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use work.myPkg.all;

entity IIR_FILTER is 
	port(
		DIN: std_logic_vector(nb-1 downto 0);
		VIN : in std_logic;
		RST_n : in std_logic;
		CLK : in std_logic;
		a0 : in std_logic_vector(nb-1 downto 0);
		a1 : in std_logic_vector(nb-1 downto 0);
		b0 : in std_logic_vector(nb-1 downto 0);
		b1 : in std_logic_vector(nb-1 downto 0);
		DOUT : out std_logic_vector(nb-1 downto 0);
		VOUT : out std_logic
	);


end IIR_FILTER;

architecture BEHAVIORAL of IIR_FILTER is 

signal w_past, w : std_logic_vector (nb-1 downto 0) := (others => '0');
signal fb_tmp, ff_tmp_0, ff_tmp_1  : std_logic_vector (nb*2-1 downto 0) := (others => '0');
signal fb, ff : std_logic_vector (nb-r-1 downto 0) := (others => '0');
signal zero_padding : std_logic_vector (r-1 downto 0) := (others => '0');
begin
filter : process(clk)
	begin

	if(clk' event and clk='1') then	--for now SYNCR RESET SIGNAL
		if(RST_n ='0') then
		--model reset behaviour
 			VOUT <= '0';
			DOUT <= (others =>'0');
		--distinguish the two cases in which a new input sample is available (Vin=1) or not
		elsif (VIN='1') then
			--perform the task;normal operation of the filter
			w_past <= w;
			fb_tmp <= w_past*a1;
			fb <= fb_tmp(nb*2-1 downto nb*2-(nb-r));
			w <= (DIN + fb); --with a1 negative
			ff_tmp_0 <= b0*w;
			ff_tmp_1 <= b1*w_past;
			ff <= ff_tmp_0(nb*2-1 downto nb*2-(nb-r)) + ff_tmp_1(nb*2-1 downto nb*2-(nb-r));
			DOUT <= ff & zero_padding;
			VOUT <= '1';
			
		elsif (VIN='0') then 
 			VOUT <= '0';
			--leave the output to previous value
			--do nothing, leave VOUT to one or not??
		end if;
		
	end if;

end process;
--assign signals if necessary

end architecture;
