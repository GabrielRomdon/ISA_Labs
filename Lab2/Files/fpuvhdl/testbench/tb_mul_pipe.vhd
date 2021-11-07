-- VHDL Testbench for Multiplier
--
-- Created by
-- Flavia Guella, Gabriel Romero, Simone Valente
--
-- 2021
--

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity tb_mul_pipe is
end tb_mul_pipe;

architecture tb of tb_mul_pipe is

	component clk_gen
	  port (
		END_SIM : in  std_logic;
		CLK     : out std_logic;
		RST_n   : out std_logic);
	end component;
	
	component data_maker
	  port (
		CLK     : in  std_logic;
		RST_n   : in  std_logic;
		DOUT    : out std_logic_vector(31 downto 0);
		END_SIM : out std_logic);
	end component;
	
	component data_sink
	  port (
		CLK   : in std_logic;
		RST_n : in std_logic;
		DIN   : in std_logic_vector(31 downto 0));
	end component;

	component FPmul
	   port( 
		  FP_A : in     std_logic_vector (31 downto 0);
		  FP_B : in     std_logic_vector (31 downto 0);
		  clk  : in     std_logic;
		  FP_Z : out    std_logic_vector (31 downto 0)
	   );
	end component;
	
	signal end_sim		: std_logic;
	signal clk			: std_logic;
	signal rst_n		: std_logic;
	signal mult_in		: std_logic_vector(31 downto 0);
	signal product		: std_logic_vector(31 downto 0);

begin

	ck_gen: clk_gen
	  port map (
	    END_SIM	=> end_sim,
		CLK		=> clk,
		RST_n	=> rst_n
	  );
	  
	d_maker: data_maker
	  port map (
	    CLK		=> clk,
	    RST_n	=> rst_n,
	    DOUT	=> mult_in,
	    END_SIM	=> end_sim
	  );
	  
	multiplier: FPmul
	  port map (
	    FP_A	=> mult_in,
		FP_B	=> mult_in,
		clk		=> clk,
		FP_Z	=> product
	  );
	  
	d_sink: data_sink
	  port map (
	    CLK		=> clk,
		RST_n	=> rst_n,
		DIN		=> product
	  );

end tb;

