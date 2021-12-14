library IEEE;
use IEEE.std_logic_1164.all; 
use work.myTypes.all;

entity REG_GENERIC is
	generic(NBIT: integer:= numBit);
	port( 	CLK:	IN std_logic;
			RST:	IN std_logic;   -- Low
			EN:	IN std_logic;
			DATA_IN: IN std_logic_vector(NBIT-1 downto 0);
			DATA_OUT:	OUT std_logic_vector(NBIT-1 downto 0));
end REG_GENERIC;

architecture BEHAVIOR of REG_GENERIC is
begin

synch_latch: process(CLK, RST, EN) -- used to latch the input into the memory when clk rises and en is high(and rst low)
begin
	if rising_edge(CLK) then -- positive edge triggered latch
	    if RST = '0' then -- synchronus active low reset 
			DATA_OUT <= (others => '0'); 
	    elsif EN = '1' then -- stores new data only if enabled
			DATA_OUT <= DATA_IN; -- input is latched
		end if;
	end if;
end process;

end BEHAVIOR;

-- this unit latches the input when clk rises and enable is high. Retrives its content always, no matter the value of EN. This makes sense in a pipeline since we enable the pipeline register only when the prev stage is producing the result, then we disable it but still want to use its content in the next pipe.
