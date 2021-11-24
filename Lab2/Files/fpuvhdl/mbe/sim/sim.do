
if [file exists work] {vdel -all}

vlib work

vcom -93 -work ./work ../my_pkg.vhd
vcom -93 -work ./work ../HA.vhd
vcom -93 -work ./work ../FA.vhd
vcom -93 -work ./work ../ENC.vhd
vcom -93 -work ./work ../MBE.vhd
vcom -93 -work ./work ../testbench/lfsr.vhd
vcom -93 -work ./work ../testbench/tb_mbe.vhd

vsim work.tb_mbe
