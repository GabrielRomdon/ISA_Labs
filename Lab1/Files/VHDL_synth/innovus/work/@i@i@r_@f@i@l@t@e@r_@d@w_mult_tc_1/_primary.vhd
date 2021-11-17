library verilog;
use verilog.vl_types.all;
entity \IIR_FILTER_DW_mult_tc_1\ is
    port(
        a               : in     vl_logic_vector(14 downto 0);
        b               : in     vl_logic_vector(13 downto 0);
        product         : out    vl_logic_vector(28 downto 0)
    );
end \IIR_FILTER_DW_mult_tc_1\;
