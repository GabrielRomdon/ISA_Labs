library IEEE;
use IEEE.std_logic_1164.all;

use WORK.constants.all;

entity MUX21_GENERIC is

	Generic (N: integer := NBIT_PER_BLOCK);
	Port (	A:	In	std_logic_vector(N-1 downto 0) ;
			B:	In	std_logic_vector(N-1 downto 0);
			SEL:In	std_logic;
			Y:	Out	std_logic_vector(N-1 downto 0));

end MUX21_GENERIC;

architecture BEHAVIORAL of MUX21_GENERIC is

begin

	pmux: process(A,B,SEL)
	begin

		if SEL ='1' then
			Y <= A;
		else
			Y <= B;
		end if;

	end process;

end BEHAVIORAL;

--------------------------CONFIGURATION----------------
configuration CFG_MUX21_BEHAVIORAL of MUX21_GENERIC is
for behavioral
end for;
end CFG_MUX21_BEHAVIORAL;

