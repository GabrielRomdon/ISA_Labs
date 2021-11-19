-- Modified Booth Encoding Multiplier
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.my_pkg.all; -- TODO: Check this

entity MBE is
	port(	A : IN std_logic_vector(31 downto 0);
		B : IN std_logic_vector(31 downto 0);
		C : OUT std_logic_vector(63 downto 0));
end MBE;

architecture beh of MBE is

component ENC is
	port( b : IN  std_logic_vector(2 downto 0);
        A : IN  std_logic_vector(31 downto 0);
        p : OUT std_logic_vector(32 downto 0));
end component;

type p_matrix       is array(16 downto 0) of std_logic_vector(35 downto 0);
type q_matrix_unit  is array(16 downto 0) of std_logic_vector(63 downto 0);
type q_matrix       is array(0 to n_levels-1) of q_matrix_unit;
signal p : p_matrix;
signal q : q_matrix;
signal B_tmp : std_logic_vector(34 downto 0);

begin

B_tmp <= "00" & B & '0';

--
encoder: for i in 1 to 17 generate
  encI : ENC port map(b => B_tmp(2*i downto 2*i-2), A => A, p => p(i-1)(32 downto 0));
end generate encoder;

-- placing the sign bits
p(0)(35 downto 33) <= not(B_tmp(2)) & B_tmp(2) & B_tmp(2);

SignBits: for i in 1 to 14 generate
  p(i)(34 downto 33) <= '1' & not(B_tmp(2*i+2));
end generate SignBits;

p(15)(33) <= not(B_tmp(32));

-- Levantar punticos
RaiseDots: for i in 0 to 16 generate
  FirstColumns: for j in 0 to 35 generate
    Shifting: if (j - 2*i >= 0) generate
      q(0)(i)(j) <= p(i)(j-2*i);
    end generate Shifting;
  end generate FirstColumns;

  SignFirstCols: if (i /= 0) generate
    q(0)(i)(2*i-2) <= b(2*i-1);
  end generate SignFirstCols;

  OtherColumns: for j in 35 to 63 generate
    EvenCols: if ( (j mod 2) = 0 ) generate
      q(0)(i)(j) <= p(i+j/2-17)(j-2*(i+1)-(j-36));
    end generate EvenCols;

    OddCols: if ( j mod 2 /= 0 ) generate
    constant j_half_floor   : integer := j / 2;
    begin
      q(0)(i)(j) <= p(i+j_half_floor-17+1)(j-2*(i+1)-(j-36)-1);
    end generate OddCols;
  end generate OtherColumns;

  -- The sign bits on the left have to be added?
end generate RaiseDots;

end beh;
