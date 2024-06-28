vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../lab0.gen/sources_1/ip/Mux8to1_4b_0/sources_1/new/Mux8to1_4b.v" \
"../../../../lab0.gen/sources_1/ip/Mux8to1_4b_0/sim/Mux8to1_4b_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

