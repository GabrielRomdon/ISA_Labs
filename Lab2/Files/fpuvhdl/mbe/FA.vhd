LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity FA is
	port(A : IN std_logic;
		 B : IN std_logic;
		 Ci : IN std_logic;
		 S : OUT std_logic;
		 Co : OUT std_logic);			
end FA;

architecture rtl of FA is
begin
	S <= A xor B xor Ci;
	Co <= (A and B) or (A and Ci) or (B and Ci);
end rtl;
