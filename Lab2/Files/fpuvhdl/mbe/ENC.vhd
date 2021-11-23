-- Booth encoder
LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity ENC is
	port( b : IN  std_logic_vector(2 downto 0);
        A : IN  std_logic_vector(31 downto 0);
        p : OUT std_logic_vector(32 downto 0));
end ENC;


architecture beh of ENC is

p <=  (others => '0') when (b = "000") else 
      '0' & A         when (b = "001") else
      '0' & A         when (b = "010") else
        A & '0'       when (b = "011") else
        A & '0'       when (b = "100") else
      '0' & A         when (b = "101") else
      '0' & A         when (b = "110") else
      (others => '0') when (b = "000") else 

end beh
