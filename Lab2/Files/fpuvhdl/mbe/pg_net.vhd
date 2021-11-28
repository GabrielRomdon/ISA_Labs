library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;



entity PG_NET is
	port( 	A: 		in std_logic;
			B: 		in std_logic;
			G_OUT: 	out std_logic;
			P_OUT:	out std_logic);

end PG_NET;

architecture BEHAVIORAL of PG_NET is
begin

	G_OUT <= A AND B;
	P_OUT <= A XOR B;


end BEHAVIORAL;


configuration CFG_PG_NET of PG_NET is
for BEHAVIORAL
end for;
end CFG_PG_NET;
