library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
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

signal w_past, w: std_logic_vector (nb downto 0);-- := (others => '0'); --the result of the sum could have a reminder that has to be taken into account
signal fb_tmp, ff_tmp_0, ff_tmp_1  : std_logic_vector (nb*2 downto 0);-- := (others => '0');
signal fb, ff : std_logic_vector (nb-r-2 downto 0);-- := (others => '0');
constant zero_padding : std_logic_vector (r-1 downto 0):= (others => '0') ;
begin

			fb_tmp <= std_logic_vector(signed(w_past)*signed(a1)) when RST_n='1' else (others => '0');
			fb <= fb_tmp(nb*2-3 downto nb*2-2-(nb-r)+1) when RST_n='1' else (others => '0'); --b_tmp(nb*2-1 downto nb*2-(nb-r));
			w <= std_logic_vector(signed(DIN(nb-1)& DIN) + signed(fb(nb-r-2) & fb)) when RST_n='1' else (others => '0'); --ovf can happen on nb bits, need nb+1!!
			ff_tmp_0 <= std_logic_vector(signed(b0)*signed(w)) when RST_n='1' else (others => '0');
			ff_tmp_1 <= std_logic_vector(signed(b1)*signed(w_past)) when RST_n='1' else (others => '0');
			ff <= std_logic_vector(signed(ff_tmp_0(nb*2-3 downto nb*2-2-(nb-r)+1)) + signed(ff_tmp_1(nb*2-3 downto nb*2-2-(nb-r)+1))) when RST_n='1' else (others => '0'); --careful this could give ovf 7b+7b..NECESSARY TO MANAGE??SHOULD BE 8??
			
filter : process(clk)
	
	begin
	
	if(clk' event and clk='1') then	--for now SYNCR RESET SIGNAL
		if(RST_n ='0') then
		--model reset behaviour
 			VOUT <= '0';
			DOUT <= (others =>'0');
			w_past <= (others =>'0');
		--distinguish the two cases in which a new input sample is available (Vin=1) or not
		elsif (VIN='1') then
			--perform the task;normal operation of the filter
			w_past <= w;
			DOUT <=ff(nb-r-2) & ff & zero_padding;
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
