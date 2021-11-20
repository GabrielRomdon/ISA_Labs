source /software/scripts/init_msim6.2g
vlib work
vcom -93 -work ./work ../src/pkg.vhd
vcom -93 -work ./work ../tb/clk_gen.vhd
vcom -93 -work ./work ../tb/data_maker_new.vhd
vcom -93 -work ./work ../tb/data_sink.vhd
vlog -93 -work ./work IIR_FILTER.v
vlog -work ./work ../tb/tb_fir.v
vsim -c work.tb_fir -L /software/dk/nangate45/verilog/msim6.2g +nowarnTSCALE -sdftyp /tb_fir/UUT=IIR_FILTER.sdf -do ./power.scr

