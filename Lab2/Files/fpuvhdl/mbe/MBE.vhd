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

-- Components
component ENC is
	port( b : IN  std_logic_vector(2 downto 0);
        A : IN  std_logic_vector(31 downto 0);
        p : OUT std_logic_vector(32 downto 0));
end component;

component HA is
	port(A : IN std_logic;
		 B : IN std_logic;
		 S : OUT std_logic;
		 C : OUT std_logic);			
end component;

component FA is
	port(A : IN std_logic;
		 B : IN std_logic;
		 Ci : IN std_logic;
		 S : OUT std_logic;
		 Co : OUT std_logic);			
end component;

-- Signals, matrices and types
type p_matrix       is array(16 downto 0) of std_logic_vector(35 downto 0);
type q_matrix_unit  is array(16 downto 0) of std_logic_vector(63 downto 0);
type q_matrix       is array(0 to n_levels-1) of q_matrix_unit;
signal p : p_matrix;
signal q : q_matrix;
signal B_tmp : std_logic_vector(34 downto 0);

begin
-- Constants init
-- row(0) := 17;
--  row(1) := 13;
--  row(2) := 9;
--  row(3) := 6;
--  row(4) := 4;
--  row(5) := 3;
--  row(6) := 2;
--  row(7) := 2;
--
--  col_start(0) := 24;
--  col_start(1) := 16;
--  col_start(2) := 10;
--  col_start(3) := 6;
--  col_start(4) := 4;
--  col_start(5) := 2;
--
--  col_end(0) := 42;
--  col_end(1) := 50;
--  col_end(2) := 56;
--  col_end(3) := 60;
--  col_end(4) := 62;
--  col_end(5) := 64;
--
--  num_start(0) := 0;
--  num_start(1) := 8;
--  num_start(2) := 16;
--  num_start(3) := 22;
--  num_start(4) := 26;
--  num_start(5) := 28;
--
--  num_end(0) := 8;
--  num_end(1) := 8;
--  num_end(2) := 6;
--  num_end(3) := 4;
--  num_end(4) := 2;
--  num_end(5) := 2;


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

-- Raise the dots (from matrix p to matrix q[0])
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

  -- The sign bits on the left have to be added? YES
end generate RaiseDots;

MainAlgorithm: for level in 0 to n_levels generate

  MoveDots: for i in 0 to row(level) generate
    MoveDotsRSideCol: for j in 0 to col_start(level)-1 generate
      MoveDotsRSide: if ( j >= 2*i) generate
        q(level+1)(i)(j) <= q(level)(i)(j);
      end generate MoveDotsRSide;
    end generate MoveDotsRSideCol;

    MoveSignRSide: if ( i /= 0 and (i+i-2)<col_start(level)) generate
      q(level+1)(i)(i+i-2) <=  q(level)(i)(i+i-2);
    end generate MoveSignRSide;

    MoveDotsLSideCol: for j in col_end(level)+1 to 63 generate
      NotCopyFirstCol: if (j /= col_end(level)+1) generate
        CopyFirstRows: if (i = 0 or i = 1) generate
          q(level+1)(i)(j) <=  q(level)(i)(j);
        end generate CopyFirstRows;
        CopyOtherRows: if (i /= 0 and i /= 1) generate
          StopCopyOtherRows: if ( 63-j >= i+i-3) generate
            q(level+1)(i)(j) <=  q(level)(i)(j);
          end generate StopCopyOtherRows;
        end generate CopyOtherRows;
      end generate NotCopyFirstCol;

      CopyFirstCol: if ( j =  col_end(level)+1) generate
        StopCopyOtherRows2: if ( 63-j >= i+i-3) generate
          q(level+1)(i+1)(j) <=  q(level)(i)(j);
        end generate StopCopyOtherRows2;
      end generate CopyFirstCol;
    end generate MoveDotsLSideCol;
  end generate MoveDots;

  AddersInstantiate: for i in 0 to row(level+1) generate
    MultipleOf3: if ( i mod 3 = 0 ) generate
      FirstInstantiation: if ( i+1 < row(level) and i /= 12) generate
        AddersGen: for j in col_start(level) to col_end(level) generate

          HalfAdderRGen: if ( j = col_start(level)+(i/3)*2 or j = col_start(level)+(i/3)*2+1 ) generate
            HA_R : HA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), S => q(level+1)(i-i/3)(j), C => q(level+1)(i-i/3+1)(j+1) );
          end generate HalfAdderRGen;

          HalfAdderLGen: if ( j = col_end(level)-(i/3)*2 ) generate
            HA_L : HA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), S => q(level+1)(i-i/3)(j), C => q(level+1)(i-i/3)(j+1) );
          end generate HalfAdderLGen;

          FullAdderGen: if ( j > col_start(level)+(i/3)*2+1 and j < col_end(level)-(i/3)*2 ) generate
            FA_C : FA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), Ci => q(level)(i+2)(j), S => q(level+1)(i-i/3)(j), Co => q(level+1)(i-i/3+1)(j+1) );
          end generate FullAdderGen;

        end generate AddersGen;
      end generate FirstInstantiation;
    end generate MultipleOf3;
  end generate AddersInstantiate;
end generate MainAlgorithm;

end beh;
