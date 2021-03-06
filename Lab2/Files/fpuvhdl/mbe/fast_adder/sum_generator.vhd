library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity SUM_GENERATOR is
		generic (	NBIT_PER_BLOCK: integer := 4;
					NBLOCKS:	integer := 8);
		port (	A:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
				B:	in	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0);
				Ci:	in	std_logic_vector(NBLOCKS-1 downto 0);
				S:	out	std_logic_vector(NBIT_PER_BLOCK*NBLOCKS-1 downto 0));
end SUM_GENERATOR;

architecture STRUCTURAL of SUM_GENERATOR is

component carry_select 

	generic (N			: Integer := NBIT_PER_BLOCK); 
	Port (A,B	: In std_logic_vector(N-1 downto 0);
		  Ci 	: In std_logic;
		  S     : Out std_logic_vector(N-1 downto 0) );

end component; 

begin

SUM_GEN: for i in 0 to NBLOCKS-1 generate --generates blocks from 0 to NBLOCKS -1 
			CS : CARRY_SELECT 	generic map ( N => NBIT_PER_BLOCK)
				 				port map (	A => A ( NBIT_PER_BLOCK*(i+1) -1 downto NBIT_PER_BLOCK*i),
											B => B ( NBIT_PER_BLOCK*(i+1) -1 downto NBIT_PER_BLOCK*i),
											Ci => Ci(i),
											S => S ( NBIT_PER_BLOCK*(i+1) -1 downto NBIT_PER_BLOCK*i));
		end generate;

end STRUCTURAL;

configuration CFG_SUM_GENERATOR of SUM_GENERATOR is
for STRUCTURAL
	for SUM_GEN
		for CS : CARRY_SELECT
			use configuration WORK.CFG_CARRY_SEL_STRUCTURAL;
		end for;
	end for;
end for;
end CFG_SUM_GENERATOR ;
			
