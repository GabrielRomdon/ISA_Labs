-- Modified Booth Encoding Multiplier
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE my_pkg.all; -- TODO: Check this

entity MBE is
	port(	A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		C : OUT std_logic_vector(63 downto 0));
end MBE;

architecture beh of MBE is

component ENC is
	port(b : IN std_logic_vector(2 downto 0);
		 A : IN std_logic_vector(31 downto 0);
		 p : OUT std_logic_vector(32 downto 0));
end component;

type p_matrix is array(16 downto 0) of std_logic_vector(35 downto 0);
type q_matrix_unit is array(16 downto 0) of std_logic_vector(63 downto 0);
type q_matrix is array  p_matrix;
signal p : p_matrix;
signal q : p_matrix;
signal B_tmp : std_logic_vector(34 downto 0);


begin

B_tmp <= "00" & B & '0';


--
encoder: for I in 1 to 17 generate
	encI : ENC port map(b => B_tmp(2*i downto 2*i-2), A => A, p => p(I-1)(32 downto 0));
end generate encoder;

-- placing the sign bits
p(0)(35 downto 33) <= not(B_tmp(2)) & B_tmp(2) & B_tmp(2);

SignBits: for I in 1 to 14 generate
	p(I)(34 downto 33) <= '1' & not(B_tmp(2*I+2));
end generate SignBits;

p(15)(33) <= not(B_tmp(32));

-- Levantar punticos
RaiseDots: for I in 0 to 16 generate
	FirstColumns: for J in 0 to 35 generate
		Shifting: if (J - 2*I ) generate
			
			
		end generate Shifting;
end generate RaiseDots;


end beh;
