library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

use WORK.constants.all;

entity RCA_generic is 

	generic ( N	   :    integer := NBIT_PER_BLOCK ); --number of bit
	Port (A:	In	std_logic_vector(N-1 downto 0);
		  B:	In	std_logic_vector(N-1 downto 0);
		  Ci:	In	std_logic;
		  S:	Out	std_logic_vector(N-1 downto 0);
		  Co:	Out	std_logic);

end RCA_generic; 

architecture STRUCTURAL of RCA_generic is

--------------------SIGNALS-----------------------------
  signal STMP : std_logic_vector(N-1 downto 0);
  signal CTMP : std_logic_vector(N downto 0);
------------------END SIGNALS---------------------------

-------------------COMPONENT----------------------------
  component FA 
  Port ( A:		In	std_logic;
	 	 B:		In	std_logic;
	 	 Ci:	In	std_logic;
	 	 S:		Out	std_logic;
	 	 Co:	Out	std_logic);
  end component; 
--------------------END COMPONENT-----------------------

begin

  CTMP(0) <= Ci;
  S <= STMP;
  Co <= CTMP(N);
  
  ADDER1: for I in 1 to N generate
    FAI : FA 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;

end STRUCTURAL;


------------------CONFIGURATION---------------------------
configuration CFG_RCA_GENERIC_STRUCTURAL of RCA_generic is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_GENERIC_STRUCTURAL;

