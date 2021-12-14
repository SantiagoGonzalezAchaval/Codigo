vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  "+incdir+../../../../VolveraEmpezarLEDS.gen/sources_1/bd/ila/ipshared/1b7e/hdl/verilog" "+incdir+../../../../VolveraEmpezarLEDS.gen/sources_1/bd/ila/ipshared/122e/hdl/verilog" "+incdir+../../../../VolveraEmpezarLEDS.gen/sources_1/bd/ila/ipshared/b205/hdl/verilog" "+incdir+../../../../VolveraEmpezarLEDS.gen/sources_1/bd/ila/ipshared/c968/hdl/verilog" \
"../../../bd/ila/ip/ila_ila_0_0/sim/ila_ila_0_0.v" \
"../../../bd/ila/sim/ila.v" \


vlog -work xil_defaultlib \
"glbl.v"

