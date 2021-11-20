###################################################################

# Created by write_sdc on Thu Nov 18 15:24:21 2021

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_load -pin_load 3.40189 [get_ports {DOUT[13]}]
set_load -pin_load 3.40189 [get_ports {DOUT[12]}]
set_load -pin_load 3.40189 [get_ports {DOUT[11]}]
set_load -pin_load 3.40189 [get_ports {DOUT[10]}]
set_load -pin_load 3.40189 [get_ports {DOUT[9]}]
set_load -pin_load 3.40189 [get_ports {DOUT[8]}]
set_load -pin_load 3.40189 [get_ports {DOUT[7]}]
set_load -pin_load 3.40189 [get_ports {DOUT[6]}]
set_load -pin_load 3.40189 [get_ports {DOUT[5]}]
set_load -pin_load 3.40189 [get_ports {DOUT[4]}]
set_load -pin_load 3.40189 [get_ports {DOUT[3]}]
set_load -pin_load 3.40189 [get_ports {DOUT[2]}]
set_load -pin_load 3.40189 [get_ports {DOUT[1]}]
set_load -pin_load 3.40189 [get_ports {DOUT[0]}]
set_load -pin_load 3.40189 [get_ports VOUT]
create_clock [get_ports CLK]  -name MY_CLK  -period 12.36  -waveform {0 6.18}
set_clock_uncertainty 0.07  [get_clocks MY_CLK]
set_max_delay 12.36  -from [list [get_ports {DIN[13]}] [get_ports {DIN[12]}] [get_ports {DIN[11]}] \
[get_ports {DIN[10]}] [get_ports {DIN[9]}] [get_ports {DIN[8]}] [get_ports     \
{DIN[7]}] [get_ports {DIN[6]}] [get_ports {DIN[5]}] [get_ports {DIN[4]}]       \
[get_ports {DIN[3]}] [get_ports {DIN[2]}] [get_ports {DIN[1]}] [get_ports      \
{DIN[0]}] [get_ports VIN] [get_ports RST_n] [get_ports CLK] [get_ports         \
{a0[13]}] [get_ports {a0[12]}] [get_ports {a0[11]}] [get_ports {a0[10]}]       \
[get_ports {a0[9]}] [get_ports {a0[8]}] [get_ports {a0[7]}] [get_ports         \
{a0[6]}] [get_ports {a0[5]}] [get_ports {a0[4]}] [get_ports {a0[3]}]           \
[get_ports {a0[2]}] [get_ports {a0[1]}] [get_ports {a0[0]}] [get_ports         \
{a1[13]}] [get_ports {a1[12]}] [get_ports {a1[11]}] [get_ports {a1[10]}]       \
[get_ports {a1[9]}] [get_ports {a1[8]}] [get_ports {a1[7]}] [get_ports         \
{a1[6]}] [get_ports {a1[5]}] [get_ports {a1[4]}] [get_ports {a1[3]}]           \
[get_ports {a1[2]}] [get_ports {a1[1]}] [get_ports {a1[0]}] [get_ports         \
{b0[13]}] [get_ports {b0[12]}] [get_ports {b0[11]}] [get_ports {b0[10]}]       \
[get_ports {b0[9]}] [get_ports {b0[8]}] [get_ports {b0[7]}] [get_ports         \
{b0[6]}] [get_ports {b0[5]}] [get_ports {b0[4]}] [get_ports {b0[3]}]           \
[get_ports {b0[2]}] [get_ports {b0[1]}] [get_ports {b0[0]}] [get_ports         \
{b1[13]}] [get_ports {b1[12]}] [get_ports {b1[11]}] [get_ports {b1[10]}]       \
[get_ports {b1[9]}] [get_ports {b1[8]}] [get_ports {b1[7]}] [get_ports         \
{b1[6]}] [get_ports {b1[5]}] [get_ports {b1[4]}] [get_ports {b1[3]}]           \
[get_ports {b1[2]}] [get_ports {b1[1]}] [get_ports {b1[0]}]]
set_max_delay 12.36  -to [get_ports {DOUT[13]}]
set_max_delay 12.36  -to [get_ports {DOUT[12]}]
set_max_delay 12.36  -to [get_ports {DOUT[11]}]
set_max_delay 12.36  -to [get_ports {DOUT[10]}]
set_max_delay 12.36  -to [get_ports {DOUT[9]}]
set_max_delay 12.36  -to [get_ports {DOUT[8]}]
set_max_delay 12.36  -to [get_ports {DOUT[7]}]
set_max_delay 12.36  -to [get_ports {DOUT[6]}]
set_max_delay 12.36  -to [get_ports {DOUT[5]}]
set_max_delay 12.36  -to [get_ports {DOUT[4]}]
set_max_delay 12.36  -to [get_ports {DOUT[3]}]
set_max_delay 12.36  -to [get_ports {DOUT[2]}]
set_max_delay 12.36  -to [get_ports {DOUT[1]}]
set_max_delay 12.36  -to [get_ports {DOUT[0]}]
set_max_delay 12.36  -to [get_ports VOUT]
set_max_delay 12.36  -from [list [get_ports {DIN[13]}] [get_ports {DIN[12]}] [get_ports {DIN[11]}] \
[get_ports {DIN[10]}] [get_ports {DIN[9]}] [get_ports {DIN[8]}] [get_ports     \
{DIN[7]}] [get_ports {DIN[6]}] [get_ports {DIN[5]}] [get_ports {DIN[4]}]       \
[get_ports {DIN[3]}] [get_ports {DIN[2]}] [get_ports {DIN[1]}] [get_ports      \
{DIN[0]}] [get_ports VIN] [get_ports RST_n] [get_ports CLK] [get_ports         \
{a0[13]}] [get_ports {a0[12]}] [get_ports {a0[11]}] [get_ports {a0[10]}]       \
[get_ports {a0[9]}] [get_ports {a0[8]}] [get_ports {a0[7]}] [get_ports         \
{a0[6]}] [get_ports {a0[5]}] [get_ports {a0[4]}] [get_ports {a0[3]}]           \
[get_ports {a0[2]}] [get_ports {a0[1]}] [get_ports {a0[0]}] [get_ports         \
{a1[13]}] [get_ports {a1[12]}] [get_ports {a1[11]}] [get_ports {a1[10]}]       \
[get_ports {a1[9]}] [get_ports {a1[8]}] [get_ports {a1[7]}] [get_ports         \
{a1[6]}] [get_ports {a1[5]}] [get_ports {a1[4]}] [get_ports {a1[3]}]           \
[get_ports {a1[2]}] [get_ports {a1[1]}] [get_ports {a1[0]}] [get_ports         \
{b0[13]}] [get_ports {b0[12]}] [get_ports {b0[11]}] [get_ports {b0[10]}]       \
[get_ports {b0[9]}] [get_ports {b0[8]}] [get_ports {b0[7]}] [get_ports         \
{b0[6]}] [get_ports {b0[5]}] [get_ports {b0[4]}] [get_ports {b0[3]}]           \
[get_ports {b0[2]}] [get_ports {b0[1]}] [get_ports {b0[0]}] [get_ports         \
{b1[13]}] [get_ports {b1[12]}] [get_ports {b1[11]}] [get_ports {b1[10]}]       \
[get_ports {b1[9]}] [get_ports {b1[8]}] [get_ports {b1[7]}] [get_ports         \
{b1[6]}] [get_ports {b1[5]}] [get_ports {b1[4]}] [get_ports {b1[3]}]           \
[get_ports {b1[2]}] [get_ports {b1[1]}] [get_ports {b1[0]}]]  -to [list [get_ports {DOUT[13]}] [get_ports {DOUT[12]}] [get_ports            \
{DOUT[11]}] [get_ports {DOUT[10]}] [get_ports {DOUT[9]}] [get_ports {DOUT[8]}] \
[get_ports {DOUT[7]}] [get_ports {DOUT[6]}] [get_ports {DOUT[5]}] [get_ports   \
{DOUT[4]}] [get_ports {DOUT[3]}] [get_ports {DOUT[2]}] [get_ports {DOUT[1]}]   \
[get_ports {DOUT[0]}] [get_ports VOUT]]
