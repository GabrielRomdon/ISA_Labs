library verilog;
use verilog.vl_types.all;
entity \IIR_FILTER\ is
    port(
        \DIN\           : in     vl_logic_vector(13 downto 0);
        \VIN\           : in     vl_logic;
        \RST_n\         : in     vl_logic;
        \CLK\           : in     vl_logic;
        a0              : in     vl_logic_vector(13 downto 0);
        a1              : in     vl_logic_vector(13 downto 0);
        b0              : in     vl_logic_vector(13 downto 0);
        b1              : in     vl_logic_vector(13 downto 0);
        \DOUT\          : out    vl_logic_vector(13 downto 0);
        \VOUT\          : out    vl_logic
    );
end \IIR_FILTER\;
