
entity IIR_FILTER is 
	port(
		DIN: std_logic_vector(nb-1 downto 0);
		VIN : in std_logic;
		RST_n : in std_logic;
		CLK : in std_logic;
		ai : in my_array
		bi : in my_array; --define my_array into a package as an array of N elements of type std_logic_vector(nb-1 downto 0), where nb is defined in the package itself
		DOUT : out std_logic_vector(nb-1 downto 0);
		VOUT : out std_logic;
	);


end IIR_FILTER;

architecture BEHAVIORAL of IIR_FILTER is 
begin

filter : process(clk)
	variable temp : std_logic_vector(nb-1 downto 0);
	if(clk' event and clk='1') then	--for now SYNCR RESET SIGNAL
		if(RST_n ='0') then
		--model reset behaviour
 			
		--distinguish the two cases in which a new input sample is available (Vin=1) or not
		elsif (VIN='1') then
			--perform the task;normal operation of the filter
			
		elsif (VIN='0') then 
			--leave the output to previous value??
		end if;
		
	end if;

end process;
--assign signals if necessary

end architecture;