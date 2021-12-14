-- ALU
-- ----------------------------------------------------------
-- Editor(s)    : Coralie Allioux, Gabriel Romero, Simone Valente
-- Last updated : 09/Aug/2021
-- Features     : For the computation of the next PC.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.myTypes.all;

entity ADDER is
  generic (N : integer := 32);
  port   ( CURR_ADDR: IN std_logic_vector(N-1 downto 0); -- input address
           NEXT_ADDR: OUT std_logic_vector(N-1 downto 0)); -- output address(i.e. input address + 4)
end ADDER;

architecture BEHAVIOR of ADDER is

begin

-- process that adds 4 to every input given
ADDITION: process (CURR_ADDR)
  begin
	NEXT_ADDR <= CURR_ADDR + 1;
  end process ADDITION;

end BEHAVIOR;

