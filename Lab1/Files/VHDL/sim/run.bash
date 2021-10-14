# source /software/scripts/init_msim6.2g

# if [file exists work] {vdel -all}

# vlib work

vcom -93 -work ./work ../src/pkg.vhd
vcom -93 -work ./work ../tb/clk_gen.vhd
vcom -93 -work ./work ../tb/data_maker_new.vhd
vcom -93 -work ./work ../tb/data_sink.vhd
vcom -93 -work ./work ../src/IIR_filter_template.vhd
vlog -work ./work ../tb/tb_fir.v

vsim work.tb_fir

run -all
