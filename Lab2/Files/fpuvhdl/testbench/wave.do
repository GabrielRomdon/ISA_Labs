onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb_mul_pipe/end_sim
add wave -noupdate -format Logic /tb_mul_pipe/clk
add wave -noupdate -format Logic /tb_mul_pipe/rst_n
add wave -noupdate -format Literal -radix hexadecimal /tb_mul_pipe/mult_in
add wave -noupdate -format Literal -radix hexadecimal /tb_mul_pipe/product
add wave -noupdate -format Logic /tb_mul_pipe/d_sink/clk
add wave -noupdate -format Logic /tb_mul_pipe/d_sink/rst_n
add wave -noupdate -format Literal -radix hexadecimal /tb_mul_pipe/d_sink/din
add wave -noupdate -format Literal -radix hexadecimal /tb_mul_pipe/d_sink/prod_file
add wave -noupdate -format Logic /tb_mul_pipe/d_sink/data_valid
add wave -noupdate -format Literal /tb_mul_pipe/d_sink/data_valid_vector
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {64 ns} 0}
configure wave -namecolwidth 223
configure wave -valuecolwidth 102
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
WaveRestoreZoom {0 ns} {492 ns}
