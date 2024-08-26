vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../lab0.gen/sources_1/ip/Mux8to1_4b_0/sources_1/new/Mux8to1_4b.v" \
"../../../../lab0.gen/sources_1/ip/Mux8to1_4b_0/sim/Mux8to1_4b_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

