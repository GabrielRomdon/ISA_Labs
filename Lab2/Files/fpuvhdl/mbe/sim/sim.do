
if [file exists work] {vdel -all}

vlib work

vcom -93 -work ./work ../my_pkg.vhd

vcom -93 -work ./work ../fast_adder/constants.vhd
vcom -93 -work ./work ../fast_adder/G_general.vhd
vcom -93 -work ./work ../fast_adder/PG_GENERAL.vhd
vcom -93 -work ./work ../fast_adder/pg_net.vhd
vcom -93 -work ./work ../fast_adder/mux21_generic.vhd
vcom -93 -work ./work ../fast_adder/fa.vhd
vcom -93 -work ./work ../fast_adder/RCA_generic.vhd

vcom -93 -work ./work ../fast_adder/carry_generator.vhd
vcom -93 -work ./work ../fast_adder/carry_select.vhd
vcom -93 -work ./work ../fast_adder/sum_generator.vhd
vcom -93 -work ./work ../fast_adder/p4_adder.vhd

vcom -93 -work ./work ../HA.vhd
vcom -93 -work ./work ../ENC.vhd
vcom -93 -work ./work ../MBE.vhd
vcom -93 -work ./work ../testbench/lfsr.vhd
vcom -93 -work ./work ../testbench/tb_mbe.vhd

vsim work.tb_mbe

add wave sim:/tb_mbe/*

#add wave sim:/tb_mbe/data_gen/*
add wave sim:/tb_mbe/dut/*
add wave -noupdate -divider <inputs>
add wave -radix unsigned sim:/tb_mbe/dut/a
add wave -radix unsigned sim:/tb_mbe/dut/b


add wave -noupdate -divider <Outputs>
add wave -radix unsigned sim:/tb_mbe/dut/c
add wave -radix unsigned sim:/tb_mbe/correct_res
add wave -radix unsigned sim:/tb_mbe/error_sig




run 1000ns
