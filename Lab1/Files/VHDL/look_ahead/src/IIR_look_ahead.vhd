library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
use work.lookah_pkg.all;

entity IIR_FILTER is	
	port(
		DIN: std_logic_vector(nb-1 downto 0);
		VIN : in std_logic;
		RST_n : in std_logic;
		CLK : in std_logic;
		a0 : in std_logic_vector(nb-1 downto 0);
		a1 : in std_logic_vector(nb-1 downto 0);
		a1_2: in std_logic_vector (nb_a-1 downto 0);
		b0 : in std_logic_vector(nb-1 downto 0);
		b1 : in std_logic_vector(nb-1 downto 0);
		DOUT : out std_logic_vector(nb-1 downto 0);
		VOUT : out std_logic
	);

end IIR_FILTER;

architecture behavioral of IIR_FILTER is 

signal w,w_past, w_0,w_1 : std_logic_vector (nb_w-1 downto 0);
signal ff_tmp_0, ff_tmp_1 : std_logic_vector(nb_w+nb-1 downto 0);
signal ff_0, ff_1, ff_0_past, ff_1_past: std_logic_vector ( nb-r-2 downto 0);
signal ff: std_logic_vector ( nb-r-1 downto 0);
signal fb_tmp_0 : std_logic_vector (nb_w+nb_a-1 downto 0);
signal fb_0, fb_0_past : std_logic_vector(nb_fb-2 downto 0);
signal fb_tmp_1 : std_logic_vector (nb*2-1 downto 0);
signal fb_1, fb_1_past : std_logic_vector (4 downto 0); --could be also nb-r bits, but 5 are already sufficient to store the result
signal fb : std_logic_vector (nb_fb-1 downto 0);

constant zero_padding : std_logic_vector (r-1 downto 0) := (others => '0');
begin



	w <= std_logic_vector(signed(DIN(nb-1) & DIN) + signed (fb(nb_fb-1) & fb)); --è necessario quel when else usato nel primo esercizio, per il reset??

	fb_tmp_1 <= std_logic_vector(signed(DIN) * signed(a1));
	fb_1 <= fb_tmp_1(24 downto 20);
	fb_tmp_0 <= std_logic_vector(signed(a1_2) *signed(w_past));	
	fb_0 <= fb_tmp_0(21 downto 21-nb_fb+2);
	fb <= std_logic_vector (signed(fb_0_past (nb_fb-2) & fb_0_past) + signed(fb_1_past));	
	
	--ff_tmp_0 <= std_logic_vector(signed(w_0) * signed(b0)); --pipeline
	ff_tmp_0 <= std_logic_vector(signed(w) * signed(b0));
	
	ff_0 <= ff_tmp_0(20 + nb-r-2 downto 20);
	--ff_tmp_1 <= std_logic_vector (signed (w_1) *signed (b1));	--pipeline
	ff_tmp_1 <= std_logic_vector (signed (w_past) *signed (b1));	
	
	ff_1 <= ff_tmp_1(20+nb-r-2 downto 20);
	--ff <= std_logic_vector (signed(ff_0_past)+signed(ff_1_past)); --check if it could be required to extend this result of 1 bit to take overflow into account
	--pipeline
	ff <= std_logic_vector (signed(ff_0(nb-r-2) & ff_0)+signed(ff_1(nb-r-2) & ff_1));

filter : process (clk) 

begin

	if(clk='1' and clk' event) then
		if (RST_n ='0') then
			DOUT <= (others =>'0');
			VOUT <= '0';
			w_past <= (others =>'0');
			w_0 <= (others =>'0');
			w_1 <= (others =>'0');
			ff_0_past <= (others =>'0');
			ff_1_past <= (others =>'0');
			fb_0_past <= (others =>'0');
			fb_1_past <= (others =>'0');

		elsif (VIN ='1') then
			--FFs behaviour
			w_past <= w;	--w[n-1]
			--w_0 <= w;		--w[n-1],pipeline
			--w_1 <= w_past; --should work correctly, it is w[n-2], pipeline
			--ff_0_past <= ff_0;
			--ff_1_past <= ff_1;
			fb_0_past <= fb_0;
			fb_1_past <= fb_1;
		
			DOUT <= ff & zero_padding;
			VOUT <='1';


		elsif ( VIN ='0') then
			VOUT <='0'; --CHECK THE MODEL OF THIS BEHAVIOR
		end if;
	end if;	



end process;


end behavioral;

