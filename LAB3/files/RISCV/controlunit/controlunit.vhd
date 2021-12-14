library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--use ieee.numeric_std.all;
--use work.all;

entity dlx_cu is
  generic (
    MICROCODE_MEM_SIZE :     integer := 45;  -- Microcode Memory Size
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
    -- ALU_OPC_SIZE       :     integer := 6;  -- ALU Op Code Word Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 16);  -- Control Word Size
  port (
    Clk                : in  std_logic;  -- Clock
    Rst                : in  std_logic;  -- Reset:Active-Low
    -- Instruction Register
    IR_IN              : in  std_logic_vector(IR_SIZE - 1 downto 0);
    
    -- IF Control Signal
    IR_LATCH_EN        : out std_logic;  -- Instruction Register Latch Enable
    NPC_LATCH_EN       : out std_logic;
                                        -- NextProgramCounter Register Latch Enable
    -- ID Control Signals
    RegA_LATCH_EN      : out std_logic;  -- Register A Latch Enable
    RegB_LATCH_EN      : out std_logic;  -- Register B Latch Enable
    RegIMM_LATCH_EN    : out std_logic;  -- Immediate Register Latch Enable
		SIGNED_IMM         : out std_logic;  -- Extender sel, signed or unsigned immediate

    -- EX Control Signals
    MUXA_SEL           : out std_logic;  -- MUX-A Sel
    MUXB_SEL           : out std_logic;  -- MUX-B Sel
    ALU_OUTREG_EN      : out std_logic;  -- ALU Output Register Enable
    EQ_COND            : out std_logic;  -- Branch if (not) Equal to Zero
    -- ALU Operation Code
    ALU_OPCODE         : out aluOpType; -- choose between implicit or exlicit coding, like std_logic_vector(ALU_OPC_SIZE -1 downto 0);
    
    -- MEM Control Signals
    DRAM_WE            : out std_logic;  -- Data RAM Write Enable
    LMD_LATCH_EN       : out std_logic;  -- LMD Register Latch Enable
    JUMP_EN            : out std_logic;  -- JUMP Enable Signal for PC input MUX
    PC_LATCH_EN        : out std_logic;  -- Program Counte Latch Enable

    -- WB Control signals
    WB_MUX_SEL         : out std_logic;  -- Write Back MUX Sel
    RF_WE              : out std_logic);  -- Register File Write Enable

end dlx_cu;

architecture dlx_cu_hw of dlx_cu is
  type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE-1) of std_logic_vector(CW_SIZE - 1 downto 0);
  signal cw_mem : mem_array := ("1111010010000111", -- R type
                                "0000000000000000",
                                "1110111111001100", -- J (0X02) instruction encoding corresponds to the address to this ROM
                                "0000000000000000", -- JAL to be filled
                                "1110111111001100", -- BEQZ 
                                "1110111110001100", -- BNEZ 
                                "0000000000000000",
                                "0000000000000000",
                                "1110110110000111", -- ADDi (0X08)
                                "0000000000000000",
                                "1110110110000111", -- SUBi
                                "0000000000000000",
                                "1110100110000111", -- ANDi
                                "1110100110000111", -- ORi
                                "1110100110000111", -- XORi
                                "0000000000000000",
                                "0000000000000000", -- (0X10)
                                "0000000000000000",
                                "0000000000000000",
                                "0000000000000000",
                                "1110100110000111", -- SLLi
                                "1100000000000100", -- NOP
                                "1110100110000111", -- SRLi
                                "0000000000000000",
                                "0000000000000000",
                                "1110110110000111", -- SNEi
                                "0000000000000000",
                                "0000000000000000",
                                "1110110110000111", -- SLEi
                                "1110110110000111", -- SGEi
                                "0000000000000000",
                                "0000000000000000",
                                "1100000000000000", -- (0X20) RESET
                                "0000000000000000",
                                "0000000000000000",
                                "1110110110010101", -- LW
                                "0000000000000000",
                                "0000000000000000",
                                "0000000000000000",
                                "0000000000000000",
                                "0000000000000000",
                                "0000000000000000",
                                "0000000000000000",
                                "1111110110110100", -- SW
                                "0000000000000000");
                                
                                
  signal IR_opcode : std_logic_vector(OP_CODE_SIZE - 1 downto 0);  -- OpCode part of IR
  signal IR_func : std_logic_vector(FUNC_SIZE - 1 downto 0);   -- Func part of IR when Rtype
  signal cw   : std_logic_vector(CW_SIZE - 1 downto 0); -- full control word read from cw_mem


  -- control word is shifted to the correct stage
  signal cw1 : std_logic_vector(CW_SIZE - 1 downto 0); -- first stage
  signal cw2 : std_logic_vector(CW_SIZE - 1 - 2 downto 0); -- second stage
  signal cw3 : std_logic_vector(CW_SIZE - 1 - 6 downto 0); -- third stage
  signal cw4 : std_logic_vector(CW_SIZE - 1 - 10 downto 0); -- fourth stage
  signal cw5 : std_logic_vector(CW_SIZE - 1 - 14 downto 0); -- fifth stage

  signal aluOpcode_i: aluOpType := NOP; -- ALUOP defined in package
  signal aluOpcode1: aluOpType := NOP;
  signal aluOpcode2: aluOpType := NOP;
  signal aluOpcode3: aluOpType := NOP;

begin  -- dlx_cu_rtl

  IR_opcode <= IR_IN(31 downto 32 - OP_CODE_SIZE);
  IR_func  <= IR_IN(FUNC_SIZE - 1 downto 0);

  cw <= cw_mem(conv_integer(IR_opcode));

  --- Control signals of the pipe stages
  -- stage one control signals
  IR_LATCH_EN  <= cw1(CW_SIZE - 1);
  NPC_LATCH_EN <= cw1(CW_SIZE - 2);
  
  -- stage two control signals
  RegA_LATCH_EN   <= cw2(CW_SIZE - 3);
  RegB_LATCH_EN   <= cw2(CW_SIZE - 4);
  RegIMM_LATCH_EN <= cw2(CW_SIZE - 5);
  SIGNED_IMM      <= cw2(CW_SIZE - 6);
  
  -- stage three control signals
  MUXA_SEL      <= cw3(CW_SIZE - 7);
  MUXB_SEL      <= cw3(CW_SIZE - 8);
  ALU_OUTREG_EN <= cw3(CW_SIZE - 9);
  EQ_COND       <= cw3(CW_SIZE - 10);
  
  -- stage four control signals
  DRAM_WE      <= cw4(CW_SIZE - 11);
  LMD_LATCH_EN <= cw4(CW_SIZE - 12);
  JUMP_EN      <= cw4(CW_SIZE - 13);
  PC_LATCH_EN  <= cw4(CW_SIZE - 14);
  
  -- stage five control signals
  WB_MUX_SEL <= cw5(CW_SIZE - 15);
  RF_WE      <= cw5(CW_SIZE - 16);

  -- Register for CW1 is separated to avoid the propagation of a wrong control word
  CW_PIPE_CW1: process (Clk, Rst)
  begin
    if Rst = '0' then                   -- asynchronous reset (active low)
      cw1 <= (others => '0');
      cw2 <= (others => '0');
    elsif Clk'event and Clk = '1' then  -- rising clock edge
      cw1 <= cw;
      cw2 <= cw(CW_SIZE - 1 - 2 downto 0);
    end if;
  end process CW_PIPE_CW1;
  --- End Of: Modification for post-reset sequence

  -- process to pipeline control words
  CW_PIPE: process (Clk, Rst)
  begin  -- process Clk
    if Rst = '0' then                   -- asynchronous reset (active low)
      cw3 <= (others => '0');
      cw4 <= (others => '0');
      cw5 <= (others => '0');
      aluOpcode1 <= NOP;
      aluOpcode2 <= NOP;
      aluOpcode3 <= NOP;
    elsif Clk'event and Clk = '1' then  -- rising clock edge
      cw3 <= cw2(CW_SIZE - 1 - 6 downto 0);
      cw4 <= cw3(CW_SIZE - 1 - 10 downto 0);
      cw5 <= cw4(CW_SIZE -1 - 14 downto 0);

      aluOpcode1 <= aluOpcode_i;
      aluOpcode2 <= aluOpcode1;
    end if;
  end process CW_PIPE;

  ALU_OPCODE <= aluOpcode2;

  -- purpose: Generation of ALU OpCode
  -- type   : combinational
  -- inputs : IR_i
  -- outputs: aluOpcode
   ALU_OP_CODE_P : process (IR_opcode, IR_func)
   begin  -- process ALU_OP_CODE_P
	case conv_integer(unsigned(IR_opcode)) is
	        -- case of R type requires analysis of FUNC
		when conv_integer(unsigned(RTYPE)) =>
			case conv_integer(unsigned(IR_func)) is
				when conv_integer(unsigned(RTYPE_ADD)) => aluOpcode_i <= ADDS; --ADD
				when conv_integer(unsigned(RTYPE_SUB)) => aluOpcode_i <= SUBS; --SUB
				when conv_integer(unsigned(RTYPE_AND)) => aluOpcode_i <= ANDS; --AND
				when conv_integer(unsigned(RTYPE_OR))  => aluOpcode_i <= ORS;  --OR
				when conv_integer(unsigned(RTYPE_XOR)) => aluOpcode_i <= XORS; --XOR
				when conv_integer(unsigned(RTYPE_SLE)) => aluOpcode_i <= SLE;
				when conv_integer(unsigned(RTYPE_SGE)) => aluOpcode_i <= SGE;
				when conv_integer(unsigned(RTYPE_SNE)) => aluOpcode_i <= SNE;
				when conv_integer(unsigned(RTYPE_SRL)) => aluOpcode_i <= SRLS; -- srl
				when conv_integer(unsigned(RTYPE_SLL)) => aluOpcode_i <= SLLS; -- sll according to instruction set coding
				when others => aluOpcode_i <= NOP;
			end case;
		when conv_integer(unsigned(ITYPE_ADDI))  => aluOpcode_i <= ADDS; -- ADDi
		when conv_integer(unsigned(ITYPE_SUBI))  => aluOpcode_i <= SUBS; -- SUBi
		when conv_integer(unsigned(ITYPE_ANDI))  => aluOpcode_i <= ANDS; -- ANDi
		when conv_integer(unsigned(ITYPE_ORI))  => aluOpcode_i <= ORS;   -- ORi
    when conv_integer(unsigned(ITYPE_XORI)) => aluOpcode_i <= XORS; -- XORi
		when conv_integer(unsigned(ITYPE_BEQZ)) => aluOpcode_i <= ADDS; -- BEQZ
		when conv_integer(unsigned(ITYPE_BNEZ)) => aluOpcode_i <= ADDS; -- BNEZ
		when conv_integer(unsigned(ITYPE_J))    => aluOpcode_i <= ADDS; -- j
		when conv_integer(unsigned(ITYPE_JAL))  => aluOpcode_i <= ADDS; -- jal
    when conv_integer(unsigned(ITYPE_LW))   => aluOpcode_i <= ADDS;
    when conv_integer(unsigned(ITYPE_SW))   => aluOpcode_i <= ADDS;
    when conv_integer(unsigned(ITYPE_SLEI)) => aluOpcode_i <= SLE;
    when conv_integer(unsigned(ITYPE_SGEI)) => aluOpcode_i <= SGE;
    when conv_integer(unsigned(ITYPE_SNEI)) => aluOpcode_i <= SNE;
    when conv_integer(unsigned(ITYPE_SRLI)) => aluOpcode_i <= SRLS; -- srli
    when conv_integer(unsigned(ITYPE_SLLI)) => aluOpcode_i <= SLLS; -- slli
		-- to be continued and filled with other cases
		when others => aluOpcode_i <= NOP;
	 end case;
	end process ALU_OP_CODE_P;


end dlx_cu_hw;