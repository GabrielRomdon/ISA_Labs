library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity G_GENERAL is

		port( 	PG_ik : 	in std_logic_vector (1 downto 0); 	--G_ik index 1, P_ik index 0
				G_k_1j : 	in std_logic;						--G index k-1:j
				G_ij : 		out std_logic);

end G_GENERAL;
 
architecture BEHAVIORAL of G_GENERAL is
begin
		G_ij <= PG_ik(1) OR (PG_ik(0) AND G_k_1j);

end BEHAVIORAL;

configuration CFG_G_GENERAL of G_GENERAL is
for BEHAVIORAL
end for;
end CFG_G_GENERAL;
