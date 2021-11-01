source /software/scripts/init_synopsys_64.18

cd ./syn/
dc_shell-xg-t -f ./run_synth.scr

cd ../sim/
source /software/scripts/init_msim6.2g
vsim -c -do ./run.scr

source /software/scripts/init_synopsys_64.18

cd ../syn/
vcd2saif -input ../vcd/IIR_look_ahead_syn.vcd -output ../saif/IIR_look_ahead_syn.saif
dc_shell-xg-t -f ./run_power.scr
