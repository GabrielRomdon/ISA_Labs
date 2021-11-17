LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity HA is
	port(A : IN std_logic;
		 B : IN std_logic;
		 S : OUT std_logic;
		 C : OUT std_logic);			
end HA;

architecture rtl of HA is
begin
	S <= A xor B;
	C <= A and B;
end rtl;
