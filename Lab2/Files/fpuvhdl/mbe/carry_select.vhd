library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

use WORK.constants.all;

entity carry_select is 

	generic( N			: Integer := NBIT_PER_BLOCK); 
	Port(A,B	: In std_logic_vector(N-1 downto 0);
		 Ci 	: In std_logic;
		 S     : Out std_logic_vector(N-1 downto 0) );

end carry_select; 

architecture STRUCTURAL of carry_select is

	component RCA_generic
		generic (N	   :    integer := NBIT_PER_BLOCK );
		Port (A:	In	std_logic_vector(N-1 downto 0);
		 	  B:	In	std_logic_vector(N-1 downto 0);
			  Ci:	In	std_logic;
			  S:	Out	std_logic_vector(N-1 downto 0);
			  Co:	Out	std_logic);
    end component;

	component MUX21_GENERIC is

		Generic (N: integer := NBIT_PER_BLOCK);
		Port (	A:	In	std_logic_vector(N-1 downto 0) ;
				B:	In	std_logic_vector(N-1 downto 0);
				SEL:In	std_logic;
				Y:	Out	std_logic_vector(N-1 downto 0));

	end component;

	signal S0, S1	: std_logic_vector(N-1 downto 0);

begin

ADDER0: RCA_GENERIC generic map ( N => N)
	   port map (A, B, '0', S0);

ADDER1: RCA_GENERIC generic map ( N => N)
	   port map (A, B, '1', S1);

MUX: MUX21_GENERIC generic map (N => N)
		port map(S1, S0, Ci, S);

end STRUCTURAL;

------------------CONFIGURATION---------------------------
configuration CFG_CARRY_SEL_STRUCTURAL of CARRY_SELECT is
  for STRUCTURAL 
    for ADDER0 : RCA_GENERIC
        use configuration WORK.CFG_RCA_GENERIC_STRUCTURAL;
    end for;
	for ADDER1 : RCA_GENERIC
        use configuration WORK.CFG_RCA_GENERIC_STRUCTURAL;
    end for;
	for MUX : MUX21_GENERIC
        use configuration WORK.CFG_MUX21_BEHAVIORAL;
    end for;
  end for;
end CFG_CARRY_SEL_STRUCTURAL;

