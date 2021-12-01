if [file exists work] {vdel -all}

vlib work

vcom -93 -work ./work ../constants.vhd
vcom -93 -work ./work ../fa.vhd
vcom -93 -work ./work ../PG_GENERAL.vhd
vcom -93 -work ./work ../G_general.vhd
vcom -93 -work ./work ../pg_net.vhd
vcom -93 -work ./work ../carry_generator.vhd

vcom -93 -work ./work ../mux21_generic.vhd
vcom -93 -work ./work ../RCA_generic.vhd
vcom -93 -work ./work ../carry_select.vhd
vcom -93 -work ./work ../sum_generator.vhd
vcom -93 -work ./work ../p4_adder.vhd

vcom -93 -work ./work ../lfsr.vhd
vcom -93 -work ./work ../tb_p4_adder.vhd

vsim work.tb_p4_adder

add wave sim:/tb_p4_adder/*
run 100ns
