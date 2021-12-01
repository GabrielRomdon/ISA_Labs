-- Modified Booth Encoding Multiplier
LIBRARY ieee;
--LIBRARY work;
USE work.my_pkg.all; -- TODO: Check this
USE work.constants.all;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
USE ieee.math_real.floor;

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

component P4_ADDER is
		generic (	NBIT :	integer := NBIT;
					NBIT_PER_BLOCK: integer := NBIT_PER_BLOCK;
					NBLOCKS:	integer := NBLOCKS);
		port (	A 	:	in	std_logic_vector(NBIT-1 downto 0);
				B 	:	in	std_logic_vector(NBIT-1 downto 0);
				Cin :	in	std_logic;
				S 	:	out	std_logic_vector(NBIT-1 downto 0);
				Cout :	out	std_logic);
end component;

-- Signals, matrices and types
type p_matrix       is array(16 downto 0) of std_logic_vector(35 downto 0);
type q_matrix_unit  is array(16 downto 0) of std_logic_vector(63 downto 0);
type q_matrix       is array(0 to n_levels+1) of q_matrix_unit; --n_levels -1
signal p : p_matrix;
signal q : q_matrix;
signal B_tmp : std_logic_vector(34 downto 0);
--signal out_tmp : std_logic_vector (63 downto 0);
--signal Cout_tmp : std_logic;


  type rows_type is array (0 to 6) of integer;
  --constant row, col_start, col_end, num_start, num_end : rows_type;
  --
  constant row : rows_type := (17,13,9,6,4,3,2);
  constant col_start : rows_type := (24,16,10,6,4,2,0);
  constant col_end : rows_type := (42,50,56,60,62,64,0);

  constant num_start : rows_type := (0,8,16,22,26,28,0);
  constant num_end : rows_type := (8,8,6,4,2,2,0);
begin

B_tmp <= "00" & B & '0';

-- Encoder
encoder: for i in 1 to 17 generate
  encI : ENC port map(b => B_tmp(2*i downto 2*i-2), A => A, p => p(i-1)(32 downto 0));
end generate encoder;

-- Placing the sign bits
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


  OtherColumns: for j in 36 to 63 generate --PERCHé ERA 35???
    EvenCols: if ( (j mod 2) = 0 ) generate
      EvenColsLimit : if(i+j/2-17<=16) generate
        q(0)(i)(j) <= p(i+j/2-17)(j-2*(i+1)-(j-36));
      end generate EvenColsLimit;
    end generate EvenCols;
    OddCols: if ( j mod 2 /= 0 ) generate
        --constant j_half_floor   : integer := j / 2;
       -- begin
      OddColsLimit: if((i + (integer(floor(real(j/2))))-17+1)<=16) generate          
         q(0)(i)(j) <= p(i+(integer(floor(real(j/2))))-17+1)(j-2*(i+1)-(j-36)-1);
       end generate OddColsLimit;
    end generate OddCols;
  end generate OtherColumns;

 
end generate RaiseDots;

MainAlgorithm: for level in 0 to n_levels generate --n_levels

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
      --Gestire il carry out dell'ultimo FA nel livello 6(o7?)
      FirstInstantiation: if ( i+1 < row(level) and i /= 12) generate
        AddersGen: for j in col_start(level) to col_end(level) generate

          HalfAdderRGen: if ( j = col_start(level)+(i/3)*2 or j = col_start(level)+(i/3)*2+1 ) generate
            HA_R : HA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), S => q(level+1)(i-i/3)(j), C => q(level+1)(i-i/3+1)(j+1) );
          end generate HalfAdderRGen;

          HalfAdderLGen: if ( j = col_end(level)-(i/3)*2 and col_end(level)<64) generate
            HA_L : HA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), S => q(level+1)(i-i/3)(j), C => q(level+1)(i-i/3)(j+1) );
          end generate HalfAdderLGen;
          --if level!=6, se è uguale a 6 non allocare cout o allocarlo da qualche altra parte
          FullAdderGen: if ( j > col_start(level)+(i/3)*2+1 and j < col_end(level)-(i/3)*2 ) generate
            
            AllLevels  : if (level /= 5 or (level=5 and j /= 63)) generate
            
              FA_C : FA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), Ci => q(level)(i+2)(j), S => q(level+1)(i-i/3)(j), Co => q(level+1)(i-i/3+1)(j+1) );
            end generate AllLevels;
            Level5 : if (level=5 and j = 63) generate -- else

              FA_C_5 : FA port map ( A => q(level)(i)(j), B => q(level)(i+1)(j), Ci => q(level)(i+2)(j), S => q(level+1)(i-i/3)(j));-- Co => q(level+1)(i-i/3+1)(j+1) );
            end generate Level5;
          end generate FullAdderGen;

        end generate AddersGen;
      end generate FirstInstantiation;
    end generate MultipleOf3;
  end generate AddersInstantiate;

  CopyRemainingDot: for i in 2 to row(level) generate
    MultOf3Cond: if ( (i+1) mod 3 = 0 ) generate
      RightPartCopy: for j in col_start(level) to 32-num_start(level)-1 generate
        KappaLoop1: for k in i to i+3-1 generate
          StartPointRightPart: if ( col_start(level)+((i+1)/3)*2 > j ) generate
            StopPointRightPart: if (j >= 2*k ) generate

              EvenColsRightPart: if ( j mod 2 = 0 ) generate

                UpperBoundRightPart: if ( ((j -col_start(level))/2 + 1) <= 4 ) generate
                  q(level+1)(k-((j-col_start(level))/2)-1)(j) <= q(level)(k)(j);
                end generate UpperBoundRightPart;

                UpperBoundRightP2: if ( ((j - col_start(level))/2 + 1) > 4 ) generate -- else
                  q(level+1)(k-4)(j) <= q(level)(k)(j);
                end generate UpperBoundRightP2;

              end generate EvenColsRightPart;

              OddColsRightPart: if ( j mod 2 /= 0) generate -- else

                UpperBoundRPart: if ((integer(floor(real((j-col_start(level))/2)))) <=4) generate --<=4
                  q(level+1)(k-integer(floor(real((j-col_start(level))/2))))(j) <= q(level)(k)(j);
                end generate UpperBoundRPart;

                UpperBoundRPart2 : if (integer(floor(real((j-col_start(level))/2))) > 4 ) generate -- else
                  q(level+1)(k-4)(j) <= q(level)(k)(j);
                end generate UpperBoundRPart2;

              end generate OddColsRightPart;

            end generate StopPointRightPart;
          end generate StartPointRightPart;

          SignCopyRPart: if ( j = 2*k ) generate
            q(level+1)(row(level+1)-1)(j) <= q(level)(k+1)(j);
          end generate SignCopyRPart;

        end generate KappaLoop1;
      end generate RightPartCopy;

      LastRowCopy: if ( i = 11 ) generate
        LastRowCenter: for j in 32-num_start(level) to col_end(level)-num_end(level)+1 generate
          KappaLoop2: for k in i+1 to row(level)-1 generate
            q(level+1)(k-4)(j) <= q(level)(k)(j);
          end generate KappaLoop2;
        end generate LastRowCenter;
      end generate LastRowCopy;

      LastRowCopyLev4: if ( i = 2 and level = 4 ) generate
        LastRowCenterLev4: for j in 32-num_start(level) to col_end(level)-num_end(level)+1 generate
          q(level+1)(i)(j) <= q(level)(i+1)(j);
        end generate LastRowCenterLev4;
      end generate LastRowCopyLev4;

      LeftPartCopy: for j in col_end(level) downto col_end(level)-num_end(level)+2 generate -- Careful! this was initially a decrementing for
        EvenColsLeftPart: if ( j mod 2 = 0 and 2*(i-2)/3 >= col_end(level)-j ) generate
          KappaLoop3: for k in i to i+3-1 generate
            StopPointLeftPart: if (63-j >= k+k-3) generate
              q(level+1)(k-(col_end(level)-j)/2)(j) <= q(level)(k)(j);
            end generate StopPointLeftPart;
          end generate KappaLoop3;
        end generate EvenColsLeftPart;

        OddColsLeftPart: if ( j mod 2 /= 0 and i > col_end(level)-j) generate
          KappaLoop4: for k in i+1 to i+3 generate
            StopPointLPart: if (63-j >= k+k-3) generate
              q(level+1)(k-(col_end(level)-j-1)/2)(j) <= q(level)(k)(j);
            end generate StopPointLPart;
          end generate KappaLoop4;
        end generate OddColsLeftPart;
      end generate LeftPartCopy;

    end generate MultOf3Cond;
  end generate CopyRemainingDot;

  SignLevel5: if (level = 5) generate
    q(level+1)(1)(2) <= q(level)(2)(2);
  end generate SignLevel5; 
end generate MainAlgorithm;
q
(6)(1)(1) <= '0';
--Final 2-inputs adder instantiation 

P4_ADDER_0 : P4_ADDER port map ( A => q(6)(0)(63 downto 0), b => q(6)(1)(63 downto 0), Cin => '0', S => C); --Cout not mapped

--C<= q(6)(0)(63 downto 0) +q(6)(1)(63 downto 0);



end beh;
