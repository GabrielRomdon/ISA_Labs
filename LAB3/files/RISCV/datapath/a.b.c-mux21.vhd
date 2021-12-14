library IEEE;
use IEEE.std_logic_1164.all;
use work.myTypes.all;

-- Single bit 2 to 1 mux
entity MUX21 is
	port( 	A: IN std_logic;
			B:	IN std_logic;
			SEL:	IN std_logic;
			Y:	OUT std_logic);
end MUX21;

architecture BEHAVIOR of MUX21 is
begin
process (SEL,A,B)
	begin
	if SEL = '0' then
		Y <= A;
	elsif SEL = '1' then
		Y <= B;
	end if;
end process;
end BEHAVIOR;


library IEEE;
use IEEE.std_logic_1164.all;
use work.myTypes.all;
-- Multiple bit 2 to 1 mux
entity MUX21_GENERIC is
	generic(NBIT: integer:= numBit);
	port( 	A: IN std_logic_vector(NBIT-1 downto 0);
			B:	IN std_logic_vector(NBIT-1 downto 0);
			SEL:	IN std_logic;
			Y:	OUT std_logic_vector(NBIT-1 downto 0));
end MUX21_GENERIC;

architecture BEHAVIOR of MUX21_GENERIC is
begin

process (SEL,A,B)
	begin
	if SEL = '0' then
		Y <= A;
	elsif SEL = '1' then
		Y <= B;
	end if;
end process;

end BEHAVIOR;
