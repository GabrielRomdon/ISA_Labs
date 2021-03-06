onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_fir/CLK_i
add wave -noupdate -format Logic /tb_fir/RST_n_i
add wave -noupdate -format Logic /tb_fir/VIN_i
add wave -noupdate -format Literal -radix decimal /tb_fir/DIN_i
add wave -noupdate -format Logic /tb_fir/VOUT_i
add wave -noupdate -format Literal -radix decimal /tb_fir/DOUT_i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1 ns} 0}
configure wave -namecolwidth 199
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
update
WaveRestoreZoom {0 ns} {150 ns}
