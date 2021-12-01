library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity PG_GENERAL is
		port( 	PG_ik : in std_logic_vector (1 downto 0); --G index 1, P index 0 of the vectors
				PG_k_1j : in  std_logic_vector (1 downto 0);
				PG_ij :  out std_logic_vector (1 downto 0));

end PG_GENERAL;


architecture BEHAVIORAL of PG_GENERAL is
begin
	
		PG_ij(1) <= PG_ik(1) OR (PG_ik(0) AND PG_k_1j(1));
		PG_ij(0) <= PG_ik(0) AND PG_k_1j(0);


end BEHAVIORAL;


configuration CFG_PG_GENERAL of PG_GENERAL is
for BEHAVIORAL
end for;
end CFG_PG_GENERAL;
