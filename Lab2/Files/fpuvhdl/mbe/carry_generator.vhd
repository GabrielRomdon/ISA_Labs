library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

use WORK.constants.all;

use IEEE.math_real.log2;
use IEEE.math_real.ceil;


entity CARRY_GENERATOR is
		generic (
			NBIT :		integer := NBIT;
			NBIT_PER_BLOCK: integer := NBIT_PER_BLOCK);
		port (
			A :		in	std_logic_vector(NBIT -1 downto 0);
			B :		in	std_logic_vector(NBIT -1 downto 0);
			Cin :	in	std_logic;
			Co :	out	std_logic_vector((NBIT/NBIT_PER_BLOCK) downto 0) );--Co
end CARRY_GENERATOR;


architecture STRUCTURAL of CARRY_GENERATOR is
--------------------------COMPONENTS----------------------
component PG_NET is
	port( 	A: 		in std_logic;
			B: 		in std_logic;
			G_OUT: 	out std_logic;
			P_OUT:	out std_logic);

end component;



component G_GENERAL is
		port( 	PG_ik : in std_logic_vector (1 downto 0); --G_ik index 1, P_ik index 0
				G_k_1j : in std_logic;
				G_ij : out std_logic);

end component;



component PG_GENERAL is
		port( 	PG_ik : in std_logic_vector (1 downto 0); --G index 1, P index 0 of the vectors
				PG_k_1j : in std_logic_vector (1 downto 0);
				PG_ij : out std_logic_vector (1 downto 0));


end component;
--------------------------COMPONENTS---------------------
--------------------------SIGNALS------------------------

type lev_zero is array (NBIT downto 1) of std_logic_vector(1 downto 0); 
--first array,  in order to generate for each bit A,B their p and g, p is mapped at 1 g at index 0 of the std_logic_vector
--this is used also to route the P and G outputs of the general blocks. the size is the worst possible, looking at level 0

type lev_i is array ( integer(ceil(log2(real(NBIT)))) downto 0) of lev_zero;--from level 0 out to last row out, use max size and then leave some unconnected


signal lev_i_out 	: lev_i;

--------------------------END SIGNALS------------------------


begin

ROW_LOOP: for row in 0 to (integer(ceil(log2(real(NBIT))))) generate --iterate on the rows
			COLUMN_LOOP: for col in 1 to NBIT generate 
							
							ROW_0: if (row = 0) generate 
									PG_NETWORK: PG_NET port map ( 	A => A(col-1),
																	B => B(col-1),
																	G_OUT => lev_i_out (row)(col)(1),
																	P_OUT => lev_i_out(row)(col)(0));--col,1 maps g; col,0 maps p output
							--also p1 is mapped to a signal, even if then it is not used
							end generate ROW_0; --end generate of first if, ROW_0


							ROW_1: if (row = 1) generate

									ROW_1_G: if (col = 2**row) generate
										GNET1: G_GENERAL port map(	PG_ik 	=> lev_i_out(row-1)(col)(1 downto 0),-- P index 0, G index 1 (g22,p22)
																	G_k_1j 	=> lev_i_out (row-1)(col-row)(1), 		-- g11
																	G_ij	=> lev_i_out(row)(col)(1)); 			-- element G 1,2(generates C2)
									end generate ROW_1_G;


									ROW_1_PG: if (col mod 2**row = 0 AND col /= 2**row) generate 	--generates blocks at multiples of 2
										PGNET1: PG_GENERAL port map(	PG_ik 	=> lev_i_out(row-1)(col)(1 downto 0),
																		PG_k_1j => lev_i_out(row-1)(col-row)(1 downto 0),
																		PG_ij 	=> lev_i_out(row)(col)(1 downto 0));
									end generate ROW_1_PG;
										
										
							end generate ROW_1;


							ROW_i: if(row >= 2) generate --working for every row >=2 and for NBIT_PER_BLOCKS whatever
								INT_FOR_LOOP : for k in 0 to (2**(row-1)-1) generate 

									ROW_i_G :	if ((col+k = 2**row) AND ((col mod NBIT_PER_BLOCK = 0) OR (col mod 2**row = 0))) generate
													
												GNET_i: G_GENERAL port map (	PG_ik	=> lev_i_out(integer (ceil(log2(real((2**(row-1))-k)))))(col)(1 downto 0), 																					
																				G_k_1j	=> lev_i_out(row-1)(col-2**(row-1)+k)(1),
																				G_ij	=> lev_i_out(row)(col)(1));

									end generate ROW_i_G;


									ROW_i_PG : if ((((col+ k) mod (2**row)) = 0) AND ( (col mod NBIT_PER_BLOCK = 0) OR (col mod (2**row) =0) ) AND (col+ k)/=2**row) generate 
												PGNET_i: PG_GENERAL port map (	PG_ik	=> lev_i_out(integer (ceil(log2(real((2**(row-1))-k)))))(col)(1 downto 0), 							        											
																				PG_k_1j	=> lev_i_out(row-1)(col-2**(row-1)+k)(1 downto 0),														
																				PG_ij	=> lev_i_out(row)(col)(1 downto 0));
								
									end generate ROW_i_PG;
								end generate INT_FOR_LOOP; --fol loop k
						end generate ROW_i;

					end generate; --for columns
				end generate; --for rows



		--mapping the Co signals only to the G blocks we actually need(this because for example for N_BIT_PER_BLOCK not a power of 2, the carry at position
		--8,16,32 ecc are also generated but they are not used as outputs, so we need to discard them

				LINK : for column in 0 to NBIT generate
				
					CINPUT: if column = 0 generate Co(column) <= cin; end generate;

					COUT : if(column mod NBIT_PER_BLOCK = 0) and column /= 0 generate
						Co(column/NBIT_PER_BLOCK) <= lev_i_out (integer (ceil(log2(real(column)))))(column)(1);
					end generate COUT;	
				end generate;



end STRUCTURAL;



