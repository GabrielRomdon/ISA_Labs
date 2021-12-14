library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use work.myTypes.all;

entity EXTENDER is
  generic (N : integer := 64;
		   IMM_field_lenght : integer := 32); -- !!! to be set to the actual length of the immediate
  port   ( NOT_EXT_IMM:     IN std_logic_vector(IMM_field_lenght-1 downto 0); -- input data
           SIGNED_IMM:      IN std_logic;
           EXT_IMM:         OUT std_logic_vector(N-1 downto 0)); -- output data(i.e. input data with sign extension)
end EXTENDER;

architecture BEHAVIOR of EXTENDER is

begin

-- process that extends the sign of every input data
EXTENSION: process (NOT_EXT_IMM)
  begin
  if SIGNED_IMM='1' then
	  EXT_IMM <= std_logic_vector(resize(signed(NOT_EXT_IMM), N));
  else
	  EXT_IMM <= std_logic_vector(resize(unsigned(NOT_EXT_IMM), N));
  end if;
  end process EXTENSION;

end BEHAVIOR;

