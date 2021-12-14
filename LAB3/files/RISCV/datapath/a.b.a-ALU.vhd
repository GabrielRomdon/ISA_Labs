library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.myTypes.all;

entity ALU is
  generic (N : integer := 32);
  port   ( FUNC: IN aluOpType; -- Input for selecting the operation to be performed
           DATA1, DATA2: IN std_logic_vector(N-1 downto 0); -- Data inputs
           OUTALU: OUT std_logic_vector(N-1 downto 0)); -- Data outputs
end ALU;

architecture BEHAVIOR of ALU is

begin

-- add, srai, andi, xor, slt

-- process for switching among the different functions of the ALU
P_ALU: process (FUNC, DATA1, DATA2)
  begin
    case FUNC is
      when ADDop       => OUTALU <= DATA1 + DATA2; -- add
      when ANDop       => OUTALU <= DATA1 and DATA2; -- andi
      when XORop       => OUTALU <= DATA1 xor DATA2; -- xor
      when SRAop       => ; -- srai
      when SLTop       => if (unsigned(DATA1) < unsigned(DATA2)) then OUTALU <= 1 end if; -- slt (writing 1 to rd if rs1 < rs2)
      when NOPop       => OUTALU <= (others => '0');
      when others      => OUTALU <= (others => '0');
    end case;
  end process P_ALU;

end BEHAVIOR;
