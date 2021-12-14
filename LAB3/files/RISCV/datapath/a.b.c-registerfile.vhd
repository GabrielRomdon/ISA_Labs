library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.Log2.all; -- for using the log2 algo, in order to compute the number of bits needed to address the registers
use work.myTypes.all;

entity REGISTER_FILE is
    generic (NBIT: integer := numBit;
    		 NREG: integer := RFsize);
    port (CLK: 		IN  std_logic;
	      RST: 	IN  std_logic;  -- Low
	      EN: 	IN  std_logic;
	      RD1: 		IN  std_logic;
	      RD2: 		IN  std_logic;
	      WR: 		IN  std_logic;
	      ADD_WR: 	IN  std_logic_vector(Log2(NREG)-1 downto 0);
	      ADD_RD1: 	IN  std_logic_vector(Log2(NREG)-1 downto 0);
	      ADD_RD2: 	IN  std_logic_vector(Log2(NREG)-1 downto 0);
	      DATAIN: 	IN  std_logic_vector(NBIT-1 downto 0);
	      OUT1: 	OUT std_logic_vector(NBIT-1 downto 0);
	      OUT2: 	OUT std_logic_vector(NBIT-1 downto 0));
end REGISTER_FILE;

architecture BEHAVIOR of REGISTER_FILE is

	subtype REG_ADDR is natural range 0 to NREG-1; -- REG_ADDR is a subset of natural with values from 0 to 31. This will be the number of registers of the register file and it will be used as row number in the Register array
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NBIT-1 downto 0); -- this is a type consisting in an array of many elements of NBIT bits as many as the REG_ADDR range
	signal REGISTERS : REG_ARRAY; -- this is the signal that will represent the whole RF

begin 

    process (CLK) --this process is activated only when the clock changes
    begin 
    
        if (rising_edge(CLK)) then --and only when the clock is rising we allow anything to happen

            if (RST = '0') then -- synch. RST is the highest priority event
            
                for i in 0 to NREG - 1 loop
                    REGISTERS(i) <= (others=>'0');	-- all regs are set to 0
                end loop;
                
                OUT1 <= (others=>'0'); -- also outputs are set to 0, since the only possible output is zero
                OUT2 <= (others=>'0'); -- even thought the outputs should not be connected to any register
                
            else --if (EN = '1') then  -- this part of code is accessed only if RST is high(inactive) but EN is high(active)
            
                if (RD1 = '1') then
                    OUT1 <= REGISTERS(to_integer(unsigned(ADD_RD1))); -- register addressed by ADD_RD1 (given as input to RF) is assigned to output 1
                end if; -- notice the cast to integer is needed since the address given as input is binary, while we address the registers in the RF through integers
                
                if (RD2 = '1') then
					OUT2 <= REGISTERS(to_integer(unsigned(ADD_RD2))); -- register addressed by ADD_RD2 (given as input to RF) is assigned to output 2
				end if;
				
				if (WR = '1') then
					REGISTERS(to_integer(unsigned(ADD_WR))) <= DATAIN; -- data given as input in DATAIN is assigned to register addressed by ADD_WR (given as input to RF)
				end if;

            end if;			
        end if;
    end process;
  
end BEHAVIOR;
