library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
	constant numBit		  : integer :=  32;
    constant OP_CODE_SIZE : integer :=   6;		-- OPCODE field size
    constant FUNC_SIZE    : integer :=  11;		-- FUNC field size
    constant CW_SIZE      : integer :=  13;		-- Contorl Word size
	constant IR_SIZE      : integer :=  32;  	-- Instruction Word/Register size
	constant RFsize       : integer :=  32;  	-- RF size
	constant NREG         : integer :=  32;  	-- RF size
	constant IRAMsize     : integer :=  64;  	-- IRAM size
	constant RAMsize      : integer :=  64;  	-- IRAM size

-- R-Type instruction -> FUNC field
    constant RTYPE_ADD  : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000100000";    -- ADD RA,RB,RC

-- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI   : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001000";    -- ADDI   RA,RB,INP


	type aluOpType is (
        ADDop, 
        ANDop,
        XORop,
        SRAop,
        SLTop,
        NOPop
	);

end myTypes;
