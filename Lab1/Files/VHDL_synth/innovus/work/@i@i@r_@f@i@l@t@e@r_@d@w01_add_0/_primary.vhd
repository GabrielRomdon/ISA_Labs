library verilog;
use verilog.vl_types.all;
entity \IIR_FILTER_DW01_add_0\ is
    port(
        \A\             : in     vl_logic_vector(6 downto 0);
        \B\             : in     vl_logic_vector(6 downto 0);
        \CI\            : in     vl_logic;
        \SUM\           : out    vl_logic_vector(6 downto 0);
        \CO\            : out    vl_logic
    );
end \IIR_FILTER_DW01_add_0\;
