library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
-------------------------------COMPONENTS-----------------------------

  	component LFSR16 
		port (CLK, RESET, LD, EN : in std_logic; 
		      DIN : in std_logic_vector(31 downto 0); 
		      PRN : out std_logic_vector(31 downto 0); 
		      ZERO_D : out std_logic);
 	end component;
	-- P4 component declaration
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
-------------------------END COMPONENTS-----------------------------


----------------------------SIGNALS----------------------------------
  constant Period: time := 10 ns; -- Clock period (1 GHz)
  

  signal CLK : std_logic :='0';
  signal RESET,LD,EN,ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(31 downto 0);

  signal A_i, B_i, S_i  : std_logic_vector(NBIT-1 downto 0);
  signal Cin_i : std_logic:='0';
  signal Cout_i :std_logic :='0';
  signal cmp    :std_logic_vector(NBIT-1 downto 0);
--------------------------END SIGNALS--------------------------------




	
begin
	-- P4 instantiation
	DUT: P4_ADDER 	port map (a => A_i, b => B_i, cin => Cin_i, s => S_i, cout => Cout_i);

-- Instanciate the Unit Under Test (UUT)
  UUT: LFSR16 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, 
                        DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);
-- Create the permanent Clock and the Reset pulse
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;
-- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1: process
  begin
    DIN <= "00000000000000000000000000000001";
    EN <='1';
    LD <='1';
    wait for 2 * PERIOD;
    LD <='0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

	ASSIGN: for i in 0 to NBIT-1 generate
			A_i(i)<= PRN (2 *((i + NBIT -3) mod 16)); 
			B_i(i) <= PRN (2*((i+NBIT-3)mod 16)+1);
		end generate;

  cmp <= std_logic_vector(unsigned(A_i)+unsigned(B_i));
	
	
end TEST;

