library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.my_pkg.all;
entity tb_mbe is
end tb_mbe;

architecture test of tb_mbe is

  -- Components
  component LFSR32 is 
    port( 
      CLK, RESET, LD, EN : in std_logic; 
      DIN : in std_logic_vector (0 to 31); 
      PRN : out std_logic_vector (0 to 31); 
      ZERO_D : out std_logic);
  end component;

  component MBE is
    port(	A : IN std_logic_vector(31 downto 0);
      B : IN std_logic_vector(31 downto 0);
      C : OUT std_logic_vector(63 downto 0));
  end component;

  -- Constants
  constant Period: time := 10 ns; -- Clock period (0.1 GHz)
  -- Signals
  signal RESET, LD, EN, ZERO_D : std_logic; -- LSFR signals)
  signal CLK : std_logic := '0';
  signal DIN, PRN : std_logic_vector(31 downto 0);
  signal MUL_OUT : std_logic_vector(63 downto 0);
  signal a_sig, b_sig : std_logic_vector (31 downto 0);
  signal correct_res : std_logic_vector(63 downto 0);
  signal error_sig :std_logic :='0';
begin 

  -- Instantiate the LFSR
  DATA_GEN: LFSR32 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, 
                             DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);

  -- Create the permanent Clock and the Reset pulse
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;

  -- Make a load, and wait for a timeout in case of design error.
  LFSR_init: process
  begin
    DIN <= "00000000000000000000000000000001";
    EN <='1';
    LD <='1';
    wait for 2 * Period;
    LD <='0';
    wait for (65600 * Period);
  end process LFSR_init;
  a_sig <= "0000000000000000000" & PRN(12 downto 0);--PRN;
  b_sig <= "0000000000000000000" & PRN(14 downto 2); --PRN (19 downto 1) & PRN(0) & PRN(31 downto 20);
 
  MUL_RESULT_check : process (clk)
  begin
    if (clk='1' and clk'event) then
      if (correct_res/=MUL_OUT) then
        error_sig <='1';
      else 
          error_sig <='0';
      end if;
    end if;
  end process MUL_RESULT_check;


  correct_res <= std_logic_vector(unsigned(a_sig) * unsigned(b_sig));
  -- Instantiate the DUT
  DUT: MBE 
  port map( A =>a_sig , 
            B => b_sig, 
            C => MUL_OUT);

end test;
